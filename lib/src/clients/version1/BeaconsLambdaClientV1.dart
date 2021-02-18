import 'dart:async';

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_aws/pip_services3_aws.dart';

import '../../data/version1/BeaconV1.dart';
import 'IBeaconsClientV1.dart';

class BeaconsLambdaClientV1 extends CommandableLambdaClient
    implements IBeaconsClientV1 {
  BeaconsLambdaClientV1([var config]) : super('v1/beacons') {
    if (config != null) configure(ConfigParams.fromValue(config));
  }

  @override
  Future<DataPage<BeaconV1>> getBeacons(
      String correlationId, FilterParams filter, PagingParams paging) async {
    return await callCommand(
        'get_beacons', correlationId, {'filter': filter, 'paging': paging});
  }

  @override
  Future<BeaconV1> getBeaconById(String correlationId, String beaconId) async {
    return await callCommand(
        'get_beacon_by_id', correlationId, {'beacon_id': beaconId});
  }

  @override
  Future<BeaconV1> getBeaconByUdi(String correlationId, String udi) async {
    return await callCommand('get_beacon_by_udi', correlationId, {'udi': udi});
  }

  @override
  Future<Map<String, dynamic>> calculatePosition(
      String correlationId, String siteId, List<String> udis) async {
    return await callCommand(
        'calculate_position', correlationId, {'site_id': siteId, 'udis': udis});
  }

  @override
  Future<BeaconV1> createBeacon(String correlationId, BeaconV1 beacon) async {
    return await callCommand(
        'create_beacon', correlationId, {'beacon': beacon});
  }

  @override
  Future<BeaconV1> updateBeacon(String correlationId, BeaconV1 beacon) async {
    return await callCommand(
        'update_beacon', correlationId, {'beacon': beacon});
  }

  @override
  Future<BeaconV1> deleteBeaconById(
      String correlationId, String beaconId) async {
    return await callCommand(
        'delete_beacon_by_id', correlationId, {'beacon_id': beaconId});
  }
}
