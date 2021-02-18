import 'dart:async';
import 'dart:convert';

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_commons/src/data/PagingParams.dart';
import 'package:pip_services3_commons/src/data/FilterParams.dart';
import 'package:pip_services3_commons/src/data/DataPage.dart';
import 'package:pip_services3_rpc/pip_services3_rpc.dart';

import '../../data/version1/BeaconV1.dart';

import 'IBeaconsClientV1.dart';

class BeaconsRestClientV1 extends RestClient implements IBeaconsClientV1 {
  BeaconsRestClientV1([config]) : super() {
    baseRoute = 'v1/beacons';
    if (config != null) {
      configure(ConfigParams.fromValue(config));
    }
  }

  @override
  void configure(ConfigParams config) {
    super.configure(config);
  }

  @override
  Future<DataPage<BeaconV1>> getBeacons(
      String correlationId, FilterParams filter, PagingParams paging) async {
    var time = instrument(correlationId, 'beacons.get_beacons');

    var params = <String, String>{
      'beacons': '{filter: ' +
          filter.toString() +
          ', paging: ' +
          paging.toString() +
          '}'
    };
    try {
      var response =
          json.decode(await call('get', '/beacons', correlationId, params));

      var dataPage = DataPage<BeaconV1>(
          response['data']
              .map<BeaconV1>((f) => BeaconV1().fromJson(f))
              .toList(),
          response['total']);

      return dataPage;
    } finally {
      time.endTiming();
    }
  }

  @override
  Future<Map<String, dynamic>> calculatePosition(
      String correlationId, String siteId, List<String> udis) async {
    var time = instrument(correlationId, 'beacons.calculate_position');
    try {
      var udiStr = udis.reduce((value, element) => value + ',' + element);
      var response = await call('get',
          '/beacons/calculate_position/$siteId/$udiStr', correlationId, null);
      return json.decode(response);
    } finally {
      time.endTiming();
    }
  }

  @override
  Future<BeaconV1> createBeacon(String correlationId, BeaconV1 beacon) async {
    var time = instrument(correlationId, 'beacons.create_beacon');
    try {
      var response = await call(
          'post', '/beacons', correlationId, null, {'beacon': beacon});
      if (response != null) {
        var beacon = BeaconV1().fromJson(json.decode(response));
        return beacon;
      }
      return null;
    } finally {
      time.endTiming();
    }
  }

  @override
  Future<BeaconV1> updateBeacon(String correlationId, BeaconV1 beacon) async {
    var time = instrument(correlationId, 'beacons.update_beacon');
    try {
      var response = await call(
          'put', '/beacons', correlationId, null, {'beacon': beacon});
      if (response != null) {
        var beacon = BeaconV1().fromJson(json.decode(response));
        return beacon;
      }
      return null;
    } finally {
      time.endTiming();
    }
  }

  @override
  Future<BeaconV1> getBeaconById(String correlationId, String beaconId) async {
    var time = instrument(correlationId, 'beacons.get_beacon_by_id');
    try {
      var response =
          await call('get', '/beacons/$beaconId', correlationId, null);

      if (response != null) {
        var beacon = BeaconV1().fromJson(json.decode(response));
        return beacon;
      }
      return null;
    } finally {
      time.endTiming();
    }
  }

  @override
  Future<BeaconV1> getBeaconByUdi(String correlationId, String udi) async {
    var time = instrument(correlationId, 'beacons.get_beacon_by_udi');
    try {
      var response =
          await call('get', '/beacons/udi/$udi', correlationId, null);

      if (response != null) {
        var beacon = BeaconV1().fromJson(json.decode(response));
        return beacon;
      }
      return null;
    } finally {
      time.endTiming();
    }
  }

  @override
  Future<BeaconV1> deleteBeaconById(
      String correlationId, String beaconId) async {
    var time = instrument(correlationId, 'beacons.delete_beacon_by_id');
    try {
      var response =
          await call('delete', '/beacons/$beaconId', correlationId, null);
      if (response != null) {
        var beacon = BeaconV1().fromJson(json.decode(response));
        return beacon;
      }
      return null;
    } finally {
      time.endTiming();
    }
  }
}
