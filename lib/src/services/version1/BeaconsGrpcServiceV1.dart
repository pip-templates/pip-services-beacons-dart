import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_grpc/pip_services3_grpc.dart';

import '../../generated/beacons_v1.pbgrpc.dart';
import '../../logic/IBeaconsController.dart';
import '../../clients/version1/BeaconsGrpcConverterV1.dart';

class BeaconsGrpcServiceV1 extends BeaconsServiceBase with GrpcService {
  IBeaconsController _controller;

  BeaconsGrpcServiceV1() {
    serviceName = $name;
    dependencyResolver.put(
        'controller', Descriptor('beacons', 'controller', '*', '*', '*'));
  }
  @override
  void setReferences(IReferences references) {
    super.setReferences(references);
    _controller =
        dependencyResolver.getOneRequired<IBeaconsController>('controller');
  }

  @override
  void register() {
    registerService(this);
  }

  @override
  Future<BeaconsPositionReply> calculate_position(
      ServiceCall call, BeaconsPositionRequest request) async {
    var correlationId = request.correlationId;
    var siteId = request.siteId;
    var udis = request.udis;
    var response = BeaconsPositionReply();
    try {
      var result =
          await _controller.calculatePosition(correlationId, siteId, udis);

      response.position = BeaconsGrpcConverterV1.fromPoint(result);
    } catch (err) {
      var error = BeaconsGrpcConverterV1.fromError(err);
      response.error = error;
    }
    return response;
  }

  @override
  Future<BeaconReply> create_beacon(
      ServiceCall call, BeaconRequest request) async {
    var correlationId = request.correlationId;
    var beacon = BeaconsGrpcConverterV1.toBeacon(request.beacon);
    var response = BeaconReply();
    try {
      var result = await _controller.createBeacon(correlationId, beacon);
      response.beacon = BeaconsGrpcConverterV1.fromBeacon(result);
    } catch (err) {
      var error = BeaconsGrpcConverterV1.fromError(err);
      response.error = error;
    }
    return response;
  }

  @override
  Future<BeaconReply> delete_beacon_by_id(
      ServiceCall call, BeaconIdRequest request) async {
    var correlationId = request.correlationId;
    var id = request.beaconId;
    var response = BeaconReply();
    try {
      var result = await _controller.deleteBeaconById(correlationId, id);
      response.beacon = BeaconsGrpcConverterV1.fromBeacon(result);
    } catch (err) {
      var error = BeaconsGrpcConverterV1.fromError(err);
      response.error = error;
    }
    return response;
  }

  @override
  Future<BeaconReply> get_beacon_by_id(
      ServiceCall call, BeaconIdRequest request) async {
    var correlationId = request.correlationId;
    var id = request.beaconId;
    var response = BeaconReply();
    try {
      var result = await _controller.getBeaconById(correlationId, id);
      response.beacon = BeaconsGrpcConverterV1.fromBeacon(result);
    } catch (err) {
      var error = BeaconsGrpcConverterV1.fromError(err);
      response.error = error;
    }
    return response;
  }

  @override
  Future<BeaconReply> get_beacon_by_udi(
      ServiceCall call, BeaconUdiRequest request) async {
    var correlationId = request.correlationId;
    var udi = request.udi;
    var response = BeaconReply();
    try {
      var result = await _controller.getBeaconByUdi(correlationId, udi);
      response.beacon = BeaconsGrpcConverterV1.fromBeacon(result);
    } catch (err) {
      var error = BeaconsGrpcConverterV1.fromError(err);
      response.error = error;
    }
    return response;
  }

  @override
  Future<BeaconsPageReply> get_beacons(
      ServiceCall call, BeaconsPageRequest request) async {
    var correlationId = request.correlationId;
    var filter = FilterParams(request.filter);
    var paging = BeaconsGrpcConverterV1.toPagingParams(request.paging);
    var response = BeaconsPageReply();
    try {
      var result = await _controller.getBeacons(correlationId, filter, paging);
      response.page = BeaconsGrpcConverterV1.fromBeaconsPage(result);
    } catch (err) {
      var error = BeaconsGrpcConverterV1.fromError(err);
      response.error = error;
    }
    return response;
  }

  @override
  Future<BeaconReply> update_beacon(
      ServiceCall call, BeaconRequest request) async {
    var correlationId = request.correlationId;
    var beacon = BeaconsGrpcConverterV1.toBeacon(request.beacon);
    var response = BeaconReply();
    try {
      var result = await _controller.updateBeacon(correlationId, beacon);
      response.beacon = BeaconsGrpcConverterV1.fromBeacon(result);
    } catch (err) {
      var error = BeaconsGrpcConverterV1.fromError(err);
      response.error = error;
    }
    return response;
  }
}
