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
final BEACON3 = BeaconV1.from(
    '3', //id:
    '00003', //udi:
    BeaconTypeV1.altBeacon, //type:
    '2', // site_id:
    'TestBeacon3', //label:
    {
      'type': 'Point',
      'coordinates': [10, 10]
    }, //center:
    50 // radius:
    );

class BeaconsPersistenceFixture {
  IBeaconsPersistence _persistence;

  BeaconsPersistenceFixture(IBeaconsPersistence persistence) {
    expect(persistence, isNotNull);
    _persistence = persistence;
  }

  void _testCreateBeacons() async {
    // Create the first beacon
    var beacon = await _persistence.create(null, BEACON1);

    expect(beacon, isNotNull);
    expect(BEACON1.udi, beacon.udi);
    expect(BEACON1.site_id, beacon.site_id);
    expect(BEACON1.type, beacon.type);
    expect(BEACON1.label, beacon.label);
    expect(beacon.center, isNotNull);

    // Create the second beacon
    beacon = await _persistence.create(null, BEACON2);
    expect(beacon, isNotNull);
    expect(BEACON2.udi, beacon.udi);
    expect(BEACON2.site_id, beacon.site_id);
    expect(BEACON2.type, beacon.type);
    expect(BEACON2.label, beacon.label);
    expect(beacon.center, isNotNull);

    // Create the third beacon
    beacon = await _persistence.create(null, BEACON3);
    expect(beacon, isNotNull);
    expect(BEACON3.udi, beacon.udi);
    expect(BEACON3.site_id, beacon.site_id);
    expect(BEACON3.type, beacon.type);
    expect(BEACON3.label, beacon.label);
    expect(beacon.center, isNotNull);
  }

  void testCrudOperations() async {
    BeaconV1 beacon1;

    // Create items
    await _testCreateBeacons();

    // Get all beacons
    var page = await _persistence.getPageByFilter(
        null, FilterParams(), PagingParams());
    expect(page, isNotNull);
    expect(page.data.length, 3);

    beacon1 = page.data[0];

    // Update the beacon
    beacon1.label = 'ABC';

    var beacon = await _persistence.update(null, beacon1);
    expect(beacon, isNotNull);
    expect(beacon1.id, beacon.id);
    expect('ABC', beacon.label);

    // Get beacon by udi
    beacon = await _persistence.getOneByUdi(null, beacon1.udi);
    expect(beacon, isNotNull);
    expect(beacon1.id, beacon.id);

    // Delete the beacon
    beacon = await _persistence.deleteById(null, beacon1.id);
    expect(beacon, isNotNull);
    expect(beacon1.id, beacon.id);

    // Try to get deleted beacon
    beacon = await _persistence.getOneById(null, beacon1.id);
    expect(beacon, isNull);
  }

  void testGetWithFilters() async {
    // Create items

    await _testCreateBeacons();

    // Filter by id
    var page = await _persistence.getPageByFilter(
        null, FilterParams.fromTuples(['id', '1']), PagingParams());
    expect(page.data.length, 1);

    // Filter by udi
    page = await _persistence.getPageByFilter(
        null, FilterParams.fromTuples(['udi', '00002']), PagingParams());
    expect(page.data.length, 1);

    // Filter by udis
    page = await _persistence.getPageByFilter(
        null, FilterParams.fromTuples(['udis', '00001,00003']), PagingParams());
    expect(page.data.length, 2);

    // Filter by site_id
    page = await _persistence.getPageByFilter(
        null, FilterParams.fromTuples(['site_id', '1']), PagingParams());
    expect(page.data.length, 2);
  }
}
