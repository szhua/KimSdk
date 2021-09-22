///
//  Generated code. Do not modify.
//  source: proto/common.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'Success', '2': 0},
    const {'1': 'NoDestination', '2': 100},
    const {'1': 'InvalidPacketBody', '2': 101},
    const {'1': 'InvalidCommand', '2': 103},
    const {'1': 'Unauthorized', '2': 105},
    const {'1': 'SystemException', '2': 300},
    const {'1': 'NotImplemented', '2': 301},
    const {'1': 'SessionNotFound', '2': 404},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSCwoHU3VjY2VzcxAAEhEKDU5vRGVzdGluYXRpb24QZBIVChFJbnZhbGlkUGFja2V0Qm9keRBlEhIKDkludmFsaWRDb21tYW5kEGcSEAoMVW5hdXRob3JpemVkEGkSFAoPU3lzdGVtRXhjZXB0aW9uEKwCEhMKDk5vdEltcGxlbWVudGVkEK0CEhQKD1Nlc3Npb25Ob3RGb3VuZBCUAw==');
@$core.Deprecated('Use metaTypeDescriptor instead')
const MetaType$json = const {
  '1': 'MetaType',
  '2': const [
    const {'1': 'int', '2': 0},
    const {'1': 'string', '2': 1},
    const {'1': 'float', '2': 2},
  ],
};

/// Descriptor for `MetaType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List metaTypeDescriptor = $convert.base64Decode('CghNZXRhVHlwZRIHCgNpbnQQABIKCgZzdHJpbmcQARIJCgVmbG9hdBAC');
@$core.Deprecated('Use contentTypeDescriptor instead')
const ContentType$json = const {
  '1': 'ContentType',
  '2': const [
    const {'1': 'Protobuf', '2': 0},
    const {'1': 'Json', '2': 1},
  ],
};

/// Descriptor for `ContentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List contentTypeDescriptor = $convert.base64Decode('CgtDb250ZW50VHlwZRIMCghQcm90b2J1ZhAAEggKBEpzb24QAQ==');
@$core.Deprecated('Use flagDescriptor instead')
const Flag$json = const {
  '1': 'Flag',
  '2': const [
    const {'1': 'Request', '2': 0},
    const {'1': 'Response', '2': 1},
    const {'1': 'Push', '2': 2},
  ],
};

/// Descriptor for `Flag`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List flagDescriptor = $convert.base64Decode('CgRGbGFnEgsKB1JlcXVlc3QQABIMCghSZXNwb25zZRABEggKBFB1c2gQAg==');
@$core.Deprecated('Use metaDescriptor instead')
const Meta$json = const {
  '1': 'Meta',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.pkt.MetaType', '10': 'type'},
  ],
};

/// Descriptor for `Meta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metaDescriptor = $convert.base64Decode('CgRNZXRhEhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZRIhCgR0eXBlGAMgASgOMg0ucGt0Lk1ldGFUeXBlUgR0eXBl');
@$core.Deprecated('Use headerDescriptor instead')
const Header$json = const {
  '1': 'Header',
  '2': const [
    const {'1': 'command', '3': 1, '4': 1, '5': 9, '10': 'command'},
    const {'1': 'channelId', '3': 2, '4': 1, '5': 9, '10': 'channelId'},
    const {'1': 'sequence', '3': 3, '4': 1, '5': 13, '10': 'sequence'},
    const {'1': 'flag', '3': 4, '4': 1, '5': 14, '6': '.pkt.Flag', '10': 'flag'},
    const {'1': 'status', '3': 5, '4': 1, '5': 14, '6': '.pkt.Status', '10': 'status'},
    const {'1': 'dest', '3': 6, '4': 1, '5': 9, '10': 'dest'},
    const {'1': 'meta', '3': 7, '4': 3, '5': 11, '6': '.pkt.Meta', '10': 'meta'},
  ],
};

/// Descriptor for `Header`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerDescriptor = $convert.base64Decode('CgZIZWFkZXISGAoHY29tbWFuZBgBIAEoCVIHY29tbWFuZBIcCgljaGFubmVsSWQYAiABKAlSCWNoYW5uZWxJZBIaCghzZXF1ZW5jZRgDIAEoDVIIc2VxdWVuY2USHQoEZmxhZxgEIAEoDjIJLnBrdC5GbGFnUgRmbGFnEiMKBnN0YXR1cxgFIAEoDjILLnBrdC5TdGF0dXNSBnN0YXR1cxISCgRkZXN0GAYgASgJUgRkZXN0Eh0KBG1ldGEYByADKAsyCS5wa3QuTWV0YVIEbWV0YQ==');
@$core.Deprecated('Use innerHandshakeReqDescriptor instead')
const InnerHandshakeReq$json = const {
  '1': 'InnerHandshakeReq',
  '2': const [
    const {'1': 'ServiceId', '3': 1, '4': 1, '5': 9, '10': 'ServiceId'},
  ],
};

/// Descriptor for `InnerHandshakeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innerHandshakeReqDescriptor = $convert.base64Decode('ChFJbm5lckhhbmRzaGFrZVJlcRIcCglTZXJ2aWNlSWQYASABKAlSCVNlcnZpY2VJZA==');
@$core.Deprecated('Use innerHandshakeResponseDescriptor instead')
const InnerHandshakeResponse$json = const {
  '1': 'InnerHandshakeResponse',
  '2': const [
    const {'1': 'Code', '3': 1, '4': 1, '5': 13, '10': 'Code'},
    const {'1': 'Error', '3': 2, '4': 1, '5': 9, '10': 'Error'},
  ],
};

/// Descriptor for `InnerHandshakeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innerHandshakeResponseDescriptor = $convert.base64Decode('ChZJbm5lckhhbmRzaGFrZVJlc3BvbnNlEhIKBENvZGUYASABKA1SBENvZGUSFAoFRXJyb3IYAiABKAlSBUVycm9y');
