import 'package:kim/pkt/packet.dart';
import 'package:kim/proto/common.pb.dart';
import 'package:kim/proto/protocol.pb.dart';
import 'package:kim/sdk/kim_sdk.dart';
import 'msg_store.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

///per page count ;
const pageCount = 50;

class OfflineMessages {
  KimClient client;
  Map<String, List<Message>> userMessages = Map();
  Map<String, List<Message>> groupMessages = Map();

  static OfflineMessages build(KimClient cli, List<MessageIndex> ixs) {
    var offlineMsgs = OfflineMessages()..client = cli;

    /// 整理消息；
    ///
    ///
    ///
    ///得倒着来；
    ixs.reversed.forEach((idx) {
      var message = Message.build(idx.messageId.toInt(), idx.sendTime.toInt());

      ///自己发的信息
      if (idx.direction == 1) {
        message.sender = cli.account;
        message.receiver = idx.accountB;

        ///别人发的信息；
      } else {
        message.sender = idx.accountB;
        message.receiver = cli.account;
      }
      if (idx.group != null && idx.group.isNotEmpty) {
        if (!offlineMsgs.groupMessages.containsKey(idx.group)) {
          offlineMsgs.groupMessages[idx.group] = List<Message>.empty(growable: true);
        }
        offlineMsgs.groupMessages[idx.group].add(message);
      } else {
        if (!offlineMsgs.userMessages.containsKey(idx.accountB)) {
          offlineMsgs.userMessages[idx.accountB] = List<Message>.empty(growable: true);
        }
        offlineMsgs.userMessages[idx.accountB].add(message);
      }
    });

    return offlineMsgs;
  }

  List<String> listUsers() {
    return userMessages.keys.toList();
  }

  List<String> listGroups() {
    return groupMessages.keys.toList();
  }

  ///获得用户的message；
  Future<List<Message>> listUserMessages(String user, int page) async {
    var messages = userMessages[user];
    if (messages == null) {
      return List.empty(growable: true);
    }
    return await _loadMessages(messages, page);
  }

  ///获得群Message;
  Future<List<Message>> listGroupMessages(String group, int page) async {
    var messages = groupMessages[group];
    if (messages == null) {
      return List.empty(growable: true);
    }
    return await _loadMessages(messages, page);
  }

  Future<List<Message>> _loadMessages(List<Message> messages, int page) async {
    var index = page - 1;
    var start = index * pageCount;
    var end = (index + 1) * pageCount;
    if (start >= messages.length) {
      return List.empty(growable: true);
    }
    if (start > end) {
      return List.empty(growable: true);
    }
    if (end > messages.length) {
      end = messages.length;
    }
    var msgs = messages.sublist(start, end);

    var contents = await _loadContent(msgs.map((e) => e.messageId).toList());

    if (contents.status != Status.Success.value) {
      return [];
    }

    var msgMap = Map<int, Message>();

    /// todo  one messageId more messages?
    msgs.forEach((element) {
      msgMap[element.messageId] = element;
    });

    ///处理信息；
    contents.data.forEach((content) {
      if (msgMap.containsKey(content.messageId.toInt())) {
        var msg = msgMap[content.messageId.toInt()];
        msg.body = content.body;
        msg.extra = content.extra;
        msg.type = content.type;
      }
    });
    return msgMap.values.toList();
  }

  ///加载信息内容（根据msgIds）
  Future<KimInnerResponse<List<MessageContent>>> _loadContent(List<int> messageId) async {
    var ids = messageId.map((e) {
      return $fixnum.Int64.parseInt(e.toString());
    });
    MessageContentReq req = MessageContentReq(messageIds: ids);
    var response = await client.request(LogicPkt.build(Command.offlineContent, "", payload: req.writeToBuffer()));
    if (response.status != Status.Success.value) {
      return KimInnerResponse(response.status, [], null);
    }
    var contents = MessageContentResp.fromBuffer(response.payload);
    return KimInnerResponse(response.status, contents.contents, null);
  }
}
