///
//  Generated code. Do not modify.
//  source: proto/common.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Status extends $pb.ProtobufEnum {
  static const Status Success = Status._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Success');
  static const Status NoDestination = Status._(100, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NoDestination');
  static const Status InvalidPacketBody = Status._(101, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidPacketBody');
  static const Status InvalidCommand = Status._(103, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InvalidCommand');
  static const Status Unauthorized = Status._(105, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Unauthorized');
  static const Status SystemException = Status._(300, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SystemException');
  static const Status NotImplemented = Status._(301, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NotImplemented');
  static const Status SessionNotFound = Status._(404, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SessionNotFound');

  static const $core.List<Status> values = <Status> [
    Success,
    NoDestination,
    InvalidPacketBody,
    InvalidCommand,
    Unauthorized,
    SystemException,
    NotImplemented,
    SessionNotFound,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status valueOf($core.int value) => _byValue[value];

  const Status._($core.int v, $core.String n) : super(v, n);
}

class MetaType extends $pb.ProtobufEnum {
  static const MetaType int_ = MetaType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'int');
  static const MetaType string = MetaType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'string');
  static const MetaType float = MetaType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'float');

  static const $core.List<MetaType> values = <MetaType> [
    int_,
    string,
    float,
  ];

  static final $core.Map<$core.int, MetaType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MetaType valueOf($core.int value) => _byValue[value];

  const MetaType._($core.int v, $core.String n) : super(v, n);
}

class ContentType extends $pb.ProtobufEnum {
  static const ContentType Protobuf = ContentType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Protobuf');
  static const ContentType Json = ContentType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Json');

  static const $core.List<ContentType> values = <ContentType> [
    Protobuf,
    Json,
  ];

  static final $core.Map<$core.int, ContentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ContentType valueOf($core.int value) => _byValue[value];

  const ContentType._($core.int v, $core.String n) : super(v, n);
}

class Flag extends $pb.ProtobufEnum {
  static const Flag Request = Flag._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Request');
  static const Flag Response = Flag._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Response');
  static const Flag Push = Flag._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Push');

  static const $core.List<Flag> values = <Flag> [
    Request,
    Response,
    Push,
  ];

  static final $core.Map<$core.int, Flag> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Flag valueOf($core.int value) => _byValue[value];

  const Flag._($core.int v, $core.String n) : super(v, n);
}

