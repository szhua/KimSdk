import 'dart:async';
import 'dart:developer';
import 'dart:ffi';
import 'dart:typed_data';
import 'package:fixnum/fixnum.dart';
import 'package:kim/channel/src/channel.dart';
import 'package:kim/proto/common.pb.dart';
import 'package:kim/proto/protocol.pb.dart';
import 'package:kim/sdk/login.dart';
import 'package:kim/pkt/packet.dart';
import 'package:kim/sdk/msg_store.dart';
import 'package:kim/sdk/offline_messages.dart';

typedef KimRequestCall(LogicPkt response);

typedef MessageCallBack(Message message);

typedef OfflineMessageCallBack(OfflineMessages messages);

const heartbeatInterval = 10;

/// seconds
const sendTimeout = 10 * 1000;

///5 seconds

class KimStatus {
  static final requestTimeout = 10;
  static final sendFailed = 11;
}

class KimResponse {
  int status;
  String dest;
  Uint8List payload;
  KimResponse({this.status, this.dest, this.payload});
}

class KimState {
  static const String INIT = "init";
  static const String CONNECTING = "connecting";
  static const String CONNECTED = "connected";
  static const String RECONNECTING = "reconnecting";
  static const String CLOSEING = "closing";
  static const String CLOSED = "closed";
}

class KimRequest {
  int sendTime;
  LogicPkt data;
  KimRequestCall call = (LogicPkt res) {};
  KimRequest(this.data, {this.call}) : sendTime = DateTime.now().millisecond;
}

class KimClient {
  OfflineMessageCallBack offlineMessageCallBack;
  MessageCallBack messageCallBack;
  Function closeCallBack;

  int _lastRead = DateTime.now().millisecond;
  String channelId;
  String account;
  WebSocketChannel _channel;
  Map<int, KimRequest> _requests = Map();
  String _state = KimState.INIT;

  Message _lastMessage;
  int _unLack = 0;
  String _wsUrl;
  LoginReq _loginReq;

  set wsUrl(url) {
    _wsUrl = url;
  }

  set loginReq(LoginReq req) {
    _loginReq = req;
  }

  String get state {
    return _state;
  }

  Future<KimInnerResponse<bool>> init() async {
    if (_wsUrl == null) {
      log("wsUrl is null ");
      return KimInnerResponse(-1, null, ErrorResp()..message = "wsUrl is null ");
    }

    if (_loginReq == null) {
      log("loginReq is null ");
      return KimInnerResponse(-1, null, ErrorResp()..message = "loginReq is null ");
    }

    if (offlineMessageCallBack == null) {
      offlineMessageCallBack = (msgs) {};
    }
    if (messageCallBack == null) {
      messageCallBack = (msg) {};
    }

    store.initMsgStore();

    _state = KimState.CONNECTING;

    ///进行登录操作；（登录创建了webSocket的channel，并自定义了一个stream进行接收下面的事件）
    LoginCallBack loginRes = await Login.doLogin(_wsUrl, _loginReq);

    if (loginRes.stream == null) {
      ///回归原状态；
      this._state = KimState.INIT;
      return KimInnerResponse(-1, false, ErrorResp()..message = loginRes.errorMsg);
    }

    loginRes.stream.listen((msg) {
      if (msg.runtimeType.toString() == "String") {
        print("recv string content $msg");
        return;
      }

      /// bufferarray ；（binarray）
      if (msg.runtimeType == Uint8List || msg.runtimeType.toString() == "_Uint8ArrayView") {
        _lastRead = DateTime.now().millisecond;
        Uint8List buffer;
        if (msg.runtimeType.toString() == "_Uint8ArrayView") {
          buffer = Uint8List.fromList(msg);
        } else {
          buffer = msg;
        }

        ///判断是否是心跳包
        if (buffer.buffer.asByteData().getInt32(0) == Pong.buffer.asByteData().getInt32(0)) {
          print("recv pong from server");
          return;
        }
        _handlePacket(LogicPkt.from(buffer));
      }
    });

    if (loginRes.channel == null) {
      ///回归原状态；
      _state = KimState.INIT;
      return KimInnerResponse(-1, false, ErrorResp()..message = "链接出现错误");
    }

    ///验证失败；登录超时,(已经创建链接但是后续失败)
    if (loginRes.channelId == null || loginRes.account == null) {
      return KimInnerResponse(-1, false, ErrorResp()..message = loginRes.errorMsg);
    }

    channelId = loginRes.channelId;
    account = loginRes.account;

    _loadOfflineMessage();

    _state = KimState.CONNECTED;
    _channel = loginRes.channel;
    _heartbeatLoop();
    _readDeadLineLoop();
    _messageAckLoop();

    return KimInnerResponse(Status.Success.value, true, null);
  }

