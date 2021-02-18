import 'package:pip_services3_components/pip_services3_components.dart';
import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services_beacons_dart/pip_services_beacons_dart.dart';

import './BeaconsClientV1Fixture.dart';

var httpConfig = ConfigParams.fromTuples([
  'connection.protocol',
  'http',
  'connection.host',
  'localhost',
  'connection.port',
  3002
]);

void main() {
  group('BeaconsRestClientV1', () {
    BeaconsMemoryPersistence persistence;
    BeaconsController controller;
    BeaconsRestServiceV1 service;
    BeaconsRestClientV1 client;
    BeaconsClientV1Fixture fixture;

    setUpAll(() async {
      var logger = ConsoleLogger();
      persistence = BeaconsMemoryPersistence();
      controller = BeaconsController();

      service = BeaconsRestServiceV1();
      service.configure(httpConfig);

      var references = References.fromTuples([
        Descriptor(
            'pip-services-commons', 'logger', 'console', 'default', '1.0'),
        logger,
        Descriptor('beacons', 'persistence', 'memory', 'default', '1.0'),
        persistence,
        Descriptor('beacons', 'controller', 'default', 'default', '1.0'),
        controller,
        Descriptor('beacons', 'service', 'rest', 'default', '1.0'),
        service
      ]);
      controller.setReferences(references);
      service.setReferences(references);

      client = BeaconsRestClientV1();
      client.setReferences(references);
      client.configure(httpConfig);

      fixture = BeaconsClientV1Fixture(client);

      await service.open(null);
      await client.open(null);
    });

    setUp(() async {
      await persistence.clear(null);
    });

    tearDownAll(() async {
      await client.close(null);
      await service.close(null);
    });

    test('CRUD Operations', () async {
      await fixture.testCrudOperations();
    });

    test('Calculate Position', () async {
      await fixture.testCalculatePosition();
    });
  });
}
