///
//  Generated code. Do not modify.
//  source: proto/protocol.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class LoginReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isp')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zone')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..hasRequiredFields = false
  ;

  LoginReq._() : super();
  factory LoginReq({
    $core.String token,
    $core.String isp,
    $core.String zone,
    $core.Iterable<$core.String> tags,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (isp != null) {
      _result.isp = isp;
    }
    if (zone != null) {
      _result.zone = zone;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory LoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginReq clone() => LoginReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginReq copyWith(void Function(LoginReq) updates) => super.copyWith((message) => updates(message as LoginReq)) as LoginReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginReq create() => LoginReq._();
  LoginReq createEmptyInstance() => create();
  static $pb.PbList<LoginReq> createRepeated() => $pb.PbList<LoginReq>();
  @$core.pragma('dart2js:noInline')
  static LoginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginReq>(create);
  static LoginReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get isp => $_getSZ(1);
  @$pb.TagNumber(2)
  set isp($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsp() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsp() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get zone => $_getSZ(2);
  @$pb.TagNumber(3)
  set zone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZone() => $_has(2);
  @$pb.TagNumber(3)
  void clearZone() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get tags => $_getList(3);
}

class LoginResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..hasRequiredFields = false
  ;

  LoginResp._() : super();
  factory LoginResp({
    $core.String channelId,
    $core.String account,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory LoginResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginResp clone() => LoginResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginResp copyWith(void Function(LoginResp) updates) => super.copyWith((message) => updates(message as LoginResp)) as LoginResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResp create() => LoginResp._();
  LoginResp createEmptyInstance() => create();
  static $pb.PbList<LoginResp> createRepeated() => $pb.PbList<LoginResp>();
  @$core.pragma('dart2js:noInline')
  static LoginResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResp>(create);
  static LoginResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set channelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get account => $_getSZ(1);
  @$pb.TagNumber(2)
  set account($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);
}

class KickoutNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KickoutNotify', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..hasRequiredFields = false
  ;

  KickoutNotify._() : super();
  factory KickoutNotify({
    $core.String channelId,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    return _result;
  }
  factory KickoutNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickoutNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickoutNotify clone() => KickoutNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickoutNotify copyWith(void Function(KickoutNotify) updates) => super.copyWith((message) => updates(message as KickoutNotify)) as KickoutNotify; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KickoutNotify create() => KickoutNotify._();
  KickoutNotify createEmptyInstance() => create();
  static $pb.PbList<KickoutNotify> createRepeated() => $pb.PbList<KickoutNotify>();
  @$core.pragma('dart2js:noInline')
  static KickoutNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickoutNotify>(create);
  static KickoutNotify _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set channelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);
}

class Session extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Session', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gateId', protoName: 'gateId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zone')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isp')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteIP', protoName: 'remoteIP')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'device')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'app')
    ..pPS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..hasRequiredFields = false
  ;

  Session._() : super();
  factory Session({
    $core.String channelId,
    $core.String gateId,
    $core.String account,
    $core.String zone,
    $core.String isp,
    $core.String remoteIP,
    $core.String device,
    $core.String app,
    $core.Iterable<$core.String> tags,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (gateId != null) {
      _result.gateId = gateId;
    }
    if (account != null) {
      _result.account = account;
    }
    if (zone != null) {
      _result.zone = zone;
    }
    if (isp != null) {
      _result.isp = isp;
    }
    if (remoteIP != null) {
      _result.remoteIP = remoteIP;
    }
    if (device != null) {
      _result.device = device;
    }
    if (app != null) {
      _result.app = app;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory Session.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Session clone() => Session()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Session copyWith(void Function(Session) updates) => super.copyWith((message) => updates(message as Session)) as Session; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set channelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gateId => $_getSZ(1);
  @$pb.TagNumber(2)
  set gateId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGateId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGateId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get account => $_getSZ(2);
  @$pb.TagNumber(3)
  set account($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get zone => $_getSZ(3);
  @$pb.TagNumber(4)
  set zone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasZone() => $_has(3);
  @$pb.TagNumber(4)
  void clearZone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get isp => $_getSZ(4);
  @$pb.TagNumber(5)
  set isp($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsp() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsp() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get remoteIP => $_getSZ(5);
  @$pb.TagNumber(6)
  set remoteIP($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemoteIP() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemoteIP() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get device => $_getSZ(6);
  @$pb.TagNumber(7)
  set device($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDevice() => $_has(6);
  @$pb.TagNumber(7)
  void clearDevice() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get app => $_getSZ(7);
  @$pb.TagNumber(8)
  set app($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasApp() => $_has(7);
  @$pb.TagNumber(8)
  void clearApp() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.String> get tags => $_getList(8);
}

class MessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  MessageReq._() : super();
  factory MessageReq({
    $core.int type,
    $core.String body,
    $core.String extra,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (body != null) {
      _result.body = body;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory MessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageReq clone() => MessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageReq copyWith(void Function(MessageReq) updates) => super.copyWith((message) => updates(message as MessageReq)) as MessageReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageReq create() => MessageReq._();
  MessageReq createEmptyInstance() => create();
  static $pb.PbList<MessageReq> createRepeated() => $pb.PbList<MessageReq>();
  @$core.pragma('dart2js:noInline')
  static MessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageReq>(create);
  static MessageReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get extra => $_getSZ(2);
  @$pb.TagNumber(3)
  set extra($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtra() => clearField(3);
}

class MessageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', protoName: 'messageId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendTime', protoName: 'sendTime')
    ..hasRequiredFields = false
  ;

  MessageResp._() : super();
  factory MessageResp({
    $fixnum.Int64 messageId,
    $fixnum.Int64 sendTime,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (sendTime != null) {
      _result.sendTime = sendTime;
    }
    return _result;
  }
  factory MessageResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageResp clone() => MessageResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageResp copyWith(void Function(MessageResp) updates) => super.copyWith((message) => updates(message as MessageResp)) as MessageResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageResp create() => MessageResp._();
  MessageResp createEmptyInstance() => create();
  static $pb.PbList<MessageResp> createRepeated() => $pb.PbList<MessageResp>();
  @$core.pragma('dart2js:noInline')
  static MessageResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageResp>(create);
  static MessageResp _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sendTime => $_getI64(1);
  @$pb.TagNumber(2)
  set sendTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSendTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearSendTime() => clearField(2);
}

class MessagePush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessagePush', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', protoName: 'messageId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendTime', protoName: 'sendTime')
    ..hasRequiredFields = false
  ;

  MessagePush._() : super();
  factory MessagePush({
    $fixnum.Int64 messageId,
    $core.int type,
    $core.String body,
    $core.String extra,
    $core.String sender,
    $fixnum.Int64 sendTime,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (body != null) {
      _result.body = body;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (sendTime != null) {
      _result.sendTime = sendTime;
    }
    return _result;
  }
  factory MessagePush.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessagePush.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessagePush clone() => MessagePush()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessagePush copyWith(void Function(MessagePush) updates) => super.copyWith((message) => updates(message as MessagePush)) as MessagePush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessagePush create() => MessagePush._();
  MessagePush createEmptyInstance() => create();
  static $pb.PbList<MessagePush> createRepeated() => $pb.PbList<MessagePush>();
  @$core.pragma('dart2js:noInline')
  static MessagePush getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessagePush>(create);
  static MessagePush _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get extra => $_getSZ(3);
  @$pb.TagNumber(4)
  set extra($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtra() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtra() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sender => $_getSZ(4);
  @$pb.TagNumber(5)
  set sender($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSender() => $_has(4);
  @$pb.TagNumber(5)
  void clearSender() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get sendTime => $_getI64(5);
  @$pb.TagNumber(6)
  set sendTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSendTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendTime() => clearField(6);
}

class ErrorResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ErrorResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  ErrorResp._() : super();
  factory ErrorResp({
    $core.String message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory ErrorResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorResp clone() => ErrorResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorResp copyWith(void Function(ErrorResp) updates) => super.copyWith((message) => updates(message as ErrorResp)) as ErrorResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorResp create() => ErrorResp._();
  ErrorResp createEmptyInstance() => create();
  static $pb.PbList<ErrorResp> createRepeated() => $pb.PbList<ErrorResp>();
  @$core.pragma('dart2js:noInline')
  static ErrorResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorResp>(create);
  static ErrorResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class MessageAckReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageAckReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', protoName: 'messageId')
    ..hasRequiredFields = false
  ;

  MessageAckReq._() : super();
  factory MessageAckReq({
    $fixnum.Int64 messageId,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    return _result;
  }
  factory MessageAckReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageAckReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageAckReq clone() => MessageAckReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageAckReq copyWith(void Function(MessageAckReq) updates) => super.copyWith((message) => updates(message as MessageAckReq)) as MessageAckReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageAckReq create() => MessageAckReq._();
  MessageAckReq createEmptyInstance() => create();
  static $pb.PbList<MessageAckReq> createRepeated() => $pb.PbList<MessageAckReq>();
  @$core.pragma('dart2js:noInline')
  static MessageAckReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageAckReq>(create);
  static MessageAckReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);
}

class GroupCreateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupCreateReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members')
    ..hasRequiredFields = false
  ;

  GroupCreateReq._() : super();
  factory GroupCreateReq({
    $core.String name,
    $core.String avatar,
    $core.String introduction,
    $core.String owner,
    $core.Iterable<$core.String> members,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (introduction != null) {
      _result.introduction = introduction;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory GroupCreateReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupCreateReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupCreateReq clone() => GroupCreateReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupCreateReq copyWith(void Function(GroupCreateReq) updates) => super.copyWith((message) => updates(message as GroupCreateReq)) as GroupCreateReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupCreateReq create() => GroupCreateReq._();
  GroupCreateReq createEmptyInstance() => create();
  static $pb.PbList<GroupCreateReq> createRepeated() => $pb.PbList<GroupCreateReq>();
  @$core.pragma('dart2js:noInline')
  static GroupCreateReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupCreateReq>(create);
  static GroupCreateReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get avatar => $_getSZ(1);
  @$pb.TagNumber(2)
  set avatar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvatar() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvatar() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get introduction => $_getSZ(2);
  @$pb.TagNumber(3)
  set introduction($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIntroduction() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntroduction() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get owner => $_getSZ(3);
  @$pb.TagNumber(4)
  set owner($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwner() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get members => $_getList(4);
}

class GroupCreateResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupCreateResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  GroupCreateResp._() : super();
  factory GroupCreateResp({
    $core.String groupId,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    return _result;
  }
  factory GroupCreateResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupCreateResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupCreateResp clone() => GroupCreateResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupCreateResp copyWith(void Function(GroupCreateResp) updates) => super.copyWith((message) => updates(message as GroupCreateResp)) as GroupCreateResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupCreateResp create() => GroupCreateResp._();
  GroupCreateResp createEmptyInstance() => create();
  static $pb.PbList<GroupCreateResp> createRepeated() => $pb.PbList<GroupCreateResp>();
  @$core.pragma('dart2js:noInline')
  static GroupCreateResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupCreateResp>(create);
  static GroupCreateResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class GroupCreateNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupCreateNotify', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members')
    ..hasRequiredFields = false
  ;

  GroupCreateNotify._() : super();
  factory GroupCreateNotify({
    $core.String groupId,
    $core.Iterable<$core.String> members,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    return _result;
  }
  factory GroupCreateNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupCreateNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupCreateNotify clone() => GroupCreateNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupCreateNotify copyWith(void Function(GroupCreateNotify) updates) => super.copyWith((message) => updates(message as GroupCreateNotify)) as GroupCreateNotify; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupCreateNotify create() => GroupCreateNotify._();
  GroupCreateNotify createEmptyInstance() => create();
  static $pb.PbList<GroupCreateNotify> createRepeated() => $pb.PbList<GroupCreateNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupCreateNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupCreateNotify>(create);
  static GroupCreateNotify _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get members => $_getList(1);
}

class GroupJoinReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupJoinReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  GroupJoinReq._() : super();
  factory GroupJoinReq({
    $core.String account,
    $core.String groupId,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (groupId != null) {
      _result.groupId = groupId;
    }
    return _result;
  }
  factory GroupJoinReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupJoinReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupJoinReq clone() => GroupJoinReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupJoinReq copyWith(void Function(GroupJoinReq) updates) => super.copyWith((message) => updates(message as GroupJoinReq)) as GroupJoinReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupJoinReq create() => GroupJoinReq._();
  GroupJoinReq createEmptyInstance() => create();
  static $pb.PbList<GroupJoinReq> createRepeated() => $pb.PbList<GroupJoinReq>();
  @$core.pragma('dart2js:noInline')
  static GroupJoinReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupJoinReq>(create);
  static GroupJoinReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get groupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

class GroupQuitReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupQuitReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  GroupQuitReq._() : super();
  factory GroupQuitReq({
    $core.String account,
    $core.String groupId,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (groupId != null) {
      _result.groupId = groupId;
    }
    return _result;
  }
  factory GroupQuitReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupQuitReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupQuitReq clone() => GroupQuitReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupQuitReq copyWith(void Function(GroupQuitReq) updates) => super.copyWith((message) => updates(message as GroupQuitReq)) as GroupQuitReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupQuitReq create() => GroupQuitReq._();
  GroupQuitReq createEmptyInstance() => create();
  static $pb.PbList<GroupQuitReq> createRepeated() => $pb.PbList<GroupQuitReq>();
  @$core.pragma('dart2js:noInline')
  static GroupQuitReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupQuitReq>(create);
  static GroupQuitReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get groupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);
}

class GroupGetReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupGetReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..hasRequiredFields = false
  ;

  GroupGetReq._() : super();
  factory GroupGetReq({
    $core.String groupId,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    return _result;
  }
  factory GroupGetReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupGetReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupGetReq clone() => GroupGetReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupGetReq copyWith(void Function(GroupGetReq) updates) => super.copyWith((message) => updates(message as GroupGetReq)) as GroupGetReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupGetReq create() => GroupGetReq._();
  GroupGetReq createEmptyInstance() => create();
  static $pb.PbList<GroupGetReq> createRepeated() => $pb.PbList<GroupGetReq>();
  @$core.pragma('dart2js:noInline')
  static GroupGetReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupGetReq>(create);
  static GroupGetReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);
}

class Member extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Member', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alias')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'joinTime')
    ..hasRequiredFields = false
  ;

  Member._() : super();
  factory Member({
    $core.String account,
    $core.String alias,
    $core.String avatar,
    $fixnum.Int64 joinTime,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (alias != null) {
      _result.alias = alias;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (joinTime != null) {
      _result.joinTime = joinTime;
    }
    return _result;
  }
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member clone() => Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member copyWith(void Function(Member) updates) => super.copyWith((message) => updates(message as Member)) as Member; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Member create() => Member._();
  Member createEmptyInstance() => create();
  static $pb.PbList<Member> createRepeated() => $pb.PbList<Member>();
  @$core.pragma('dart2js:noInline')
  static Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member>(create);
  static Member _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get alias => $_getSZ(1);
  @$pb.TagNumber(2)
  set alias($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlias() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlias() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get joinTime => $_getI64(3);
  @$pb.TagNumber(4)
  set joinTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasJoinTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearJoinTime() => clearField(4);
}

class GroupGetResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupGetResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avatar')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'introduction')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..pc<Member>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'members', $pb.PbFieldType.PM, subBuilder: Member.create)
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt')
    ..hasRequiredFields = false
  ;

  GroupGetResp._() : super();
  factory GroupGetResp({
    $core.String id,
    $core.String name,
    $core.String avatar,
    $core.String introduction,
    $core.String owner,
    $core.Iterable<Member> members,
    $fixnum.Int64 createdAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (introduction != null) {
      _result.introduction = introduction;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory GroupGetResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupGetResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupGetResp clone() => GroupGetResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupGetResp copyWith(void Function(GroupGetResp) updates) => super.copyWith((message) => updates(message as GroupGetResp)) as GroupGetResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupGetResp create() => GroupGetResp._();
  GroupGetResp createEmptyInstance() => create();
  static $pb.PbList<GroupGetResp> createRepeated() => $pb.PbList<GroupGetResp>();
  @$core.pragma('dart2js:noInline')
  static GroupGetResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupGetResp>(create);
  static GroupGetResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set avatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get introduction => $_getSZ(3);
  @$pb.TagNumber(4)
  set introduction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIntroduction() => $_has(3);
  @$pb.TagNumber(4)
  void clearIntroduction() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get owner => $_getSZ(4);
  @$pb.TagNumber(5)
  set owner($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(4);
  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<Member> get members => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(7)
  set createdAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
}

class GroupJoinNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupJoinNotify', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..hasRequiredFields = false
  ;

  GroupJoinNotify._() : super();
  factory GroupJoinNotify({
    $core.String groupId,
    $core.String account,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory GroupJoinNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupJoinNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupJoinNotify clone() => GroupJoinNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupJoinNotify copyWith(void Function(GroupJoinNotify) updates) => super.copyWith((message) => updates(message as GroupJoinNotify)) as GroupJoinNotify; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupJoinNotify create() => GroupJoinNotify._();
  GroupJoinNotify createEmptyInstance() => create();
  static $pb.PbList<GroupJoinNotify> createRepeated() => $pb.PbList<GroupJoinNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupJoinNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupJoinNotify>(create);
  static GroupJoinNotify _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get account => $_getSZ(1);
  @$pb.TagNumber(2)
  set account($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);
}

class GroupQuitNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GroupQuitNotify', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'groupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..hasRequiredFields = false
  ;

  GroupQuitNotify._() : super();
  factory GroupQuitNotify({
    $core.String groupId,
    $core.String account,
  }) {
    final _result = create();
    if (groupId != null) {
      _result.groupId = groupId;
    }
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory GroupQuitNotify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupQuitNotify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupQuitNotify clone() => GroupQuitNotify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupQuitNotify copyWith(void Function(GroupQuitNotify) updates) => super.copyWith((message) => updates(message as GroupQuitNotify)) as GroupQuitNotify; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GroupQuitNotify create() => GroupQuitNotify._();
  GroupQuitNotify createEmptyInstance() => create();
  static $pb.PbList<GroupQuitNotify> createRepeated() => $pb.PbList<GroupQuitNotify>();
  @$core.pragma('dart2js:noInline')
  static GroupQuitNotify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupQuitNotify>(create);
  static GroupQuitNotify _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get account => $_getSZ(1);
  @$pb.TagNumber(2)
  set account($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);
}

class MessageIndexReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageIndexReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId')
    ..hasRequiredFields = false
  ;

  MessageIndexReq._() : super();
  factory MessageIndexReq({
    $fixnum.Int64 messageId,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    return _result;
  }
  factory MessageIndexReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageIndexReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageIndexReq clone() => MessageIndexReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageIndexReq copyWith(void Function(MessageIndexReq) updates) => super.copyWith((message) => updates(message as MessageIndexReq)) as MessageIndexReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageIndexReq create() => MessageIndexReq._();
  MessageIndexReq createEmptyInstance() => create();
  static $pb.PbList<MessageIndexReq> createRepeated() => $pb.PbList<MessageIndexReq>();
  @$core.pragma('dart2js:noInline')
  static MessageIndexReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageIndexReq>(create);
  static MessageIndexReq _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);
}

class MessageIndexResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageIndexResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..pc<MessageIndex>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indexes', $pb.PbFieldType.PM, subBuilder: MessageIndex.create)
    ..hasRequiredFields = false
  ;

  MessageIndexResp._() : super();
  factory MessageIndexResp({
    $core.Iterable<MessageIndex> indexes,
  }) {
    final _result = create();
    if (indexes != null) {
      _result.indexes.addAll(indexes);
    }
    return _result;
  }
  factory MessageIndexResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageIndexResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageIndexResp clone() => MessageIndexResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageIndexResp copyWith(void Function(MessageIndexResp) updates) => super.copyWith((message) => updates(message as MessageIndexResp)) as MessageIndexResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageIndexResp create() => MessageIndexResp._();
  MessageIndexResp createEmptyInstance() => create();
  static $pb.PbList<MessageIndexResp> createRepeated() => $pb.PbList<MessageIndexResp>();
  @$core.pragma('dart2js:noInline')
  static MessageIndexResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageIndexResp>(create);
  static MessageIndexResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MessageIndex> get indexes => $_getList(0);
}

class MessageIndex extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageIndex', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendTime')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountB', protoName: 'accountB')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'group')
    ..hasRequiredFields = false
  ;

  MessageIndex._() : super();
  factory MessageIndex({
    $fixnum.Int64 messageId,
    $core.int direction,
    $fixnum.Int64 sendTime,
    $core.String accountB,
    $core.String group,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    if (sendTime != null) {
      _result.sendTime = sendTime;
    }
    if (accountB != null) {
      _result.accountB = accountB;
    }
    if (group != null) {
      _result.group = group;
    }
    return _result;
  }
  factory MessageIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageIndex clone() => MessageIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageIndex copyWith(void Function(MessageIndex) updates) => super.copyWith((message) => updates(message as MessageIndex)) as MessageIndex; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageIndex create() => MessageIndex._();
  MessageIndex createEmptyInstance() => create();
  static $pb.PbList<MessageIndex> createRepeated() => $pb.PbList<MessageIndex>();
  @$core.pragma('dart2js:noInline')
  static MessageIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageIndex>(create);
  static MessageIndex _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get direction => $_getIZ(1);
  @$pb.TagNumber(2)
  set direction($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sendTime => $_getI64(2);
  @$pb.TagNumber(3)
  set sendTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSendTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearSendTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountB => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountB($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountB() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountB() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get group => $_getSZ(4);
  @$pb.TagNumber(5)
  set group($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGroup() => $_has(4);
  @$pb.TagNumber(5)
  void clearGroup() => clearField(5);
}

class MessageContentReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageContentReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageIds', $pb.PbFieldType.P6)
    ..hasRequiredFields = false
  ;

  MessageContentReq._() : super();
  factory MessageContentReq({
    $core.Iterable<$fixnum.Int64> messageIds,
  }) {
    final _result = create();
    if (messageIds != null) {
      _result.messageIds.addAll(messageIds);
    }
    return _result;
  }
  factory MessageContentReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageContentReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageContentReq clone() => MessageContentReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageContentReq copyWith(void Function(MessageContentReq) updates) => super.copyWith((message) => updates(message as MessageContentReq)) as MessageContentReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageContentReq create() => MessageContentReq._();
  MessageContentReq createEmptyInstance() => create();
  static $pb.PbList<MessageContentReq> createRepeated() => $pb.PbList<MessageContentReq>();
  @$core.pragma('dart2js:noInline')
  static MessageContentReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageContentReq>(create);
  static MessageContentReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get messageIds => $_getList(0);
}

class MessageContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageContent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageId', protoName: 'messageId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra')
    ..hasRequiredFields = false
  ;

  MessageContent._() : super();
  factory MessageContent({
    $fixnum.Int64 messageId,
    $core.int type,
    $core.String body,
    $core.String extra,
  }) {
    final _result = create();
    if (messageId != null) {
      _result.messageId = messageId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (body != null) {
      _result.body = body;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory MessageContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageContent clone() => MessageContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageContent copyWith(void Function(MessageContent) updates) => super.copyWith((message) => updates(message as MessageContent)) as MessageContent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageContent create() => MessageContent._();
  MessageContent createEmptyInstance() => create();
  static $pb.PbList<MessageContent> createRepeated() => $pb.PbList<MessageContent>();
  @$core.pragma('dart2js:noInline')
  static MessageContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageContent>(create);
  static MessageContent _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get extra => $_getSZ(3);
  @$pb.TagNumber(4)
  set extra($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExtra() => $_has(3);
  @$pb.TagNumber(4)
  void clearExtra() => clearField(4);
}

class MessageContentResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageContentResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..pc<MessageContent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contents', $pb.PbFieldType.PM, subBuilder: MessageContent.create)
    ..hasRequiredFields = false
  ;

  MessageContentResp._() : super();
  factory MessageContentResp({
    $core.Iterable<MessageContent> contents,
  }) {
    final _result = create();
    if (contents != null) {
      _result.contents.addAll(contents);
    }
    return _result;
  }
  factory MessageContentResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageContentResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageContentResp clone() => MessageContentResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageContentResp copyWith(void Function(MessageContentResp) updates) => super.copyWith((message) => updates(message as MessageContentResp)) as MessageContentResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageContentResp create() => MessageContentResp._();
  MessageContentResp createEmptyInstance() => create();
  static $pb.PbList<MessageContentResp> createRepeated() => $pb.PbList<MessageContentResp>();
  @$core.pragma('dart2js:noInline')
  static MessageContentResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageContentResp>(create);
  static MessageContentResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MessageContent> get contents => $_getList(0);
}

