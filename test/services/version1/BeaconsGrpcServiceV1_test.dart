import 'package:test/test.dart';
import 'package:grpc/grpc.dart' as grpc;

import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_templates_microservice_dart/pip_template_microservice.dart';
import 'package:pip_templates_microservice_dart/src/generated/beacons_v1.pbgrpc.dart'
    as beaconsgrpc;
import 'package:pip_templates_microservice_dart/src/generated/beacons_v1.pb.dart'
    as messages;

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

  group('BeaconsGrpcServiceV1', () {
    BeaconsMemoryPersistence persistence;
    BeaconsController controller;
    BeaconsGrpcServiceV1 service;

    beaconsgrpc.BeaconsClient client;
    grpc.ClientChannel channel;

    setUp(() {
      final options =
          grpc.ChannelOptions(credentials: grpc.ChannelCredentials.insecure());

      channel = grpc.ClientChannel('localhost', port: 3000, options: options);
      client = beaconsgrpc.BeaconsClient(channel);
    });

    setUpAll(() async {
      persistence = BeaconsMemoryPersistence();
      persistence.configure(ConfigParams());

      controller = BeaconsController();
      controller.configure(ConfigParams());

      service = BeaconsGrpcServiceV1();
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
      var request = messages.BeaconRequest();
      request.correlationId = '123';
      request.beacon = BeaconsGrpcConverterV1.fromBeacon(BEACON1);
      var response = await client.create_beacon(request);
      expect(response.beacon, isNotNull);
      expect(BEACON1.udi, response.beacon.udi);
      expect(BEACON1.site_id, response.beacon.siteId);
      expect(BEACON1.type, response.beacon.type);
      expect(BEACON1.label, response.beacon.label);
      expect(response.beacon.center, isNotNull);

      // Create the second beacon
      request = messages.BeaconRequest();
      request.correlationId = '123';
      request.beacon = BeaconsGrpcConverterV1.fromBeacon(BEACON2);
      response = await client.create_beacon(request);
      expect(response.beacon, isNotNull);
      expect(BEACON2.udi, response.beacon.udi);
      expect(BEACON2.site_id, response.beacon.siteId);
      expect(BEACON2.type, response.beacon.type);
      expect(BEACON2.label, response.beacon.label);
      expect(response.beacon.center, isNotNull);

      // Get all beacons
      var pageRequest = messages.BeaconsPageRequest();
      pageRequest.correlationId = '123';
      pageRequest.filter.addAll(FilterParams().innerValue());
      pageRequest.paging =
          BeaconsGrpcConverterV1.fromPagingParams(PagingParams());

      var pageResponse = await client.get_beacons(pageRequest);
      var page = pageResponse.page;
      expect(page, isNotNull);
      expect(page.data.length, 2);
      beacon1 = BeaconsGrpcConverterV1.toBeacon(page.data[0]);

      // Update the beacon

      beacon1.label = 'ABC';
      var updateRequest = messages.BeaconRequest();
      updateRequest.correlationId = '123';
      updateRequest.beacon = BeaconsGrpcConverterV1.fromBeacon(beacon1);
      var updateResponse = await client.update_beacon(updateRequest);
      var beacon = updateResponse.beacon;

      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);
      expect('ABC', beacon.label);

      // Get beacon by udi
      var udiRequest = messages.BeaconUdiRequest();
      udiRequest.correlationId = '123';
      udiRequest.udi = beacon1.udi;
      var udiResponse = await client.get_beacon_by_udi(udiRequest);
      beacon = udiResponse.beacon;

      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);

      // Calculate position for one beacon
      var posRequest = messages.BeaconsPositionRequest();
      posRequest.correlationId = '123';
      posRequest.siteId = '1';
      posRequest.udis.add('00001');
      var posResponse = await client.calculate_position(posRequest);

      var position = posResponse.position;

      expect(position, isNotNull);
      expect('Point', position.type);
      expect(position.coordinates.length, 2);
      expect(0, position.coordinates[0]);
      expect(0, position.coordinates[1]);

      // Delete the beacon
      var delRequest = messages.BeaconIdRequest();
      delRequest.correlationId = '123';
      delRequest.beaconId = beacon1.id;
      var delResponse = await client.delete_beacon_by_id(delRequest);
      beacon = delResponse.beacon;
      expect(beacon, isNotNull);
      expect(beacon1.id, beacon.id);

      // Try to get deleted beacon
      var getRequest = messages.BeaconIdRequest();
      getRequest.correlationId = '123';
      getRequest.beaconId = beacon1.id;
      delResponse = await client.get_beacon_by_id(getRequest);

      beacon = delResponse.beacon;

      expect(beacon.id, isEmpty);
      expect(beacon.siteId, isEmpty);
      expect(beacon.type, isEmpty);
      
    });
  });
}
