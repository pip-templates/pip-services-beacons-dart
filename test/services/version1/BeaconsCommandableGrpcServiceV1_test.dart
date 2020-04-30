import 'dart:convert';
import 'package:test/test.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:pip_services3_grpc/src/generated/commandable.pbgrpc.dart'
    as command;
import 'package:pip_services3_grpc/src/generated/commandable.pb.dart'
    as messages;

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_templates_microservice_dart/pip_template_microservice.dart';

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
  var grpcConfig = ConfigParams.fromTuples([
    'connection.protocol',
    'http',
    'connection.host',
    'localhost',
    'connection.port',
    3000
  ]);

  group('BeaconsCommandableGrpcServiceV1', () {
    BeaconsMemoryPersistence persistence;
    BeaconsController controller;
    BeaconsCommandableGrpcServiceV1 service;
    command.CommandableClient client;
    grpc.ClientChannel channel;

    setUp(() async {
      final options =
          grpc.ChannelOptions(credentials: grpc.ChannelCredentials.insecure());

      channel = grpc.ClientChannel('localhost', port: 3000, options: options);
      client = command.CommandableClient(channel);
    });

    setUpAll(() async {
      persistence = BeaconsMemoryPersistence();
      persistence.configure(ConfigParams());

      controller = BeaconsController();
      controller.configure(ConfigParams());

      service = BeaconsCommandableGrpcServiceV1();
      service.configure(grpcConfig);

      var references = References.fromTuples([
        Descriptor('beacons', 'persistence', 'memory', 'default', '1.0'),
        persistence,
        Descriptor('beacons', 'controller', 'default', 'default', '1.0'),
        controller,
        Descriptor('beacons', 'service', 'grpc', 'default', '1.0'),
        service
      ]);

      controller.setReferences(references);
      service.setReferences(references);

      await persistence.open(null);

      await service.open(null);
    });

    tearDownAll(() async {
      await service.close(null);
      await persistence.close(null);
    });

    test('CRUD Operations', () async {
      BeaconV1 beacon1;

      // Create the first beacon
      var request = messages.InvokeRequest();
      request.correlationId = '123';
      request.method = 'v1.beacons.create_beacon';
      request.argsEmpty = false;
      request.argsJson = json.encode({'beacon': BEACON1});
      command.InvokeReply response;
      response = await client.invoke(request);

      expect(response.resultEmpty, isFalse);
      expect(response.resultJson, isNotEmpty);
      var beacon = BeaconV1();
      beacon.fromJson(json.decode(response.resultJson));

      expect(BEACON1.udi, beacon.udi);
      expect(BEACON1.site_id, beacon.site_id);
      expect(BEACON1.type, beacon.type);
      expect(BEACON1.label, beacon.label);
      expect(beacon.center, isNotNull);

      // Create the second beacon
      request.correlationId = '123';
      request.method = 'v1.beacons.create_beacon';
      request.argsEmpty = false;
      request.argsJson = json.encode({'beacon': BEACON2});
      response = await client.invoke(request);

      expect(response.resultEmpty, isFalse);
      expect(response.resultJson, isNotEmpty);
      //beacon = BeaconV1();
      beacon.fromJson(json.decode(response.resultJson));

      expect(BEACON2.udi, beacon.udi);
      expect(BEACON2.site_id, beacon.site_id);
      expect(BEACON2.type, beacon.type);
      expect(BEACON2.label, beacon.label);
      expect(beacon.center, isNotNull);

      // Get all beacons
      request.correlationId = '123';
      request.method = 'v1.beacons.get_beacons';
      request.argsEmpty = false;
      request.argsJson =
          json.encode({'filter': FilterParams(), 'paging': PagingParams()});
      response = await client.invoke(request);
      expect(response.resultEmpty, isFalse);
      expect(response.resultJson, isNotEmpty);
      var page =
          DataPage<BeaconV1>.fromJson(json.decode(response.resultJson), (item) {
        var beacon = BeaconV1();
        beacon.fromJson(item);
        return beacon;
      });
      expect(page, isNotNull);
      expect(page.data.length, 2);
      beacon1 = page.data[0];

      // Update the beacon

      beacon1.label = 'ABC';
      request.correlationId = '123';
      request.method = 'v1.beacons.update_beacon';
      request.argsEmpty = false;
      request.argsJson = json.encode({'beacon': beacon1});
      response = await client.invoke(request);

      expect(response.resultEmpty, isFalse);
      expect(response.resultJson, isNotEmpty);
      beacon.fromJson(json.decode(response.resultJson));

      expect(beacon1.id, beacon.id);
      expect('ABC', beacon.label);

      // Get beacon by udi
      request.correlationId = '123';
      request.method = 'v1.beacons.get_beacon_by_udi';
      request.argsEmpty = false;
      request.argsJson = json.encode({'udi': beacon1.udi});
      response = await client.invoke(request);

      expect(response.resultEmpty, isFalse);
      expect(response.resultJson, isNotEmpty);
      beacon.fromJson(json.decode(response.resultJson));

      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);

      // Calculate position for one beacon
      request.correlationId = '123';
      request.method = 'v1.beacons.calculate_position';
      request.argsEmpty = false;
      request.argsJson = json.encode({
        'site_id': '1',
        'udis': ['00001']
      });
      response = await client.invoke(request);

      expect(response.resultEmpty, isFalse);
      expect(response.resultJson, isNotEmpty);
      Map<String, dynamic> position = json.decode(response.resultJson);

      expect(position, isNotNull);
      expect('Point', position['type']);
      expect(position['coordinates'].length, 2);
      expect(0, position['coordinates'][0]);
      expect(0, position['coordinates'][1]);

      // Delete the beacon
      request.correlationId = '123';
      request.method = 'v1.beacons.delete_beacon_by_id';
      request.argsEmpty = false;
      request.argsJson = json.encode({'beacon_id': beacon1.id});
      response = await client.invoke(request);

      expect(response.resultEmpty, isFalse);
      expect(response.resultJson, isNotEmpty);
      beacon.fromJson(json.decode(response.resultJson));

      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);

      // Try to get deleted beacon
      request.correlationId = '123';
      request.method = 'v1.beacons.get_beacon_by_id';
      request.argsEmpty = false;
      request.argsJson = json.encode({'beacon_id': beacon1.id});
      response = await client.invoke(request);
      expect(response.resultEmpty, isTrue);
      
    });
  });
}
