///
//  Generated code. Do not modify.
//  source: proto/common.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pbenum.dart';

export 'common.pbenum.dart';

class Meta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Meta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..e<MetaType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: MetaType.int_, valueOf: MetaType.valueOf, enumValues: MetaType.values)
    ..hasRequiredFields = false
  ;

  Meta._() : super();
  factory Meta({
    $core.String key,
    $core.String value,
    MetaType type,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (value != null) {
      _result.value = value;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory Meta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Meta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Meta clone() => Meta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Meta copyWith(void Function(Meta) updates) => super.copyWith((message) => updates(message as Meta)) as Meta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Meta create() => Meta._();
  Meta createEmptyInstance() => create();
  static $pb.PbList<Meta> createRepeated() => $pb.PbList<Meta>();
  @$core.pragma('dart2js:noInline')
  static Meta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Meta>(create);
  static Meta _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$pb.TagNumber(3)
  MetaType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(MetaType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class Header extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Header', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'command')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', protoName: 'channelId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sequence', $pb.PbFieldType.OU3)
    ..e<Flag>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flag', $pb.PbFieldType.OE, defaultOrMaker: Flag.Request, valueOf: Flag.valueOf, enumValues: Flag.values)
    ..e<Status>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.Success, valueOf: Status.valueOf, enumValues: Status.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dest')
    ..pc<Meta>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meta', $pb.PbFieldType.PM, subBuilder: Meta.create)
    ..hasRequiredFields = false
  ;

  Header._() : super();
  factory Header({
    $core.String command,
    $core.String channelId,
    $core.int sequence,
    Flag flag,
    Status status,
    $core.String dest,
    $core.Iterable<Meta> meta,
  }) {
    final _result = create();
    if (command != null) {
      _result.command = command;
    }
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (sequence != null) {
      _result.sequence = sequence;
    }
    if (flag != null) {
      _result.flag = flag;
    }
    if (status != null) {
      _result.status = status;
    }
    if (dest != null) {
      _result.dest = dest;
    }
    if (meta != null) {
      _result.meta.addAll(meta);
    }
    return _result;
  }
  factory Header.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Header.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Header clone() => Header()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Header copyWith(void Function(Header) updates) => super.copyWith((message) => updates(message as Header)) as Header; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Header create() => Header._();
  Header createEmptyInstance() => create();
  static $pb.PbList<Header> createRepeated() => $pb.PbList<Header>();
  @$core.pragma('dart2js:noInline')
  static Header getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Header>(create);
  static Header _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get command => $_getSZ(0);
  @$pb.TagNumber(1)
  set command($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommand() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get channelId => $_getSZ(1);
  @$pb.TagNumber(2)
  set channelId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sequence => $_getIZ(2);
  @$pb.TagNumber(3)
  set sequence($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSequence() => $_has(2);
  @$pb.TagNumber(3)
  void clearSequence() => clearField(3);

  @$pb.TagNumber(4)
  Flag get flag => $_getN(3);
  @$pb.TagNumber(4)
  set flag(Flag v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFlag() => $_has(3);
  @$pb.TagNumber(4)
  void clearFlag() => clearField(4);

  @$pb.TagNumber(5)
  Status get status => $_getN(4);
  @$pb.TagNumber(5)
  set status(Status v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get dest => $_getSZ(5);
  @$pb.TagNumber(6)
  set dest($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDest() => $_has(5);
  @$pb.TagNumber(6)
  void clearDest() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Meta> get meta => $_getList(6);
}

class InnerHandshakeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnerHandshakeReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ServiceId', protoName: 'ServiceId')
    ..hasRequiredFields = false
  ;

  InnerHandshakeReq._() : super();
  factory InnerHandshakeReq({
    $core.String serviceId,
  }) {
    final _result = create();
    if (serviceId != null) {
      _result.serviceId = serviceId;
    }
    return _result;
  }
  factory InnerHandshakeReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnerHandshakeReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnerHandshakeReq clone() => InnerHandshakeReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnerHandshakeReq copyWith(void Function(InnerHandshakeReq) updates) => super.copyWith((message) => updates(message as InnerHandshakeReq)) as InnerHandshakeReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnerHandshakeReq create() => InnerHandshakeReq._();
  InnerHandshakeReq createEmptyInstance() => create();
  static $pb.PbList<InnerHandshakeReq> createRepeated() => $pb.PbList<InnerHandshakeReq>();
  @$core.pragma('dart2js:noInline')
  static InnerHandshakeReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnerHandshakeReq>(create);
  static InnerHandshakeReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceId() => clearField(1);
}

class InnerHandshakeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnerHandshakeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pkt'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Code', $pb.PbFieldType.OU3, protoName: 'Code')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Error', protoName: 'Error')
    ..hasRequiredFields = false
  ;

  InnerHandshakeResponse._() : super();
  factory InnerHandshakeResponse({
    $core.int code,
    $core.String error,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory InnerHandshakeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnerHandshakeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnerHandshakeResponse clone() => InnerHandshakeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnerHandshakeResponse copyWith(void Function(InnerHandshakeResponse) updates) => super.copyWith((message) => updates(message as InnerHandshakeResponse)) as InnerHandshakeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnerHandshakeResponse create() => InnerHandshakeResponse._();
  InnerHandshakeResponse createEmptyInstance() => create();
  static $pb.PbList<InnerHandshakeResponse> createRepeated() => $pb.PbList<InnerHandshakeResponse>();
  @$core.pragma('dart2js:noInline')
  static InnerHandshakeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnerHandshakeResponse>(create);
  static InnerHandshakeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

