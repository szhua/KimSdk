import 'dart:async';
import 'dart:developer';
import 'package:hive/hive.dart';
import 'package:kim/generated/json/base/json_convert_content.dart';
import 'package:kim/sdk/kim_sdk.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

final eventManager = EventManager();

typedef EventCallBack(dynamic event);

class KimData {
  String eventKey;
  dynamic data;
  KimData(this.eventKey, this.data);
}

///事件管理器， 相当于eventBus。
class EventManager {
  StreamController<dynamic> _controller;

  Stream get _stream {
    return _controller.stream;
  }

  Sink get _sink {
    return _controller.sink;
  }

  Map<String, EventCallBack> _events = Map();

  fireData(String event, dynamic data) {
    if (_sink != null) {
      _sink.add(KimData(event, data));
    }
  }

  addListen(String key, EventCallBack eventCallBack) {
    _events[key] = eventCallBack;
  }

  remove(String key) {
    ///发送删除请求；
    fireData(KimEvent.removeKey, null);
  }

  EventManager() : _controller = StreamController() {
    _stream.listen((event) {
      var kimData = event as KimData;
      if (kimData.eventKey == KimEvent.removeKey) {
        _events.remove(kimData.eventKey);
      }

      ///event sink handle ;
      _events.forEach((key, call) {
        if (kimData.eventKey == key) {
          call(kimData.data);
        }
      });
    });
  }
}

///消息实体；
class Message with JsonConvert<Message> {
  int messageId;
  int type;
  String body;
  String extra;
  String sender;
  String receiver;
  String group;
  int sendTime;
  int arriveTime;
  static Message build(int messageId, int sendTime) {
    Message message = Message();
    message.messageId = messageId;
    message.sendTime = sendTime;
    message.arriveTime = DateTime.now().millisecond;
    return message;
  }
}

class MessageAdapter extends TypeAdapter<Message> {
  @override
  Message read(BinaryReader reader) {
    int messageId = reader.read();
    int type = reader.read();
    String body = reader.read();
    String extra = reader.read();
    String sender = reader.read();
    String receiver = reader.read();
    String group = reader.read();
    int sendTime = reader.read();
    int arriveTime = reader.read();

    var msg = Message.build(messageId, sendTime)
      ..type = type
      ..body = body
      ..extra = extra
      ..receiver = receiver
      ..group = group
      ..arriveTime = arriveTime
      ..sender = sender;
    return msg;
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Message msg) {
    writer.write(msg.messageId);
    writer.write(msg.type);
    writer.write(msg.body);
    writer.write(msg.extra);
    writer.write(msg.sender);
    writer.write(msg.receiver);
    writer.write(msg.group);
    writer.write(msg.sendTime);
    writer.write(msg.arriveTime);
  }
}

const String msgBoxVersion = "msgBox_v";
const String msgBoxAckVersion = "msgAck_v";

final store = MsgStore();

class MsgStore {
  String keyMsg(int id) {
    return "msg_$id";
  }

  String keyLast() {
    return "key_last";
  }

  ///获得message
  Future<Message> get(int id) async {
    var box = await Hive.openBox<Message>(msgBoxVersion);
    var msg = box.get(keyMsg(id));
    return msg;
  }

  ///是否存在
  Future<bool> exist(int id) async {
    var box = await Hive.openBox(msgBoxVersion);
    return box.containsKey(keyMsg(id));
  }

  ///插入message
  Future<void> insert(Message msg) async {
    var box = await Hive.openBox<Message>(msgBoxVersion);
    return box.put(keyMsg(msg.messageId), msg);
  }

  ///同步id ；
  Future<void> setAck(int id) async {
    var box = await Hive.openBox<int>(msgBoxAckVersion);
    return box.put(keyLast(), id);
  }

  ///获得同步id；
  Future<int> lastId() async {
    var box = await Hive.openBox<int>(msgBoxAckVersion);
    var msg = box.get(keyLast());
    return msg;
  }

  ///初始化hive；
  void initMsgStore() async {
    try {
      var status = await Permission.storage.request();
      if (status.isGranted) {
        var root = await getTemporaryDirectory();
        Hive..init(root.path + "/kim");
        Hive.registerAdapter(MessageAdapter());
      } else {
        log("读取权限处理失败");
      }
    } catch (e) {
      log("MsgStore has inited earlier");
    }
  }
}
