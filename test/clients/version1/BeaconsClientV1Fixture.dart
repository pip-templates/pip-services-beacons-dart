import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import 'package:pip_templates_microservice_dart/pip_template_microservice.dart';

final BEACON1 = BeaconV1.from(
    '1', //id:
    '00001', //udi:
    BeaconTypeV1.altBeacon, //type:
    '1', //site_id:
    'TestBeacon1', //label:
    {
      'type': 'Point',
      'coordinates': [0, 0]
    }, // center:
    50 //radius:
    );
final BEACON2 = BeaconV1.from(
    '2', //id:
    '00002', //udi:
    BeaconTypeV1.iBeacon, //type:
    '1', //site_id:
    'TestBeacon2', // label:
    {
      'type': 'Point',
      'coordinates': [2, 2]
    }, //center:
    70 // radius:
    );

class BeaconsClientV1Fixture {
  IBeaconsClientV1 _client;

  BeaconsClientV1Fixture(IBeaconsClientV1 client) {
    expect(client, isNotNull);
    _client = client;
  }

  void testCrudOperations() async {
    BeaconV1 beacon1;

    // Create the first beacon
    try {
      var beacon = await _client.createBeacon(null, BEACON1);
      expect(beacon, isNotNull);
      expect(BEACON1.udi, beacon.udi);
      expect(BEACON1.site_id, beacon.site_id);
      expect(BEACON1.type, beacon.type);
      expect(BEACON1.label, beacon.label);
      expect(beacon.center, isNotNull);
    } catch (err) {
      expect(err, isNull);
    }

    // Create the second beacon
    try {
      var beacon = await _client.createBeacon(null, BEACON2);
      expect(beacon, isNotNull);
      expect(BEACON2.udi, beacon.udi);
      expect(BEACON2.site_id, beacon.site_id);
      expect(BEACON2.type, beacon.type);
      expect(BEACON2.label, beacon.label);
      expect(beacon.center, isNotNull);
    } catch (err) {
      expect(err, isNull);
    }

    // Get all beacons
    try {
      var page = await _client.getBeacons(null, FilterParams(), PagingParams());
      expect(page, isNotNull);
      expect(page.data.length, 2);
      beacon1 = page.data[0];
    } catch (err) {
      expect(err, isNull);
    }

    // Update the beacon
    try {
      beacon1.label = 'ABC';

      var beacon = await _client.updateBeacon(null, beacon1);
      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);
      expect('ABC', beacon.label);
    } catch (err) {
      expect(err, isNull);
    }
    // Get beacon by udi
    try {
      var beacon = await _client.getBeaconByUdi(null, beacon1.udi);
      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);
    } catch (err) {
      expect(err, isNull);
    }
    // Delete the beacon
    try {
      var beacon = await _client.deleteBeaconById(null, beacon1.id);
      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);
    } catch (err) {
      expect(err, isNull);
    }

    // Try to get deleted beacon
    try {
      var beacon = await _client.getBeaconById(null, beacon1.id);
      expect(beacon, isNull);
    } catch (err) {
      expect(err, isNull);
    }
  }

  void testCalculatePosition() async {
    // Create the first beacon
    try {
      var beacon = await _client.createBeacon(null, BEACON1);
      expect(beacon, isNotNull);
      expect(BEACON1.udi, beacon.udi);
      expect(BEACON1.site_id, beacon.site_id);
      expect(BEACON1.type, beacon.type);
      expect(BEACON1.label, beacon.label);
      expect(beacon.center, isNotNull);
    } catch (err) {
      expect(err, isNull);
    }

    // Create the second beacon
    try {
      var beacon = await _client.createBeacon(null, BEACON2);
      expect(beacon, isNotNull);
      expect(BEACON2.udi, beacon.udi);
      expect(BEACON2.site_id, beacon.site_id);
      expect(BEACON2.type, beacon.type);
      expect(BEACON2.label, beacon.label);
      expect(beacon.center, isNotNull);
    } catch (err) {
      expect(err, isNull);
    }

    // Calculate position for one beacon
    try {
      var position = await _client.calculatePosition(null, '1', ['00001']);
      expect(position, isNotNull);
      expect('Point', position['type']);
      expect((position['coordinates'] as List).length, 2);
      expect(0, (position['coordinates'] as List)[0]);
      expect(0, (position['coordinates'] as List)[1]);
    } catch (err) {
      expect(err, isNull);
    }

    // Calculate position for two beacons
    try {
      var position =
          await _client.calculatePosition(null, '1', ['00001', '00002']);
      expect(position, isNotNull);
      expect('Point', position['type']);
      expect((position['coordinates'] as List).length, 2);
      expect(1, (position['coordinates'] as List)[0]);
      expect(1, (position['coordinates'] as List)[1]);
    } catch (err) {
      expect(err, isNull);
    }
  }
}
