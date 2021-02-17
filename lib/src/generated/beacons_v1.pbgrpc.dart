///
//  Generated code. Do not modify.
//  source: beacons_v1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'beacons_v1.pb.dart' as $0;
export 'beacons_v1.pb.dart';

class BeaconsClient extends $grpc.Client {
  static final _$get_beacons =
      $grpc.ClientMethod<$0.BeaconsPageRequest, $0.BeaconsPageReply>(
          '/beacons_v1.Beacons/get_beacons',
          ($0.BeaconsPageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BeaconsPageReply.fromBuffer(value));
  static final _$get_beacon_by_id =
      $grpc.ClientMethod<$0.BeaconIdRequest, $0.BeaconReply>(
          '/beacons_v1.Beacons/get_beacon_by_id',
          ($0.BeaconIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BeaconReply.fromBuffer(value));
  static final _$get_beacon_by_udi =
      $grpc.ClientMethod<$0.BeaconUdiRequest, $0.BeaconReply>(
          '/beacons_v1.Beacons/get_beacon_by_udi',
          ($0.BeaconUdiRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BeaconReply.fromBuffer(value));
  static final _$calculate_position =
      $grpc.ClientMethod<$0.BeaconsPositionRequest, $0.BeaconsPositionReply>(
          '/beacons_v1.Beacons/calculate_position',
          ($0.BeaconsPositionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BeaconsPositionReply.fromBuffer(value));
  static final _$create_beacon =
      $grpc.ClientMethod<$0.BeaconRequest, $0.BeaconReply>(
          '/beacons_v1.Beacons/create_beacon',
          ($0.BeaconRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BeaconReply.fromBuffer(value));
  static final _$update_beacon =
      $grpc.ClientMethod<$0.BeaconRequest, $0.BeaconReply>(
          '/beacons_v1.Beacons/update_beacon',
          ($0.BeaconRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BeaconReply.fromBuffer(value));
  static final _$delete_beacon_by_id =
      $grpc.ClientMethod<$0.BeaconIdRequest, $0.BeaconReply>(
          '/beacons_v1.Beacons/delete_beacon_by_id',
          ($0.BeaconIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BeaconReply.fromBuffer(value));

  BeaconsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.BeaconsPageReply> get_beacons(
      $0.BeaconsPageRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_beacons, request, options: options);
  }

  $grpc.ResponseFuture<$0.BeaconReply> get_beacon_by_id(
      $0.BeaconIdRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_beacon_by_id, request, options: options);
  }

  $grpc.ResponseFuture<$0.BeaconReply> get_beacon_by_udi(
      $0.BeaconUdiRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$get_beacon_by_udi, request, options: options);
  }

  $grpc.ResponseFuture<$0.BeaconsPositionReply> calculate_position(
      $0.BeaconsPositionRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$calculate_position, request, options: options);
  }

  $grpc.ResponseFuture<$0.BeaconReply> create_beacon($0.BeaconRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$create_beacon, request, options: options);
  }

  $grpc.ResponseFuture<$0.BeaconReply> update_beacon($0.BeaconRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$update_beacon, request, options: options);
  }

  $grpc.ResponseFuture<$0.BeaconReply> delete_beacon_by_id(
      $0.BeaconIdRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$delete_beacon_by_id, request, options: options);
  }
}

abstract class BeaconsServiceBase extends $grpc.Service {
  $core.String get $name => 'beacons_v1.Beacons';

  BeaconsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BeaconsPageRequest, $0.BeaconsPageReply>(
        'get_beacons',
        get_beacons_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BeaconsPageRequest.fromBuffer(value),
        ($0.BeaconsPageReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BeaconIdRequest, $0.BeaconReply>(
        'get_beacon_by_id',
        get_beacon_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BeaconIdRequest.fromBuffer(value),
        ($0.BeaconReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BeaconUdiRequest, $0.BeaconReply>(
        'get_beacon_by_udi',
        get_beacon_by_udi_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BeaconUdiRequest.fromBuffer(value),
        ($0.BeaconReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.BeaconsPositionRequest, $0.BeaconsPositionReply>(
            'calculate_position',
            calculate_position_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.BeaconsPositionRequest.fromBuffer(value),
            ($0.BeaconsPositionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BeaconRequest, $0.BeaconReply>(
        'create_beacon',
        create_beacon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BeaconRequest.fromBuffer(value),
        ($0.BeaconReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BeaconRequest, $0.BeaconReply>(
        'update_beacon',
        update_beacon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BeaconRequest.fromBuffer(value),
        ($0.BeaconReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BeaconIdRequest, $0.BeaconReply>(
        'delete_beacon_by_id',
        delete_beacon_by_id_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BeaconIdRequest.fromBuffer(value),
        ($0.BeaconReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.BeaconsPageReply> get_beacons_Pre($grpc.ServiceCall call,
      $async.Future<$0.BeaconsPageRequest> request) async {
    return get_beacons(call, await request);
  }

  $async.Future<$0.BeaconReply> get_beacon_by_id_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BeaconIdRequest> request) async {
    return get_beacon_by_id(call, await request);
  }

  $async.Future<$0.BeaconReply> get_beacon_by_udi_Pre($grpc.ServiceCall call,
      $async.Future<$0.BeaconUdiRequest> request) async {
    return get_beacon_by_udi(call, await request);
  }

  $async.Future<$0.BeaconsPositionReply> calculate_position_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BeaconsPositionRequest> request) async {
    return calculate_position(call, await request);
  }

  $async.Future<$0.BeaconReply> create_beacon_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BeaconRequest> request) async {
    return create_beacon(call, await request);
  }

  $async.Future<$0.BeaconReply> update_beacon_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BeaconRequest> request) async {
    return update_beacon(call, await request);
  }

  $async.Future<$0.BeaconReply> delete_beacon_by_id_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BeaconIdRequest> request) async {
    return delete_beacon_by_id(call, await request);
  }

  $async.Future<$0.BeaconsPageReply> get_beacons(
      $grpc.ServiceCall call, $0.BeaconsPageRequest request);
  $async.Future<$0.BeaconReply> get_beacon_by_id(
      $grpc.ServiceCall call, $0.BeaconIdRequest request);
  $async.Future<$0.BeaconReply> get_beacon_by_udi(
      $grpc.ServiceCall call, $0.BeaconUdiRequest request);
  $async.Future<$0.BeaconsPositionReply> calculate_position(
      $grpc.ServiceCall call, $0.BeaconsPositionRequest request);
  $async.Future<$0.BeaconReply> create_beacon(
      $grpc.ServiceCall call, $0.BeaconRequest request);
  $async.Future<$0.BeaconReply> update_beacon(
      $grpc.ServiceCall call, $0.BeaconRequest request);
  $async.Future<$0.BeaconReply> delete_beacon_by_id(
      $grpc.ServiceCall call, $0.BeaconIdRequest request);
}
