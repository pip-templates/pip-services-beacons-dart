import 'dart:async';

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_grpc/pip_services3_grpc.dart';

import '../../generated/beacons_v1.pb.dart' as messages;

import './IBeaconsClientV1.dart';
import '../../data/version1/BeaconV1.dart';
import './BeaconsGrpcConverterV1.dart';

class BeaconsGrpcClientV1 extends GrpcClient implements IBeaconsClientV1 {
  BeaconsGrpcClientV1() : super('beacons_v1.Beacons');

  @override
  Future<DataPage<BeaconV1>> getBeacons(
      String correlationId, FilterParams filter, PagingParams paging) async {
    var request = messages.BeaconsPageRequest();
    request.filter.addAll(filter.innerValue());
    request.paging = BeaconsGrpcConverterV1.fromPagingParams(paging);
    var timing = instrument(correlationId, 'beacons.get_beacons');
    var response =
        await call<messages.BeaconsPageRequest, messages.BeaconsPageReply>(
            'get_beacons', correlationId, request);
    timing.endTiming();
    return response != null
        ? BeaconsGrpcConverterV1.toBeaconsPage(response.page)
        : null;
  }

  @override
  Future<BeaconV1> getBeaconById(String correlationId, String beaconId) async {
    var request = messages.BeaconIdRequest();
    request.beaconId = beaconId;
    var timing = instrument(correlationId, 'beacons.get_beacon_by_id');
    var response = await call<messages.BeaconIdRequest, messages.BeaconReply>(
        'get_beacon_by_id', correlationId, request);
    timing.endTiming();
    if (response != null &&
        response.beacon.id == '' &&
        response.beacon.siteId == '' &&
        response.beacon.udi == '') {
      return null;
    }
    return response != null
        ? BeaconsGrpcConverterV1.toBeacon(response.beacon)
        : null;
  }

  @override
  Future<BeaconV1> getBeaconByUdi(String correlationId, String udi) async {
    var request = messages.BeaconUdiRequest();
    request.udi = udi;
    var timing = instrument(correlationId, 'beacons.get_beacon_by_udi');
    var response = await call<messages.BeaconUdiRequest, messages.BeaconReply>(
        'get_beacon_by_udi', correlationId, request);
    timing.endTiming();
    if (response != null &&
        response.beacon.id == '' &&
        response.beacon.siteId == '' &&
        response.beacon.udi == '') {
      return null;
    }
    return response != null
        ? BeaconsGrpcConverterV1.toBeacon(response.beacon)
        : null;
  }

  @override
  Future<Map<String, dynamic>> calculatePosition(
      String correlationId, String siteId, List<String> udis) async {
    var request = messages.BeaconsPositionRequest();
    request.udis.addAll(udis);
    request.siteId = siteId;
    var timing = instrument(correlationId, 'beacons.calculate_position');
    var response = await call<messages.BeaconsPositionRequest, messages.BeaconsPositionReply>(
        'calculate_position', correlationId, request);
    timing.endTiming();
    return response != null ? BeaconsGrpcConverterV1.toPoint(response.position) : null;
  }

  @override
  Future<BeaconV1> createBeacon(String correlationId, BeaconV1 beacon) async {
    var request = messages.BeaconRequest();
    request.beacon = BeaconsGrpcConverterV1.fromBeacon(beacon);
    var timing = instrument(correlationId, 'beacons.create_beacon');
    var response = await call<messages.BeaconRequest, messages.BeaconReply>(
        'create_beacon', correlationId, request);
    timing.endTiming();
    if (response != null &&
        response.beacon.id == '' &&
        response.beacon.siteId == '' &&
        response.beacon.udi == '') {
      return null;
    }
    return response != null
        ? BeaconsGrpcConverterV1.toBeacon(response.beacon)
        : null;
  }

  @override
  Future<BeaconV1> updateBeacon(String correlationId, BeaconV1 beacon) async {
    var request = messages.BeaconRequest();
    request.beacon = BeaconsGrpcConverterV1.fromBeacon(beacon);
    var timing = instrument(correlationId, 'beacons.update_beacon');
    var response = await call<messages.BeaconRequest, messages.BeaconReply>(
        'update_beacon', correlationId, request);
    timing.endTiming();
    if (response != null &&
        response.beacon.id == '' &&
        response.beacon.siteId == '' &&
        response.beacon.udi == '') {
      return null;
    }
    return response != null
        ? BeaconsGrpcConverterV1.toBeacon(response.beacon)
        : null;
  }

  @override
  Future<BeaconV1> deleteBeaconById(
      String correlationId, String beaconId) async {
    var request = messages.BeaconIdRequest();
    request.beaconId = beaconId;
    var timing = instrument(correlationId, 'beacons.delete_beacon_by_id');
    var response = await call<messages.BeaconIdRequest, messages.BeaconReply>(
        'delete_beacon_by_id', correlationId, request);
    timing.endTiming();
    if (response != null &&
        response.beacon.id == '' &&
        response.beacon.siteId == '' &&
        response.beacon.udi == '') {
      return null;
    }
    return response != null
        ? BeaconsGrpcConverterV1.toBeacon(response.beacon)
        : null;
  }
}
