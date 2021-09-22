import 'package:kim/sdk/msg_store.dart';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

messageFromJson(Message data, Map<String, dynamic> json) {
  if (json['messageId'] != null) {
    data.messageId = json['messageId'] is String ? int.tryParse(json['messageId']) : json['messageId'].toInt();
  }
  if (json['type'] != null) {
    data.type = json['type'] is String ? int.tryParse(json['type']) : json['type'].toInt();
  }
  if (json['body'] != null) {
    data.body = json['body'].toString();
  }
  if (json['extra'] != null) {
    data.extra = json['extra'].toString();
  }
  if (json['sender'] != null) {
    data.sender = json['sender'].toString();
  }
  if (json['receiver'] != null) {
    data.receiver = json['receiver'].toString();
  }
  if (json['group'] != null) {
    data.group = json['group'].toString();
  }
  if (json['sendTime'] != null) {
    data.sendTime = json['sendTime'] is String ? int.tryParse(json['sendTime']) : json['sendTime'].toInt();
  }
  if (json['arriveTime'] != null) {
    data.arriveTime = json['arriveTime'] is String ? int.tryParse(json['arriveTime']) : json['arriveTime'].toInt();
  }
  return data;
}

Map<String, dynamic> messageToJson(Message entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['messageId'] = entity.messageId;
  data['type'] = entity.type;
  data['body'] = entity.body;
  data['extra'] = entity.extra;
  data['sender'] = entity.sender;
  data['receiver'] = entity.receiver;
  data['group'] = entity.group;
  data['sendTime'] = entity.sendTime;
  data['arriveTime'] = entity.arriveTime;
  return data;
}
