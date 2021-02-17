///
//  Generated code. Do not modify.
//  source: beacons_v1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use errorDescriptionDescriptor instead')
const ErrorDescription$json = const {
  '1': 'ErrorDescription',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'category', '3': 2, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'correlation_id', '3': 4, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'cause', '3': 7, '4': 1, '5': 9, '10': 'cause'},
    const {'1': 'stack_trace', '3': 8, '4': 1, '5': 9, '10': 'stackTrace'},
    const {'1': 'details', '3': 9, '4': 3, '5': 11, '6': '.beacons_v1.ErrorDescription.DetailsEntry', '10': 'details'},
  ],
  '3': const [ErrorDescription_DetailsEntry$json],
};

@$core.Deprecated('Use errorDescriptionDescriptor instead')
const ErrorDescription_DetailsEntry$json = const {
  '1': 'DetailsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ErrorDescription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptionDescriptor = $convert.base64Decode('ChBFcnJvckRlc2NyaXB0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSGgoIY2F0ZWdvcnkYAiABKAlSCGNhdGVnb3J5EhIKBGNvZGUYAyABKAlSBGNvZGUSJQoOY29ycmVsYXRpb25faWQYBCABKAlSDWNvcnJlbGF0aW9uSWQSFgoGc3RhdHVzGAUgASgJUgZzdGF0dXMSGAoHbWVzc2FnZRgGIAEoCVIHbWVzc2FnZRIUCgVjYXVzZRgHIAEoCVIFY2F1c2USHwoLc3RhY2tfdHJhY2UYCCABKAlSCnN0YWNrVHJhY2USQwoHZGV0YWlscxgJIAMoCzIpLmJlYWNvbnNfdjEuRXJyb3JEZXNjcmlwdGlvbi5EZXRhaWxzRW50cnlSB2RldGFpbHMaOgoMRGV0YWlsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use pagingParamsDescriptor instead')
const PagingParams$json = const {
  '1': 'PagingParams',
  '2': const [
    const {'1': 'skip', '3': 1, '4': 1, '5': 3, '10': 'skip'},
    const {'1': 'take', '3': 2, '4': 1, '5': 5, '10': 'take'},
    const {'1': 'total', '3': 3, '4': 1, '5': 8, '10': 'total'},
  ],
};

/// Descriptor for `PagingParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pagingParamsDescriptor = $convert.base64Decode('CgxQYWdpbmdQYXJhbXMSEgoEc2tpcBgBIAEoA1IEc2tpcBISCgR0YWtlGAIgASgFUgR0YWtlEhQKBXRvdGFsGAMgASgIUgV0b3RhbA==');
@$core.Deprecated('Use pointDescriptor instead')
const Point$json = const {
  '1': 'Point',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'coordinates', '3': 2, '4': 3, '5': 1, '10': 'coordinates'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode('CgVQb2ludBISCgR0eXBlGAEgASgJUgR0eXBlEiAKC2Nvb3JkaW5hdGVzGAIgAygBUgtjb29yZGluYXRlcw==');
@$core.Deprecated('Use beaconDescriptor instead')
const Beacon$json = const {
  '1': 'Beacon',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'site_id', '3': 2, '4': 1, '5': 9, '10': 'siteId'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'udi', '3': 4, '4': 1, '5': 9, '10': 'udi'},
    const {'1': 'label', '3': 5, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'center', '3': 6, '4': 1, '5': 11, '6': '.beacons_v1.Point', '10': 'center'},
    const {'1': 'radius', '3': 7, '4': 1, '5': 1, '10': 'radius'},
  ],
};

/// Descriptor for `Beacon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconDescriptor = $convert.base64Decode('CgZCZWFjb24SDgoCaWQYASABKAlSAmlkEhcKB3NpdGVfaWQYAiABKAlSBnNpdGVJZBISCgR0eXBlGAMgASgJUgR0eXBlEhAKA3VkaRgEIAEoCVIDdWRpEhQKBWxhYmVsGAUgASgJUgVsYWJlbBIpCgZjZW50ZXIYBiABKAsyES5iZWFjb25zX3YxLlBvaW50UgZjZW50ZXISFgoGcmFkaXVzGAcgASgBUgZyYWRpdXM=');
@$core.Deprecated('Use beaconsPageDescriptor instead')
const BeaconsPage$json = const {
  '1': 'BeaconsPage',
  '2': const [
    const {'1': 'total', '3': 1, '4': 1, '5': 3, '10': 'total'},
    const {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.beacons_v1.Beacon', '10': 'data'},
  ],
};

/// Descriptor for `BeaconsPage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconsPageDescriptor = $convert.base64Decode('CgtCZWFjb25zUGFnZRIUCgV0b3RhbBgBIAEoA1IFdG90YWwSJgoEZGF0YRgCIAMoCzISLmJlYWNvbnNfdjEuQmVhY29uUgRkYXRh');
@$core.Deprecated('Use beaconsPageRequestDescriptor instead')
const BeaconsPageRequest$json = const {
  '1': 'BeaconsPageRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'filter', '3': 2, '4': 3, '5': 11, '6': '.beacons_v1.BeaconsPageRequest.FilterEntry', '10': 'filter'},
    const {'1': 'paging', '3': 3, '4': 1, '5': 11, '6': '.beacons_v1.PagingParams', '10': 'paging'},
  ],
  '3': const [BeaconsPageRequest_FilterEntry$json],
};

