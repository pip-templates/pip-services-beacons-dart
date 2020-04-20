import 'dart:convert';
import 'package:test/test.dart';
import 'package:http/http.dart' as http;
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

var httpConfig = ConfigParams.fromTuples([
  'connection.protocol',
  'http',
  'connection.host',
  'localhost',
  'connection.port',
  3000
]);

void main() {
  group('BeaconsCommandableHttpServiceV1', () {
    BeaconsMemoryPersistence persistence;
    BeaconsController controller;
    BeaconsCommandableHttpServiceV1 service;
    http.Client rest;
    String url;

    setUp(() async {
      url = 'http://localhost:3000';
      rest = http.Client();

      persistence = BeaconsMemoryPersistence();
      persistence.configure(ConfigParams());

      controller = BeaconsController();
      controller.configure(ConfigParams());

      service = BeaconsCommandableHttpServiceV1();
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

      await persistence.open(null);
      await service.open(null);
    });

    tearDown(() async {
      await service.close(null);
      await persistence.close(null);
    });

    test('CRUD Operations', () async {
      BeaconV1 beacon1;

      // Create the first beacon
      try {
        var resp = await rest.post(url + '/v1/beacons/create_beacon',
            headers: {'Content-Type': 'application/json'},
            body: json.encode({'beacon': BEACON1}));
        var beacon = BeaconV1();
        beacon.fromJson(json.decode(resp.body.toString()));
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
        var resp = await rest.post(url + '/v1/beacons/create_beacon',
            headers: {'Content-Type': 'application/json'},
            body: json.encode({'beacon': BEACON2}));
        var beacon = BeaconV1();
        beacon.fromJson(json.decode(resp.body.toString()));
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
        var resp = await rest.post(url +'/v1/beacons/get_beacons',
            headers: {'Content-Type': 'application/json'},
            body: json
                .encode({'filter': FilterParams(), 'paging': PagingParams()}));
        var page = DataPage<BeaconV1>.fromJson(
            json.decode(resp.body.toString()),
            (item) => BeaconV1().fromJson(item));
        expect(page, isNotNull);
        expect(page.data.length, 2);

        beacon1 = page.data[0];
      } catch (err) {
        expect(err, isNull);
      }

      // Update the beacon
      try {
        beacon1.label = 'ABC';

        var resp = await rest.post(url +'/v1/beacons/update_beacon',
            headers: {'Content-Type': 'application/json'},
            body: json.encode({'beacon': beacon1}));
        var beacon = BeaconV1();
        beacon.fromJson(json.decode(resp.body.toString()));
        expect(beacon, isNotNull);
        expect(beacon1.id, beacon.id);
        expect('ABC', beacon.label);
      } catch (err) {
        expect(err, isNull);
      }

      // Get beacon by udi
      try {
        var resp = await rest.post(url +'/v1/beacons/get_beacon_by_udi',
            headers: {'Content-Type': 'application/json'},
            body: json.encode({'udi': beacon1.udi}));
        var beacon = BeaconV1();
        beacon.fromJson(json.decode(resp.body.toString()));
        expect(beacon, isNotNull);
        expect(beacon1.id, beacon.id);
      } catch (err) {
        expect(err, isNull);
      }

      // Calculate position for one beacon
      try {
        var resp = await rest.post(url +'/v1/beacons/calculate_position',
            headers: {'Content-Type': 'application/json'},
            body: json.encode({
              'site_id': '1',
              'udis': ['00001']
            }));
        var position = json.decode(resp.body.toString());

        expect(position, isNotNull);
        expect('Point', position['type']);
        expect(position['coordinates'].length, 2);
        expect(0, position['coordinates'][0]);
        expect(0, position['coordinates'][1]);
      } catch (err) {
        expect(err, isNull);
      }

      // Delete the beacon
      try {
        var resp = await rest.post(url +'/v1/beacons/delete_beacon_by_id',
            headers: {'Content-Type': 'application/json'},
            body: json.encode({'beacon_id': beacon1.id}));
        var beacon = BeaconV1();
        beacon.fromJson(json.decode(resp.body.toString()));
        expect(beacon, isNotNull);
        expect(beacon1.id, beacon.id);
      } catch (err) {
        expect(err, isNull); 
      }

      // Try to get deleted beacon
      try {
        var resp = await rest.post(url +'/v1/beacons/get_beacon_by_id',
            headers: {'Content-Type': 'application/json'},
            body: json.encode({'beacon_id': beacon1.id}));
        expect(resp.body, isEmpty);
      } catch (err) {
        expect(err, isNull);
      }
    });
  });
}
