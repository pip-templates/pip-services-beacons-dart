import 'dart:convert';

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_templates_microservice_dart/pip_template_microservice.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

final BEACON1 = BeaconV1(
    id: '1',
    udi: '00001',
    type: BeaconTypeV1.altBeacon,
    site_id: '1',
    label: 'TestBeacon1',
    center: {
      'type': 'Point',
      'coordinates': [0.0, 0.0]
    },
    radius: 50.0);

final BEACON2 = BeaconV1(
    id: '2',
    udi: '00002',
    type: BeaconTypeV1.iBeacon,
    site_id: '1',
    label: 'TestBeacon2',
    center: {
      'type': 'Point',
      'coordinates': [2.0, 2.0]
    },
    radius: 70.0);

void main() {
  var httpConfig = ConfigParams.fromTuples([
    'connection.protocol',
    'http',
    'connection.host',
    'localhost',
    'connection.port',
    3002
  ]);

  group('BeaconsRestServiceV1', () {
    BeaconsMemoryPersistence persistence;
    BeaconsController controller;
    BeaconsRestServiceV1 service;
    http.Client rest;
    String url;

    setUp(() async {
      url = 'http://localhost:3002';
      rest = http.Client();
    });

    setUpAll(() async {
      persistence = BeaconsMemoryPersistence();
      controller = BeaconsController();

      service = BeaconsRestServiceV1();
      service.configure(httpConfig);

      var references = References.fromTuples([
        Descriptor('beacons', 'persistence', 'memory', 'default', '1.0'),
        persistence,
        Descriptor('beacons', 'controller', 'default', 'default', '1.0'),
        controller,
        Descriptor('beacons', 'service', 'http', 'default', '1.0'),
        service
      ]);

      controller.setReferences(references);
      service.setReferences(references);

      await service.open(null);
    });

    tearDownAll(() async {
      await service.close(null);
      await persistence.close(null);
    });

    test('CRUD Operations', () async {
      BeaconV1 beacon1;

      // Create the first beacon
      var resp = await rest.post(url + '/v1/beacons/beacons',
          headers: {'Content-Type': 'application/json'},
          body: json.encode({'beacon': BEACON1}));

      var beacon = BeaconV1();
      beacon.fromJson(json.decode(resp.body));
      expect(beacon, isNotNull);
      expect(BEACON1.udi, beacon.udi);
      expect(BEACON1.site_id, beacon.site_id);
      expect(BEACON1.type, beacon.type);
      expect(BEACON1.label, beacon.label);
      expect(beacon.center, isNotNull);

      // Create the second beacon
      resp = await rest.post(url + '/v1/beacons/beacons',
          headers: {'Content-Type': 'application/json'},
          body: json.encode({'beacon': BEACON2}));
      beacon = BeaconV1();
      beacon.fromJson(json.decode(resp.body));
      expect(beacon, isNotNull);
      expect(BEACON2.udi, beacon.udi);
      expect(BEACON2.site_id, beacon.site_id);
      expect(BEACON2.type, beacon.type);
      expect(BEACON2.label, beacon.label);
      expect(beacon.center, isNotNull);

      // Get all beacons
      resp = await rest.get(url + '/v1/beacons/beacons');
      var page = DataPage<BeaconV1>.fromJson(json.decode(resp.body), (item) {
        var beacon = BeaconV1();
        beacon.fromJson(item);
        return beacon;
      });
      expect(page, isNotNull);
      expect(page.data.length, 2);

      beacon1 = page.data[0];
      beacon1.label = 'ABC';

      // Update the beacon
      resp = await rest.post(url + '/v1/beacons/beacons',
          headers: {'Content-Type': 'application/json'},
          body: json.encode({'beacon': beacon1}));
      beacon = BeaconV1();
      beacon.fromJson(json.decode(resp.body));

      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);
      expect(beacon1.label, beacon.label);

      // Get beacon by udi
      resp = await rest.get(url + '/v1/beacons/beacons/udi/' + beacon1.udi);
      beacon = BeaconV1();
      beacon.fromJson(json.decode(resp.body));
      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);

      // Calculate position for one beacon
      resp = await rest
          .get(url + '/v1/beacons/beacons/calculate_position/1/00001');
      var position = json.decode(resp.body);

      expect(position, isNotNull);
      expect('Point', position['type']);
      expect(position['coordinates'].length, 2);
      expect(0, position['coordinates'][0]);
      expect(0, position['coordinates'][1]);

      // Delete the beacon
      resp = await rest.delete(url + '/v1/beacons/beacons/' + beacon1.id);
      beacon = BeaconV1();
      beacon.fromJson(json.decode(resp.body));
      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);

      // Try to get deleted beacon
      resp = await rest.get(url + '/v1/beacons/beacons/id/' + beacon1.id);
      expect(resp.body, isEmpty);
    });
  });
}