@$core.Deprecated('Use beaconsPageRequestDescriptor instead')
const BeaconsPageRequest_FilterEntry$json = const {
  '1': 'FilterEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `BeaconsPageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconsPageRequestDescriptor = $convert.base64Decode('ChJCZWFjb25zUGFnZVJlcXVlc3QSJQoOY29ycmVsYXRpb25faWQYASABKAlSDWNvcnJlbGF0aW9uSWQSQgoGZmlsdGVyGAIgAygLMiouYmVhY29uc192MS5CZWFjb25zUGFnZVJlcXVlc3QuRmlsdGVyRW50cnlSBmZpbHRlchIwCgZwYWdpbmcYAyABKAsyGC5iZWFjb25zX3YxLlBhZ2luZ1BhcmFtc1IGcGFnaW5nGjkKC0ZpbHRlckVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use beaconsPageReplyDescriptor instead')
const BeaconsPageReply$json = const {
  '1': 'BeaconsPageReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.beacons_v1.ErrorDescription', '10': 'error'},
    const {'1': 'page', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.BeaconsPage', '10': 'page'},
  ],
};

/// Descriptor for `BeaconsPageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconsPageReplyDescriptor = $convert.base64Decode('ChBCZWFjb25zUGFnZVJlcGx5EjIKBWVycm9yGAEgASgLMhwuYmVhY29uc192MS5FcnJvckRlc2NyaXB0aW9uUgVlcnJvchIrCgRwYWdlGAIgASgLMhcuYmVhY29uc192MS5CZWFjb25zUGFnZVIEcGFnZQ==');
@$core.Deprecated('Use beaconIdRequestDescriptor instead')
const BeaconIdRequest$json = const {
  '1': 'BeaconIdRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'beacon_id', '3': 2, '4': 1, '5': 9, '10': 'beaconId'},
  ],
};

/// Descriptor for `BeaconIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconIdRequestDescriptor = $convert.base64Decode('Cg9CZWFjb25JZFJlcXVlc3QSJQoOY29ycmVsYXRpb25faWQYASABKAlSDWNvcnJlbGF0aW9uSWQSGwoJYmVhY29uX2lkGAIgASgJUghiZWFjb25JZA==');
@$core.Deprecated('Use beaconReplyDescriptor instead')
const BeaconReply$json = const {
  '1': 'BeaconReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.beacons_v1.ErrorDescription', '10': 'error'},
    const {'1': 'beacon', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.Beacon', '10': 'beacon'},
  ],
};

/// Descriptor for `BeaconReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconReplyDescriptor = $convert.base64Decode('CgtCZWFjb25SZXBseRIyCgVlcnJvchgBIAEoCzIcLmJlYWNvbnNfdjEuRXJyb3JEZXNjcmlwdGlvblIFZXJyb3ISKgoGYmVhY29uGAIgASgLMhIuYmVhY29uc192MS5CZWFjb25SBmJlYWNvbg==');
@$core.Deprecated('Use beaconUdiRequestDescriptor instead')
const BeaconUdiRequest$json = const {
  '1': 'BeaconUdiRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'udi', '3': 2, '4': 1, '5': 9, '10': 'udi'},
  ],
};

/// Descriptor for `BeaconUdiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconUdiRequestDescriptor = $convert.base64Decode('ChBCZWFjb25VZGlSZXF1ZXN0EiUKDmNvcnJlbGF0aW9uX2lkGAEgASgJUg1jb3JyZWxhdGlvbklkEhAKA3VkaRgCIAEoCVIDdWRp');
@$core.Deprecated('Use beaconsPositionRequestDescriptor instead')
const BeaconsPositionRequest$json = const {
  '1': 'BeaconsPositionRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'site_id', '3': 2, '4': 1, '5': 9, '10': 'siteId'},
    const {'1': 'udis', '3': 3, '4': 3, '5': 9, '10': 'udis'},
  ],
};

/// Descriptor for `BeaconsPositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconsPositionRequestDescriptor = $convert.base64Decode('ChZCZWFjb25zUG9zaXRpb25SZXF1ZXN0EiUKDmNvcnJlbGF0aW9uX2lkGAEgASgJUg1jb3JyZWxhdGlvbklkEhcKB3NpdGVfaWQYAiABKAlSBnNpdGVJZBISCgR1ZGlzGAMgAygJUgR1ZGlz');
@$core.Deprecated('Use beaconsPositionReplyDescriptor instead')
const BeaconsPositionReply$json = const {
  '1': 'BeaconsPositionReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.beacons_v1.ErrorDescription', '10': 'error'},
    const {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.Point', '10': 'position'},
  ],
};

/// Descriptor for `BeaconsPositionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconsPositionReplyDescriptor = $convert.base64Decode('ChRCZWFjb25zUG9zaXRpb25SZXBseRIyCgVlcnJvchgBIAEoCzIcLmJlYWNvbnNfdjEuRXJyb3JEZXNjcmlwdGlvblIFZXJyb3ISLQoIcG9zaXRpb24YAiABKAsyES5iZWFjb25zX3YxLlBvaW50Ughwb3NpdGlvbg==');
@$core.Deprecated('Use beaconRequestDescriptor instead')
const BeaconRequest$json = const {
  '1': 'BeaconRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'beacon', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.Beacon', '10': 'beacon'},
  ],
};

/// Descriptor for `BeaconRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beaconRequestDescriptor = $convert.base64Decode('Cg1CZWFjb25SZXF1ZXN0EiUKDmNvcnJlbGF0aW9uX2lkGAEgASgJUg1jb3JyZWxhdGlvbklkEioKBmJlYWNvbhgCIAEoCzISLmJlYWNvbnNfdjEuQmVhY29uUgZiZWFjb24=');
