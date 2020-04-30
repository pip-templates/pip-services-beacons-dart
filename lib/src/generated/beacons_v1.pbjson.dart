///
//  Generated code. Do not modify.
//  source: beacons_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

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

const ErrorDescription_DetailsEntry$json = const {
  '1': 'DetailsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const PagingParams$json = const {
  '1': 'PagingParams',
  '2': const [
    const {'1': 'skip', '3': 1, '4': 1, '5': 3, '10': 'skip'},
    const {'1': 'take', '3': 2, '4': 1, '5': 5, '10': 'take'},
    const {'1': 'total', '3': 3, '4': 1, '5': 8, '10': 'total'},
  ],
};

const Point$json = const {
  '1': 'Point',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'coordinates', '3': 2, '4': 3, '5': 1, '10': 'coordinates'},
  ],
};

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

const BeaconsPage$json = const {
  '1': 'BeaconsPage',
  '2': const [
    const {'1': 'total', '3': 1, '4': 1, '5': 3, '10': 'total'},
    const {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.beacons_v1.Beacon', '10': 'data'},
  ],
};

const BeaconsPageRequest$json = const {
  '1': 'BeaconsPageRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'filter', '3': 2, '4': 3, '5': 11, '6': '.beacons_v1.BeaconsPageRequest.FilterEntry', '10': 'filter'},
    const {'1': 'paging', '3': 3, '4': 1, '5': 11, '6': '.beacons_v1.PagingParams', '10': 'paging'},
  ],
  '3': const [BeaconsPageRequest_FilterEntry$json],
};

const BeaconsPageRequest_FilterEntry$json = const {
  '1': 'FilterEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const BeaconsPageReply$json = const {
  '1': 'BeaconsPageReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.beacons_v1.ErrorDescription', '10': 'error'},
    const {'1': 'page', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.BeaconsPage', '10': 'page'},
  ],
};

const BeaconIdRequest$json = const {
  '1': 'BeaconIdRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'beacon_id', '3': 2, '4': 1, '5': 9, '10': 'beaconId'},
  ],
};

const BeaconReply$json = const {
  '1': 'BeaconReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.beacons_v1.ErrorDescription', '10': 'error'},
    const {'1': 'beacon', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.Beacon', '10': 'beacon'},
  ],
};

const BeaconUdiRequest$json = const {
  '1': 'BeaconUdiRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'udi', '3': 2, '4': 1, '5': 9, '10': 'udi'},
  ],
};

const BeaconsPositionRequest$json = const {
  '1': 'BeaconsPositionRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'site_id', '3': 2, '4': 1, '5': 9, '10': 'siteId'},
    const {'1': 'udis', '3': 3, '4': 3, '5': 9, '10': 'udis'},
  ],
};

const BeaconsPositionReply$json = const {
  '1': 'BeaconsPositionReply',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.beacons_v1.ErrorDescription', '10': 'error'},
    const {'1': 'position', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.Point', '10': 'position'},
  ],
};

const BeaconRequest$json = const {
  '1': 'BeaconRequest',
  '2': const [
    const {'1': 'correlation_id', '3': 1, '4': 1, '5': 9, '10': 'correlationId'},
    const {'1': 'beacon', '3': 2, '4': 1, '5': 11, '6': '.beacons_v1.Beacon', '10': 'beacon'},
  ],
};

