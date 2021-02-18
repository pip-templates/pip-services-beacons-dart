import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services_beacons_dart/pip_services_beacons_dart.dart';
import './BeaconsClientV1Fixture.dart';

void main() {
  var grpcConfig = ConfigParams.fromTuples([
    'connection.protocol',
    'http',
    'connection.host',
    'localhost',
    'connection.port',
    3000
  ]);

  group('BeaconsGrpcClientV1', () {
    BeaconsMemoryPersistence persistence;
    BeaconsController controller;
    BeaconsGrpcServiceV1 service;
    BeaconsGrpcClientV1 client;
    BeaconsClientV1Fixture fixture;

    setUp(() async {
      persistence = BeaconsMemoryPersistence();
      persistence.configure(ConfigParams());

      controller = BeaconsController();
      controller.configure(ConfigParams());

      service = BeaconsGrpcServiceV1();
      service.configure(grpcConfig);

      client = BeaconsGrpcClientV1();
      client.configure(grpcConfig);

      var references = References.fromTuples([
        Descriptor('beacons', 'persistence', 'memory', 'default', '1.0'),
        persistence,
        Descriptor('beacons', 'controller', 'default', 'default', '1.0'),
        controller,
        Descriptor('beacons', 'service', 'grpc', 'default', '1.0'),
        service,
        Descriptor('beacons', 'client', 'grpc', 'default', '1.0'),
        client
      ]);
      controller.setReferences(references);
      service.setReferences(references);
      client.setReferences(references);
      fixture = BeaconsClientV1Fixture(client);

      await persistence.open(null);
      await service.open(null);
      await client.open(null);
    });

    tearDown(() async {
      await client.close(null);
      await service.close(null);
      await persistence.close(null);
    });

    test('CRUD Operations', () async {
      await fixture.testCrudOperations();
    });

    test('Calculate Position', () async {
      await fixture.testCalculatePosition();
    });
  });
}