  /// 2、心跳
  void _heartbeatLoop() {
    Timer _timer;
    print("heartbeatLoop start");
    var loop = () {
      if (this.state != KimState.CONNECTED) {
        print("heartbeatLoop exited");
        if (_timer != null) {
          _timer.cancel();
          _timer = null;
        }
        return;
      }
      print("sendPing");
      _send(Ping);
    };

    _timer = Timer.periodic(Duration(seconds: heartbeatInterval), (timer) {
      loop();
    });
  }

  ///设置读超时；
  void _readDeadLineLoop() {
    Timer timer;
    if (state != KimState.CONNECTED) {
      print("readDeadLineLoop exited");
      if (timer != null) {
        timer.cancel();
        timer = null;
      }
      return;
    }
    timer = Timer.periodic(Duration(seconds: heartbeatInterval), (timer) {
      if (DateTime.now().millisecond - _lastRead >= heartbeatInterval * 1000 * 3) {
        print("readTimeOut");
        _errorHandler(KimError("readTimeOut"));
      }
    });
  }

  void _onClose(String reason) {
    if (this.state == KimState.CLOSED) {
      return;
    }
    this._state = KimState.CLOSED;
    log("connection closed due to $reason");
    eventManager.fireData(KimEvent.Closed, null);
    this._channel = null;
    this.channelId = null;
    this.account = null;
  }

