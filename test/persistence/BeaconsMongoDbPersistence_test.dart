import 'dart:io';
import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import 'package:pip_templates_microservice_dart/pip_template_microservice.dart';
import  './BeaconsPersistenceFixture.dart';

void main(){
group('BeaconsMongoDbPersistence', () {
    BeaconsMongoDbPersistence persistence;
    BeaconsPersistenceFixture fixture;

    setUp(() async{
        var mongoUri = Platform.environment['MONGO_SERVICE_URI'];
        var mongoHost = Platform.environment['MONGO_SERVICE_HOST'] ?? 'localhost';
        var mongoPort = Platform.environment['MONGO_SERVICE_PORT'] ?? '27017';
        var mongoDatabase = Platform.environment['MONGO_SERVICE_DB'] ?? 'test';
        // Exit if mongo connection is not set
        if (mongoUri == '' && mongoHost == '')  return;


        var dbConfig = ConfigParams.fromTuples([
            'connection.uri', mongoUri,
            'connection.host', mongoHost,
            'connection.port', mongoPort,
            'connection.database', mongoDatabase
        ]);

        persistence = BeaconsMongoDbPersistence();
        persistence.configure(dbConfig);

        fixture = BeaconsPersistenceFixture(persistence);

        await persistence.open(null);
        await persistence.clear(null);
    });

    tearDown(() async  {
        await persistence.close(null);
    });

    test('CRUD Operations', () {
        fixture.testCrudOperations();
    });

    test('Get with Filters', () {
        fixture.testGetWithFilters();
    });

});
}