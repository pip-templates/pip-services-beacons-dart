import 'dart:async';

import 'package:angel_framework/angel_framework.dart' as angel;
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_rpc/pip_services3_rpc.dart';

import '../../logic/IBeaconsController.dart';
import '../../data/version1/BeaconV1.dart';

class BeaconsRestServiceV1 extends RestService {
  IBeaconsController _controller;

  BeaconsRestServiceV1() : super() {
    baseRoute = 'v1/beacons';
    dependencyResolver.put(
        'controller', Descriptor('beacons', 'controller', 'default', '*', '*'));
  }
  @override
  void setReferences(IReferences references) {
    super.setReferences(references);
    _controller =
        dependencyResolver.getOneRequired<IBeaconsController>('controller');
  }

  Future<void> getBeacons(
      angel.RequestContext req, angel.ResponseContext res) async {
    var filter = FilterParams();
    var paging = PagingParams();

    if (req.params['filter'] != null) filter.fromJson(req.params['filter']);
    if (req.params['paging'] != null) paging.fromJson(req.params['paging']);

    try {
      var page = await _controller.getBeacons(null, filter, paging);
      HttpResponseSender.sendResult(req, res, null, page);
    } catch (err) {
      HttpResponseSender.sendError(req, res, err);
    }
  }

  Future<void> getBeaconById(
      angel.RequestContext req, angel.ResponseContext res) async {
    var id = req.params['id'];
    try {
      var result = await _controller.getBeaconById(null, id);
      HttpResponseSender.sendResult(req, res, null, result);
    } catch (err) {
      HttpResponseSender.sendError(req, res, err);
    }
  }

  Future<void> getBeaconByUdi(
      angel.RequestContext req, angel.ResponseContext res) async {
    var udi = req.params['udi'];
    try {
      var result = await _controller.getBeaconByUdi(null, udi);
      HttpResponseSender.sendResult(req, res, null, result);
    } catch (err) {
      HttpResponseSender.sendError(req, res, err);
    }
  }

  Future<void> createBeacon(
      angel.RequestContext req, angel.ResponseContext res) async {
    await req.parseBody();
    var beacon = BeaconV1();
    beacon.fromJson(req.bodyAsMap['beacon']);

    try {
      var result = await _controller.createBeacon(null, beacon);
      HttpResponseSender.sendResult(req, res, null, result);
    } catch (err) {
      HttpResponseSender.sendError(req, res, err);
    }
  }

  Future<void> updateBeacon(
      angel.RequestContext req, angel.ResponseContext res) async {
    await req.parseBody();
    var beacon = BeaconV1().fromJson(req.bodyAsMap['beacon']);

    try {
      var result = await _controller.updateBeacon(null, beacon);
      HttpResponseSender.sendResult(req, res, null, result);
    } catch (err) {
      HttpResponseSender.sendError(req, res, err);
    }
  }

  Future<void> deleteBeaconById(
      angel.RequestContext req, angel.ResponseContext res) async {
    var id = req.params['id'];

    try {
      var result = await _controller.deleteBeaconById(null, id);
      HttpResponseSender.sendResult(req, res, null, result);
    } catch (err) {
      HttpResponseSender.sendError(req, res, err);
    }
  }

  Future<void> calculatePosition(
      angel.RequestContext req, angel.ResponseContext res) async {
    var siteId = req.params['site_id'];
    var udis = req.params['udis'];

    if (udis is String) udis = udis.split(',');
    if (udis is! List) {
      udis = null;
    } else {
      udis = udis.cast<String>();
    }

    try {
      var result = await _controller.calculatePosition(null, siteId, udis);
      HttpResponseSender.sendResult(req, res, null, result);
    } catch (err) {
      HttpResponseSender.sendError(req, res, err);
    }
  }

  @override
  void register() {
    registerRoute('get', '/beacons', null, getBeacons);
    registerRoute('get', '/beacons/:id', null, getBeaconById);
    registerRoute('get', '/beacons/udi/:udi', null, getBeaconByUdi);
    registerRoute('get', '/beacons/calculate_position/:site_id/:udis', null,
        calculatePosition);
    registerRoute('post', '/beacons', null, createBeacon);
    registerRoute('put', '/beacons', null, updateBeacon);
    registerRoute('del', '/beacons/:id', null, deleteBeaconById);
  }
}