  ///错误的处理 todo
  void _errorHandler(KimError error) async {
    if (this.state == KimState.CLOSED || this.state == KimState.CLOSEING) {
      return;
    }
    this._state = KimState.RECONNECTING;
    eventManager.fireData(KimEvent.Reconnecting, null);
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 3));
      var success = await this.init();
      if (success.data) {
        eventManager.fireData(KimEvent.Reconnected, null);
        break;
      }
      log(success.errorResp.message);
      this._onClose("reconnect timeout");
    }
  }

  ///发送消息
  bool _send(Uint8List data) {
    if (_channel == null) {
      return false;
    }
    try {
      ///远程关闭链接;
      if (_channel.closeCode != null) {
        this._onClose("your connection is colsed by remote");
        this._errorHandler(KimError("remote_closed"));
        return false;
      }
      _channel.sink.add(data);
      return true;
    } catch (e) {
      return false;
    }
  }

  ///请求 （双全工变为状态通讯）
  Future<KimResponse> request(LogicPkt data) async {
    Completer<KimResponse> completer = new Completer();

    ///TimeoUt
    var timer = Timer(Duration(milliseconds: sendTimeout), () {
      if (!completer.isCompleted) {
        this._requests.remove(data.sequence);
        completer.complete(KimResponse(status: KimStatus.requestTimeout));
      }
    });

    ///请求实例；
    var request = KimRequest(data, call: (res) {
      timer.cancel();

      ///没有完成进行回掉；
      if (!completer.isCompleted) {
        completer.complete(KimResponse(status: res.status.value, dest: res.dest, payload: res.payload));
      }
    });

    ///放入map，回调使用；
    this._requests[data.sequence] = request;

    ///发送失败；
    if (!this._send(data.bytes())) {
      completer.complete(KimResponse(status: KimStatus.sendFailed));
    }
    return completer.future;
  }

  ///处理packet
  void _handlePacket(LogicPkt packet) async {
    ///Response 的 情况下；
    if (packet.flag == Flag.Response) {
      if (this._requests.containsKey(packet.sequence)) {
        this._requests[packet.sequence].call(packet);
      } else {
        ///可能超时了
        print("req of ${packet.sequence} not found in requests");
      }
    }
    switch (packet.command) {
      case Command.signIn:
        {
          var kickOutNotify = KickoutNotify.fromBuffer(packet.payload);
          if (kickOutNotify.channelId == this.channelId) {
            await this.logout();
          }
        }
        break;

      ///用户会话的情况下；
      case Command.chatUserTalk:

      ///群聊的情况；
      case Command.chatGroupTalk:
        {
          var messagePush = MessagePush.fromBuffer(packet.payload);
          var message = Message.build(messagePush.messageId.toInt(), messagePush.sendTime.toInt());
          message.type = messagePush.type;
          message.extra = messagePush.extra;
          message.body = messagePush.body;
          message.sender = messagePush.sender;
          message.receiver = this.account;
          if (packet.command == Command.chatGroupTalk) {
            message.group = packet.dest;
          }
          if (!await store.exist(message.messageId)) {
            if (this.state == KimState.CONNECTED) {
              this._lastMessage = message;
              this._unLack++;
              this.messageCallBack(message);

              ///进行离线存储；
              store.insert(message);
            }
          }
        }
        break;
    }
  }

  Future<KimInnerResponse<MessageIndexResp>> _loadIndex({int messageId: -1}) async {
    var indexReq = MessageIndexReq.create()..messageId = Int64.parseInt(messageId.toString());
    var logicPkt = LogicPkt.build(Command.offlineIndex, null, payload: indexReq.writeToBuffer());
    var resp = await this.request(logicPkt);
    if (resp.status != Status.Success.value) {
      return KimInnerResponse<MessageIndexResp>(resp.status, null, null);
    }
    var indexs = MessageIndexResp.fromBuffer(resp.payload);
    return KimInnerResponse(resp.status, indexs, null);
  }

  ///加载离线信息；（todo 完善）
  void _loadOfflineMessage() async {
    var offlineMessages = List<MessageIndex>.empty(growable: true);
    var msgId = await store.lastId();

    while (true) {
      var resp = await _loadIndex(messageId: msgId);
      if (resp.status != Status.Success.value) {
        break;
      }
      if (resp.data == null || resp.data.indexes == null || resp.data.indexes.isEmpty) {
        break;
      }

      ///超出的情况下，再进行查询；
      msgId = resp.data.indexes[resp.data.indexes.length - 1].messageId.toInt();
      offlineMessages.addAll(resp.data.indexes);
    }
    OfflineMessages messages = OfflineMessages.build(this, offlineMessages);
    offlineMessageCallBack(messages);
  }

  ///登出；
  Future<bool> logout() async {
    if (this.state != KimState.CLOSED) {
      return false;
    }
    this._state = KimState.CLOSEING;
    if (this._channel == null) {
      return false;
    }
    this._channel.sink.close();
    return Future.delayed(Duration(milliseconds: 500), () {
      this._onClose("user close the connection ");
      this.closeCallBack();
      return true;
    });
  }

  ///信息index同步；
  void _messageAckLoop() {
    final delay = 500;
    Timer timer;
    var loop = () async {
      if (state != KimState.CONNECTED) {
        if (timer != null) {
          timer.cancel();
          timer = null;
        }
        log("messageAckLoop exited");
      }
      var msg = this._lastMessage;
      var overflow = this._unLack > 10;
      this._lastMessage = null;
      var diff = DateTime.now().millisecond - msg.arriveTime;

      ///todo resolve  message3(arrive time) is before message2 and message1
      if (!overflow && diff < delay) {
        await Future.delayed(Duration(milliseconds: 500));
      }
      var req = MessageAckReq.create()..messageId = Int64.parseInt(msg.messageId.toString());
      var logicPkt = LogicPkt.build(Command.chatTalkAck, "", payload: req.writeToBuffer());
      this._send(logicPkt.bytes());
      await store.setAck(msg.messageId);
    };

    timer = Timer.periodic(Duration(milliseconds: 500), (timer) => loop);
  }

  /// 会话；
  Future<TalkResponse> _talk(String command, String dest, MessageReq req, int retry) async {
    var reqBuffer = req.writeToBuffer();
    var logicPkt = LogicPkt.build(command, dest, payload: reqBuffer);
    for (int i = 0; i < retry; i++) {
      var response = await request(logicPkt);
      if (response.status == Status.Success.value) {
        return TalkResponse(Status.Success.value, MessageResp.fromBuffer(response.payload), null);
      }
      if (response.status > 300 && response.status < 400) {
        print("retry to send message");
        continue;
      }
      return TalkResponse(response.status, null, ErrorResp.fromBuffer(response.payload));
    }
    return TalkResponse(KimStatus.sendFailed, null, ErrorResp()..message = "max time to retry");
  }

  ///群进行聊天；
  Future<TalkResponse> talk2Group(TalkContent content, String dest, int retry) async {
    MessageReq messageReq = MessageReq();
    messageReq.type = content.type;
    messageReq.body = content.body;
    messageReq.extra = content.extra;
    return _talk(Command.chatGroupTalk, dest, messageReq, retry);
  }

  ///个人聊天；
  Future<TalkResponse> talk2User(TalkContent content, String dest, int retry) async {
    MessageReq messageReq = MessageReq();
    messageReq.type = content.type;
    messageReq.body = content.body;
    messageReq.extra = content.extra;

    return _talk(Command.chatUserTalk, dest, messageReq, retry);
  }

  ///获得群详情；
  Future<KimInnerResponse<GroupGetResp>> getGroup(GroupGetReq req) async {
    var pkt = LogicPkt.build(Command.groupDetail, "", payload: req.writeToBuffer());
    var res = await request(pkt);
    if (res.status != Status.Success.value) {
      return KimInnerResponse(res.status, null, ErrorResp.fromBuffer(res.payload));
    }
    return KimInnerResponse(res.status, GroupGetResp.fromBuffer(res.payload), null);
  }

  ///退出群聊；
  Future<KimInnerResponse<GroupQuitNotify>> quitGroup(GroupQuitReq req) async {
    var pkt = LogicPkt.build(Command.groupQuit, "", payload: req.writeToBuffer());
    var res = await request(pkt);
    if (res.status != Status.Success.value) {
      return KimInnerResponse(res.status, null, ErrorResp.fromBuffer(res.payload));
    }
    return KimInnerResponse(res.status, null, null);
  }

  ///加入群聊；
  Future<KimInnerResponse<GroupJoinNotify>> joinGroup(GroupJoinReq req) async {
    var pkt = LogicPkt.build(Command.groupJoin, "", payload: req.writeToBuffer());
    var res = await request(pkt);
    if (res.status != Status.Success.value) {
      return KimInnerResponse(res.status, null, ErrorResp.fromBuffer(res.payload));
    }
    return KimInnerResponse(res.status, null, null);
  }

  ///创建群聊
  Future<KimInnerResponse<GroupCreateResp>> createGroup(GroupCreateReq req) async {
    var pkt = LogicPkt.build(Command.groupCreate, "", payload: req.writeToBuffer());
    var res = await request(pkt);
    if (res.status != Status.Success.value) {
      return KimInnerResponse(res.status, null, ErrorResp.fromBuffer(res.payload));
    }
    return KimInnerResponse(res.status, GroupCreateResp.fromBuffer(res.payload), null);
  }
}

class KimInnerResponse<T> {
  int status;
  T data;
  ErrorResp errorResp;
  KimInnerResponse(this.status, this.data, this.errorResp);
}

class TalkResponse {
  int status;
  MessageResp resp;
  ErrorResp errorResp;
  TalkResponse(this.status, this.resp, this.errorResp);
}

class TalkContent {
  int type;
  String body;
  String extra;
  TalkContent(this.type, this.body, this.extra);
}

class KimError {
  String msg;

  KimError(this.msg);
}

class KimEvent {
  static const String Reconnecting = "Reconnecting"; //重连中
  static const String Reconnected = "Reconnected"; //重连成功
  static const String Closed = "Closed";
  static const String Kickout = "Kickout"; // 被踢

  ///移除事件；
  static const String removeKey = "removeKey";

  ///链接拒绝；
  static const String ConnectionRefused = "ConnectionRefused";
}
