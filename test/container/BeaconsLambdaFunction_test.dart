import 'dart:convert';

import 'package:pip_templates_microservice_dart/src/container/BeaconsLambdaFunction.dart';
import 'package:pip_templates_microservice_dart/src/data/version1/BeaconTypeV1.dart';
import 'package:pip_templates_microservice_dart/src/data/version1/BeaconV1.dart';
import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

final BEACON1 = BeaconV1(
    id: '1',
    udi: '00001',
    type: BeaconTypeV1.altBeacon,
    site_id: '1',
    label: 'TestBeacon1',
    center: {
      'type': 'Point',
      'coordinates': [0, 0]
    },
    radius: 50);

final BEACON2 = BeaconV1(
    id: '2',
    udi: '00002',
    type: BeaconTypeV1.iBeacon,
    site_id: '1',
    label: 'TestBeacon2',
    center: {
      'type': 'Point',
      'coordinates': [2, 2]
    },
    radius: 70);
final BEACON3 = BeaconV1(
    id: '3',
    udi: '00003',
    type: BeaconTypeV1.altBeacon,
    site_id: '2',
    label: 'TestBeacon3',
    center: {
      'type': 'Point',
      'coordinates': [10, 10]
    },
    radius: 50);

dynamic prepareResponse(String response) {
  var result = json.decode(response);
  if (result == null) return;
  if (result['data'] == null) {
    return BeaconV1().fromJson(result);
  } else {
    return DataPage<BeaconV1>(
        result['data'].map<BeaconV1>((f) => BeaconV1().fromJson(f)).toList(),
        result['total']);
  }
}

void main() {
  group('BeaconsLambdaFunction', () {
    BeaconsLambdaFunction lambda;

    setUpAll(() async {
      var config = ConfigParams.fromTuples([
        'logger.descriptor',
        'pip-services:logger:console:default:1.0',
        'persistence.descriptor',
        'beacons:persistence:memory:default:1.0',
        'controller.descriptor',
        'beacons:controller:default:default:1.0'
      ]);

      lambda = BeaconsLambdaFunction();
      lambda.configure(config);
      await lambda.open(null);
    });

    tearDownAll(() async {
      await lambda.close(null);
    });

    test('CRUD Operations', () async {
      BeaconV1 beacon;
      BeaconV1 beacon1;

      // Create one beacon
      beacon1 = prepareResponse(await lambda
          .act({'role': 'beacons', 'cmd': 'create_beacon', 'beacon': BEACON1}));
      expect(BEACON1.udi, beacon1.udi);
      expect(BEACON1.site_id, beacon1.site_id);
      expect(BEACON1.type, beacon1.type);
      expect(BEACON1.label, beacon1.label);
      expect(beacon1.center, isNotNull);

      // Create another beacon
      beacon = prepareResponse(await lambda
          .act({'role': 'beacons', 'cmd': 'create_beacon', 'beacon': BEACON2}));
      expect(BEACON2.udi, beacon.udi);
      expect(BEACON2.site_id, beacon.site_id);
      expect(BEACON2.type, beacon.type);
      expect(BEACON2.label, beacon.label);
      expect(beacon.center, isNotNull);

      // Create yet another beacon
      beacon = prepareResponse(await lambda
          .act({'role': 'beacons', 'cmd': 'create_beacon', 'beacon': BEACON3}));
      expect(BEACON3.udi, beacon.udi);
      expect(BEACON3.site_id, beacon.site_id);
      expect(BEACON3.type, beacon.type);
      expect(BEACON3.label, beacon.label);
      expect(beacon.center, isNotNull);

      // Get all beacons
      var page = prepareResponse(await lambda
          .act({'role': 'beacons', 'cmd': 'get_beacons', 'filter': {}}));
      expect(page, isNotNull);
      expect(page.data.length, 3);

      // Update the beacon
      beacon1.label = 'Updated Beacon 1';
      beacon = prepareResponse(await lambda
          .act({'role': 'beacons', 'cmd': 'update_beacon', 'beacon': beacon1}));
      expect(beacon1, isNotNull);
      expect('Updated Beacon 1', beacon.label);

      // Delete the beacon
      await lambda.act({
        'role': 'beacons',
        'cmd': 'delete_beacon_by_id',
        'beacon_id': beacon1.id,
      });

      // Try to get deleted beacon
      var response = prepareResponse(await lambda.act({
        'role': 'beacons',
        'cmd': 'get_beacon_by_id',
        'beacon_id': beacon1.id,
      }));

      expect(response, isNull);
    });
  });
}
