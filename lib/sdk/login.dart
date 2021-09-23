import 'dart:async';

import 'package:kim/channel/src/channel.dart';
import 'package:kim/pkt/packet.dart';
import 'package:kim/proto/common.pb.dart';
import 'package:kim/proto/protocol.pb.dart';
import 'package:kim/sdk/kim_sdk.dart';

import 'msg_store.dart';

class LoginCallBack {
  WebSocketChannel channel;
  String channelId;
  String account;
  Stream stream;
  String errorMsg;
  LoginCallBack(this.channel, this.channelId, this.account, this.stream);
}

const loginTimeout = 10; // 10 seconds

class Login {
  static Future<LoginCallBack> doLogin(String wsUrl, LoginReq loginReq) async {
    Completer<LoginCallBack> completer = new Completer();

    ///监听webSocket的信息(还未建立链接之前的事件处理)；
    eventManager.addListen(KimEvent.ConnectionRefused, (event) {
      eventManager.remove(KimEvent.ConnectionRefused);
      completer.complete(LoginCallBack(null, null, null, null)..errorMsg = "Connection refused");
    });

    ///创建链接；
    WebSocketChannel channel = WebSocketChannel.connect(Uri.parse(wsUrl));

    ///传递消息 StreamController ；
    StreamController<dynamic> controller = StreamController();
    if (channel == null) {
      controller.close();
      return LoginCallBack(null, null, null, controller.stream)..errorMsg = "channel is null ";
    }

    var logicPkt = LogicPkt.build(Command.signIn, "", payload: loginReq.writeToBuffer());
    channel.sink.add(logicPkt.bytes());

    var loginFinished = false;

    ///超时设置了；
    var timer = Timer(Duration(seconds: loginTimeout), () {
      return LoginCallBack(channel, null, null, controller.stream)..errorMsg = "Connection is Time Out";
    });

    ///监听channel信息；
    channel.stream.listen((event) {
      ///登录完成转接自己的stream；
      if (loginFinished) {
        controller.sink.add(event);
        return;
      }

      ///取消超时；
      timer.cancel();

      ///转换实体；
      var logic = LogicPkt.from(event);

      ///失败的状态进行关闭；
      if (logic.status != Status.Success) {
        channel.sink.close();
        controller.close();
        completer.complete(LoginCallBack(channel, null, null, controller.stream)..errorMsg = "login verify failed");
      } else {
        ///执行登录；
        var loginResp = LoginResp.fromBuffer(logic.payload);
        loginFinished = true;
        completer.complete(LoginCallBack(channel, loginResp.channelId, loginResp.account, controller.stream));
      }
    });
    return completer.future;
  }
}
