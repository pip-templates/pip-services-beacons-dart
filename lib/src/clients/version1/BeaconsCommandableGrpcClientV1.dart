import 'dart:async';

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_grpc/pip_services3_grpc.dart';

import '../../data/version1/BeaconV1.dart';
import './IBeaconsClientV1.dart';

class BeaconsCommandableGrpcClientV1 extends CommandableGrpcClient
    implements IBeaconsClientV1 {
  BeaconsCommandableGrpcClientV1([ConfigParams config]) : super('v1.beacons') {
    if (config != null) {
      configure(ConfigParams.fromValue(config));
    }
  }

  @override
  Future<DataPage<BeaconV1>> getBeacons(
      String correlationId, FilterParams filter, PagingParams paging) async {
    var response = await callCommand(
        'get_beacons', correlationId, {'filter': filter, 'paging': paging});
    if (response == null) {
      return null;
    }

    return DataPage<BeaconV1>.fromJson(response, (item) {
      var beacon = BeaconV1();
      beacon.fromJson(item);
      return beacon;
    });
  }

  @override
  Future<BeaconV1> getBeaconById(String correlationId, String beaconId) async {
    var response = await callCommand(
        'get_beacon_by_id', correlationId, {'beacon_id': beaconId});
    if (response == null) {
      return null;
    }
    var item = BeaconV1();
    item.fromJson(response);
    return item;
  }

  @override
  Future<BeaconV1> getBeaconByUdi(String correlationId, String udi) async {
    var response =
        await callCommand('get_beacon_by_udi', correlationId, {'udi': udi});
    if (response == null) {
      return null;
    }
    var item = BeaconV1();
    item.fromJson(response);
    return item;
  }

  @override
  Future<Map<String, dynamic>> calculatePosition(
      String correlationId, String siteId, List<String> udis) async {
    return await callCommand(
        'calculate_position', correlationId, {'site_id': siteId, 'udis': udis});
  }

  @override
  Future<BeaconV1> createBeacon(String correlationId, BeaconV1 beacon) async {
    var response =
        await callCommand('create_beacon', correlationId, {'beacon': beacon});
    if (response == null) {
      return null;
    }
    var item = BeaconV1();
    item.fromJson(response);
    return item;
  }

  @override
  Future<BeaconV1> updateBeacon(String correlationId, BeaconV1 beacon) async {
    var response =
        await callCommand('update_beacon', correlationId, {'beacon': beacon});
    if (response == null) {
      return null;
    }
    var item = BeaconV1();
    item.fromJson(response);
    return item;
  }

  @override
  Future<BeaconV1> deleteBeaconById(
      String correlationId, String beaconId) async {
    var response = await callCommand(
        'delete_beacon_by_id', correlationId, {'beacon_id': beaconId});
    if (response == null) {
      return null;
    }
    var item = BeaconV1();
    item.fromJson(response);
    return item;
  }
}
