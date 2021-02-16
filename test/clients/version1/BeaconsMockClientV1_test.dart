import 'package:test/test.dart';
import 'package:pip_templates_microservice_dart/pip_template_microservice.dart';
import './BeaconsClientV1Fixture.dart';

void main() {
  group('BeaconsMockClientV1', () {
    BeaconsMockClientV1 client;
    BeaconsClientV1Fixture fixture;

    setUp(() async {
      client = BeaconsMockClientV1();
      fixture = BeaconsClientV1Fixture(client);
    });

    tearDown(() async {});

    test('CRUD Operations', () async {
      await fixture.testCrudOperations();
    });

    test('Calculate Positions', () async {
      await fixture.testCalculatePosition();
    });
  });
}
