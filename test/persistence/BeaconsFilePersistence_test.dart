import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import 'package:pip_services_beacons_dart/pip_services_beacons_dart.dart';
import './BeaconsPersistenceFixture.dart';

void main() {
  group('BeaconsFilePersistence', () {
    BeaconsFilePersistence persistence;
    BeaconsPersistenceFixture fixture;

    setUp(() async {
      persistence = BeaconsFilePersistence('data/beacons.test.json');
      persistence.configure(ConfigParams());

      fixture = BeaconsPersistenceFixture(persistence);

      await persistence.open(null);
      await persistence.clear(null);
    });

    tearDown(() async {
      await persistence.close(null);
    });

    test('CRUD Operations', () async {
      await fixture.testCrudOperations();
    });

    test('Get with Filters', () async {
      await fixture.testGetWithFilters();
    });
  });
}
