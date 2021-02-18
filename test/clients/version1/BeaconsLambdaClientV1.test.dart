import 'dart:io';
import 'package:pip_services_beacons_dart/src/clients/version1/BeaconsLambdaClientV1.dart';
import 'package:test/test.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import 'BeaconsClientV1Fixture.dart';

void main() {
  var AWS_ACCESS_ID = Platform.environment['AWS_ACCESS_ID'];
  var AWS_ACCESS_KEY = Platform.environment['AWS_ACCESS_KEY'];
  var AWS_LAMBDA_ARN = Platform.environment['AWS_LAMBDA_ARN'];

  group('BeaconsLambdaClientV1', () {
    if (AWS_ACCESS_ID == null ||
        AWS_ACCESS_KEY == null ||
        AWS_LAMBDA_ARN == null) {
      return;
    }

    var lambdaConfig = ConfigParams.fromTuples([
      'connection.protocol',
      'aws',
      'connection.arn',
      AWS_LAMBDA_ARN,
      'credential.access_id',
      AWS_ACCESS_ID,
      'credential.access_key',
      AWS_ACCESS_KEY,
      'options.connection_timeout',
      30000
    ]);

    BeaconsLambdaClientV1 client;
    BeaconsClientV1Fixture fixture;

    setUp(() async {
      client = BeaconsLambdaClientV1();
      client.configure(lambdaConfig);

      fixture = BeaconsClientV1Fixture(client);

      await client.open(null);
    });

    tearDown(() async {
      await client.close(null);
    });

    test('Crud Operations', () async {
      await fixture.testCrudOperations();
    });

    test('Calculate Position', () async {
      await fixture.testCalculatePosition();
    });
  });
}
