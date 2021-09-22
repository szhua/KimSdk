///
//  Generated code. Do not modify.
//  source: proto/protocol.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginReqDescriptor instead')
const LoginReq$json = const {
  '1': 'LoginReq',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'isp', '3': 2, '4': 1, '5': 9, '10': 'isp'},
    const {'1': 'zone', '3': 3, '4': 1, '5': 9, '10': 'zone'},
    const {'1': 'tags', '3': 4, '4': 3, '5': 9, '10': 'tags'},
  ],
};

/// Descriptor for `LoginReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginReqDescriptor = $convert.base64Decode('CghMb2dpblJlcRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SEAoDaXNwGAIgASgJUgNpc3ASEgoEem9uZRgDIAEoCVIEem9uZRISCgR0YWdzGAQgAygJUgR0YWdz');
@$core.Deprecated('Use loginRespDescriptor instead')
const LoginResp$json = const {
  '1': 'LoginResp',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 9, '10': 'channelId'},
    const {'1': 'account', '3': 2, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `LoginResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRespDescriptor = $convert.base64Decode('CglMb2dpblJlc3ASHAoJY2hhbm5lbElkGAEgASgJUgljaGFubmVsSWQSGAoHYWNjb3VudBgCIAEoCVIHYWNjb3VudA==');
@$core.Deprecated('Use kickoutNotifyDescriptor instead')
const KickoutNotify$json = const {
  '1': 'KickoutNotify',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 9, '10': 'channelId'},
  ],
};

/// Descriptor for `KickoutNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickoutNotifyDescriptor = $convert.base64Decode('Cg1LaWNrb3V0Tm90aWZ5EhwKCWNoYW5uZWxJZBgBIAEoCVIJY2hhbm5lbElk');
@$core.Deprecated('Use sessionDescriptor instead')
const Session$json = const {
  '1': 'Session',
  '2': const [
    const {'1': 'channelId', '3': 1, '4': 1, '5': 9, '10': 'channelId'},
    const {'1': 'gateId', '3': 2, '4': 1, '5': 9, '10': 'gateId'},
    const {'1': 'account', '3': 3, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'zone', '3': 4, '4': 1, '5': 9, '10': 'zone'},
    const {'1': 'isp', '3': 5, '4': 1, '5': 9, '10': 'isp'},
    const {'1': 'remoteIP', '3': 6, '4': 1, '5': 9, '10': 'remoteIP'},
    const {'1': 'device', '3': 7, '4': 1, '5': 9, '10': 'device'},
    const {'1': 'app', '3': 8, '4': 1, '5': 9, '10': 'app'},
    const {'1': 'tags', '3': 9, '4': 3, '5': 9, '10': 'tags'},
  ],
};

/// Descriptor for `Session`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDescriptor = $convert.base64Decode('CgdTZXNzaW9uEhwKCWNoYW5uZWxJZBgBIAEoCVIJY2hhbm5lbElkEhYKBmdhdGVJZBgCIAEoCVIGZ2F0ZUlkEhgKB2FjY291bnQYAyABKAlSB2FjY291bnQSEgoEem9uZRgEIAEoCVIEem9uZRIQCgNpc3AYBSABKAlSA2lzcBIaCghyZW1vdGVJUBgGIAEoCVIIcmVtb3RlSVASFgoGZGV2aWNlGAcgASgJUgZkZXZpY2USEAoDYXBwGAggASgJUgNhcHASEgoEdGFncxgJIAMoCVIEdGFncw==');
@$core.Deprecated('Use messageReqDescriptor instead')
const MessageReq$json = const {
  '1': 'MessageReq',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'body', '3': 2, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'extra', '3': 3, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `MessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageReqDescriptor = $convert.base64Decode('CgpNZXNzYWdlUmVxEhIKBHR5cGUYASABKAVSBHR5cGUSEgoEYm9keRgCIAEoCVIEYm9keRIUCgVleHRyYRgDIAEoCVIFZXh0cmE=');
@$core.Deprecated('Use messageRespDescriptor instead')
const MessageResp$json = const {
  '1': 'MessageResp',
  '2': const [
    const {'1': 'messageId', '3': 1, '4': 1, '5': 3, '10': 'messageId'},
    const {'1': 'sendTime', '3': 2, '4': 1, '5': 3, '10': 'sendTime'},
  ],
};

/// Descriptor for `MessageResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRespDescriptor = $convert.base64Decode('CgtNZXNzYWdlUmVzcBIcCgltZXNzYWdlSWQYASABKANSCW1lc3NhZ2VJZBIaCghzZW5kVGltZRgCIAEoA1IIc2VuZFRpbWU=');
@$core.Deprecated('Use messagePushDescriptor instead')
const MessagePush$json = const {
  '1': 'MessagePush',
  '2': const [
    const {'1': 'messageId', '3': 1, '4': 1, '5': 3, '10': 'messageId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
    const {'1': 'sender', '3': 5, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'sendTime', '3': 6, '4': 1, '5': 3, '10': 'sendTime'},
  ],
};

/// Descriptor for `MessagePush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messagePushDescriptor = $convert.base64Decode('CgtNZXNzYWdlUHVzaBIcCgltZXNzYWdlSWQYASABKANSCW1lc3NhZ2VJZBISCgR0eXBlGAIgASgFUgR0eXBlEhIKBGJvZHkYAyABKAlSBGJvZHkSFAoFZXh0cmEYBCABKAlSBWV4dHJhEhYKBnNlbmRlchgFIAEoCVIGc2VuZGVyEhoKCHNlbmRUaW1lGAYgASgDUghzZW5kVGltZQ==');
@$core.Deprecated('Use errorRespDescriptor instead')
const ErrorResp$json = const {
  '1': 'ErrorResp',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ErrorResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorRespDescriptor = $convert.base64Decode('CglFcnJvclJlc3ASGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use messageAckReqDescriptor instead')
const MessageAckReq$json = const {
  '1': 'MessageAckReq',
  '2': const [
    const {'1': 'messageId', '3': 1, '4': 1, '5': 3, '10': 'messageId'},
  ],
};

/// Descriptor for `MessageAckReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageAckReqDescriptor = $convert.base64Decode('Cg1NZXNzYWdlQWNrUmVxEhwKCW1lc3NhZ2VJZBgBIAEoA1IJbWVzc2FnZUlk');
@$core.Deprecated('Use groupCreateReqDescriptor instead')
const GroupCreateReq$json = const {
  '1': 'GroupCreateReq',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 2, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'introduction', '3': 3, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'owner', '3': 4, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'members', '3': 5, '4': 3, '5': 9, '10': 'members'},
  ],
};

/// Descriptor for `GroupCreateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupCreateReqDescriptor = $convert.base64Decode('Cg5Hcm91cENyZWF0ZVJlcRISCgRuYW1lGAEgASgJUgRuYW1lEhYKBmF2YXRhchgCIAEoCVIGYXZhdGFyEiIKDGludHJvZHVjdGlvbhgDIAEoCVIMaW50cm9kdWN0aW9uEhQKBW93bmVyGAQgASgJUgVvd25lchIYCgdtZW1iZXJzGAUgAygJUgdtZW1iZXJz');
@$core.Deprecated('Use groupCreateRespDescriptor instead')
const GroupCreateResp$json = const {
  '1': 'GroupCreateResp',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `GroupCreateResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupCreateRespDescriptor = $convert.base64Decode('Cg9Hcm91cENyZWF0ZVJlc3ASGQoIZ3JvdXBfaWQYASABKAlSB2dyb3VwSWQ=');
@$core.Deprecated('Use groupCreateNotifyDescriptor instead')
const GroupCreateNotify$json = const {
  '1': 'GroupCreateNotify',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'members', '3': 2, '4': 3, '5': 9, '10': 'members'},
  ],
};

/// Descriptor for `GroupCreateNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupCreateNotifyDescriptor = $convert.base64Decode('ChFHcm91cENyZWF0ZU5vdGlmeRIZCghncm91cF9pZBgBIAEoCVIHZ3JvdXBJZBIYCgdtZW1iZXJzGAIgAygJUgdtZW1iZXJz');
@$core.Deprecated('Use groupJoinReqDescriptor instead')
const GroupJoinReq$json = const {
  '1': 'GroupJoinReq',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'group_id', '3': 2, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `GroupJoinReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupJoinReqDescriptor = $convert.base64Decode('CgxHcm91cEpvaW5SZXESGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudBIZCghncm91cF9pZBgCIAEoCVIHZ3JvdXBJZA==');
@$core.Deprecated('Use groupQuitReqDescriptor instead')
const GroupQuitReq$json = const {
  '1': 'GroupQuitReq',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'group_id', '3': 2, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `GroupQuitReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupQuitReqDescriptor = $convert.base64Decode('CgxHcm91cFF1aXRSZXESGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudBIZCghncm91cF9pZBgCIAEoCVIHZ3JvdXBJZA==');
@$core.Deprecated('Use groupGetReqDescriptor instead')
const GroupGetReq$json = const {
  '1': 'GroupGetReq',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
  ],
};

/// Descriptor for `GroupGetReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupGetReqDescriptor = $convert.base64Decode('CgtHcm91cEdldFJlcRIZCghncm91cF9pZBgBIAEoCVIHZ3JvdXBJZA==');
@$core.Deprecated('Use memberDescriptor instead')
const Member$json = const {
  '1': 'Member',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'alias', '3': 2, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'join_time', '3': 4, '4': 1, '5': 3, '10': 'joinTime'},
  ],
};

/// Descriptor for `Member`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDescriptor = $convert.base64Decode('CgZNZW1iZXISGAoHYWNjb3VudBgBIAEoCVIHYWNjb3VudBIUCgVhbGlhcxgCIAEoCVIFYWxpYXMSFgoGYXZhdGFyGAMgASgJUgZhdmF0YXISGwoJam9pbl90aW1lGAQgASgDUghqb2luVGltZQ==');
@$core.Deprecated('Use groupGetRespDescriptor instead')
const GroupGetResp$json = const {
  '1': 'GroupGetResp',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    const {'1': 'introduction', '3': 4, '4': 1, '5': 9, '10': 'introduction'},
    const {'1': 'owner', '3': 5, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'members', '3': 6, '4': 3, '5': 11, '6': '.pkt.Member', '10': 'members'},
    const {'1': 'created_at', '3': 7, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `GroupGetResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupGetRespDescriptor = $convert.base64Decode('CgxHcm91cEdldFJlc3ASDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFgoGYXZhdGFyGAMgASgJUgZhdmF0YXISIgoMaW50cm9kdWN0aW9uGAQgASgJUgxpbnRyb2R1Y3Rpb24SFAoFb3duZXIYBSABKAlSBW93bmVyEiUKB21lbWJlcnMYBiADKAsyCy5wa3QuTWVtYmVyUgdtZW1iZXJzEh0KCmNyZWF0ZWRfYXQYByABKANSCWNyZWF0ZWRBdA==');
@$core.Deprecated('Use groupJoinNotifyDescriptor instead')
const GroupJoinNotify$json = const {
  '1': 'GroupJoinNotify',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'account', '3': 2, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `GroupJoinNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupJoinNotifyDescriptor = $convert.base64Decode('Cg9Hcm91cEpvaW5Ob3RpZnkSGQoIZ3JvdXBfaWQYASABKAlSB2dyb3VwSWQSGAoHYWNjb3VudBgCIAEoCVIHYWNjb3VudA==');
@$core.Deprecated('Use groupQuitNotifyDescriptor instead')
const GroupQuitNotify$json = const {
  '1': 'GroupQuitNotify',
  '2': const [
    const {'1': 'group_id', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    const {'1': 'account', '3': 2, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `GroupQuitNotify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupQuitNotifyDescriptor = $convert.base64Decode('Cg9Hcm91cFF1aXROb3RpZnkSGQoIZ3JvdXBfaWQYASABKAlSB2dyb3VwSWQSGAoHYWNjb3VudBgCIAEoCVIHYWNjb3VudA==');
@$core.Deprecated('Use messageIndexReqDescriptor instead')
const MessageIndexReq$json = const {
  '1': 'MessageIndexReq',
  '2': const [
    const {'1': 'message_id', '3': 1, '4': 1, '5': 3, '10': 'messageId'},
  ],
};

/// Descriptor for `MessageIndexReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIndexReqDescriptor = $convert.base64Decode('Cg9NZXNzYWdlSW5kZXhSZXESHQoKbWVzc2FnZV9pZBgBIAEoA1IJbWVzc2FnZUlk');
@$core.Deprecated('Use messageIndexRespDescriptor instead')
const MessageIndexResp$json = const {
  '1': 'MessageIndexResp',
  '2': const [
    const {'1': 'indexes', '3': 1, '4': 3, '5': 11, '6': '.pkt.MessageIndex', '10': 'indexes'},
  ],
};

/// Descriptor for `MessageIndexResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIndexRespDescriptor = $convert.base64Decode('ChBNZXNzYWdlSW5kZXhSZXNwEisKB2luZGV4ZXMYASADKAsyES5wa3QuTWVzc2FnZUluZGV4UgdpbmRleGVz');
@$core.Deprecated('Use messageIndexDescriptor instead')
const MessageIndex$json = const {
  '1': 'MessageIndex',
  '2': const [
    const {'1': 'message_id', '3': 1, '4': 1, '5': 3, '10': 'messageId'},
    const {'1': 'direction', '3': 2, '4': 1, '5': 5, '10': 'direction'},
    const {'1': 'send_time', '3': 3, '4': 1, '5': 3, '10': 'sendTime'},
    const {'1': 'accountB', '3': 4, '4': 1, '5': 9, '10': 'accountB'},
    const {'1': 'group', '3': 5, '4': 1, '5': 9, '10': 'group'},
  ],
};

/// Descriptor for `MessageIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIndexDescriptor = $convert.base64Decode('CgxNZXNzYWdlSW5kZXgSHQoKbWVzc2FnZV9pZBgBIAEoA1IJbWVzc2FnZUlkEhwKCWRpcmVjdGlvbhgCIAEoBVIJZGlyZWN0aW9uEhsKCXNlbmRfdGltZRgDIAEoA1IIc2VuZFRpbWUSGgoIYWNjb3VudEIYBCABKAlSCGFjY291bnRCEhQKBWdyb3VwGAUgASgJUgVncm91cA==');
@$core.Deprecated('Use messageContentReqDescriptor instead')
const MessageContentReq$json = const {
  '1': 'MessageContentReq',
  '2': const [
    const {'1': 'message_ids', '3': 1, '4': 3, '5': 3, '10': 'messageIds'},
  ],
};

/// Descriptor for `MessageContentReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageContentReqDescriptor = $convert.base64Decode('ChFNZXNzYWdlQ29udGVudFJlcRIfCgttZXNzYWdlX2lkcxgBIAMoA1IKbWVzc2FnZUlkcw==');
@$core.Deprecated('Use messageContentDescriptor instead')
const MessageContent$json = const {
  '1': 'MessageContent',
  '2': const [
    const {'1': 'messageId', '3': 1, '4': 1, '5': 3, '10': 'messageId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'extra', '3': 4, '4': 1, '5': 9, '10': 'extra'},
  ],
};

/// Descriptor for `MessageContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageContentDescriptor = $convert.base64Decode('Cg5NZXNzYWdlQ29udGVudBIcCgltZXNzYWdlSWQYASABKANSCW1lc3NhZ2VJZBISCgR0eXBlGAIgASgFUgR0eXBlEhIKBGJvZHkYAyABKAlSBGJvZHkSFAoFZXh0cmEYBCABKAlSBWV4dHJh');
@$core.Deprecated('Use messageContentRespDescriptor instead')
const MessageContentResp$json = const {
  '1': 'MessageContentResp',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 3, '5': 11, '6': '.pkt.MessageContent', '10': 'contents'},
  ],
};

/// Descriptor for `MessageContentResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageContentRespDescriptor = $convert.base64Decode('ChJNZXNzYWdlQ29udGVudFJlc3ASLwoIY29udGVudHMYASADKAsyEy5wa3QuTWVzc2FnZUNvbnRlbnRSCGNvbnRlbnRz');
