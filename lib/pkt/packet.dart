import 'dart:typed_data';
import 'package:kim/buffer/buffer.dart';
import 'package:kim/generated/json/base/json_convert_content.dart';
import 'package:kim/generated/json/base/json_field.dart';
import 'package:kim/proto/common.pb.dart';

/// 拆包和封包
/// @author szhua

///序列
class Seq {
  static int num = 0;
  static next() {
    Seq.num++;
    Seq.num = Seq.num % 65535;
    return Seq.num;
  }
}

///指令 （与 server端 wire.packet对应）
class Command {
  // login
  static const String signIn = "login.signin";
  static const String signOut = "login.signout";
  // chat
  static const String chatUserTalk = "chat.user.talk";
  static const String chatGroupTalk = "chat.group.talk";
  static const String chatTalkAck = "chat.talk.ack";
  // 离线
  static const String offlineIndex = "chat.offline.index";
  static const String offlineContent = "chat.offline.content";

  // 群管理
  static const String groupCreate = "chat.group.create";
  static const String groupJoin = "chat.group.join";
  static const String groupQuit = "chat.group.quit";
  static const String groupMembers = "chat.group.members";
  static const String groupDetail = "chat.group.detail";
}

///魔数 和server端一一对应
final magicLogicPkt = Uint8List.fromList([0xc3, 0x11, 0xa3, 0x65]);

final magicBasicPkt = Uint8List.fromList([0xc3, 0x15, 0xa7, 0x65]);

final magicLogicPktInt = magicLogicPkt.buffer.asByteData().getInt32(0);
final magicBasicPktInt = magicBasicPkt.buffer.asByteData().getInt32(0);

class MessageType {
  static final int text = 1; // 文本
  static final int image = 2; // 图片
  static final int voice = 3; // 语音
  static final int video = 4; //视频
}

///魔数 和server端一一对应
// ignore: non_constant_identifier_names
final Ping = Uint8List.fromList(magicBasicPkt + Uint8List.fromList([0, 1, 0, 0]));
// ignore: non_constant_identifier_names
final Pong = Uint8List.fromList(magicBasicPkt + Uint8List.fromList([0, 2, 0, 0]));

var emptyUint8List = Uint8List.fromList([]);

class LogicPkt with JsonConvert<LogicPkt> {
  String command;
  String channelId;
  int sequence;
  @JSONField(serialize: false, deserialize: false)
  Flag flag;
  @JSONField(serialize: false, deserialize: false)
  Status status = Status.Success;
  String dest;
  @JSONField(serialize: false, deserialize: false)
  Uint8List payload;

  static LogicPkt build(String command, String dest, {Uint8List payload}) {
    var message = new LogicPkt();
    message.command = command;
    message.sequence = Seq.next();
    message.dest = dest;
    if (payload == null) {
      payload = emptyUint8List;
    }
    message.payload = payload;
    return message;
  }

  ///解包；
  static LogicPkt from(Uint8List buff) {
    ByteDataReader reader = ByteDataReader()..add(buff);
    var magicInt = reader.readInt32();
    if (magicInt != magicLogicPktInt) {
      return LogicPkt();
    }
    var headerLen = reader.readInt32();
    var header = Header.fromBuffer(reader.read(headerLen));

    var payloadLen = reader.readInt32();
    var payload = reader.read(payloadLen);

    var message = LogicPkt();
    message.payload = payload;
    message.dest = header.dest;
    message.status = header.status;
    message.flag = header.flag;
    message.sequence = header.sequence;
    message.channelId = header.channelId;
    message.command = header.command;
    return message;
  }

  ///封包；
  Uint8List bytes() {
    var header =
        Header(command: command, channelId: channelId, sequence: sequence, flag: flag, status: status, dest: dest);
    var headerLen = header.writeToBuffer().length;
    var payloadLen = payload?.length ?? 0;

    //| 4bytes magic | 4bytes Header Length| header | 4bytes Payload Length| payload |
    var headerLenData = ByteDataWriter();
    headerLenData.writeInt32(headerLen);

    var payLoadLenData = ByteDataWriter();
    payLoadLenData.writeInt32(payloadLen);
    if (payload == null) {
      payload = Uint8List.fromList([]);
    }
    var buffer = Uint8List.fromList(
        magicLogicPkt + headerLenData.toBytes() + header.writeToBuffer() + payLoadLenData.toBytes() + payload);
    return buffer;
  }
}
