import 'package:kim/pkt/packet.dart';
import 'dart:typed_data';
import 'package:kim/buffer/buffer.dart';
import 'package:kim/proto/common.pb.dart';

logicPktFromJson(LogicPkt data, Map<String, dynamic> json) {
  if (json['command'] != null) {
    data.command = json['command'].toString();
  }
  if (json['channelId'] != null) {
    data.channelId = json['channelId'].toString();
  }
  if (json['sequence'] != null) {
    data.sequence = json['sequence'] is String ? int.tryParse(json['sequence']) : json['sequence'].toInt();
  }
  if (json['dest'] != null) {
    data.dest = json['dest'].toString();
  }
  return data;
}

Map<String, dynamic> logicPktToJson(LogicPkt entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['command'] = entity.command;
  data['channelId'] = entity.channelId;
  data['sequence'] = entity.sequence;
  data['dest'] = entity.dest;
  return data;
}
