import 'package:pip_services3_components/pip_services3_components.dart';
import 'package:pip_services3_commons/pip_services3_commons.dart';

import '../persistence/BeaconsMemoryPersistence.dart';
import '../persistence/BeaconsFilePersistence.dart';
import '../persistence/BeaconsMongoDbPersistence.dart';
import '../logic/BeaconsController.dart';
import '../services/version1/BeaconsCommandableHttpServiceV1.dart';
import '../services/version1/BeaconsCommandableGrpcServiceV1.dart';
import '../services/version1/BeaconsRestServiceV1.dart';
import '../services/version1/BeaconsGrpcServiceV1.dart';

class BeaconsServiceFactory extends Factory {
  static final MemoryPersistenceDescriptor =
      Descriptor('beacons', 'persistence', 'memory', '*', '1.0');
  static final FilePersistenceDescriptor =
      Descriptor('beacons', 'persistence', 'file', '*', '1.0');
  static final MongoDbPersistenceDescriptor =
      Descriptor('beacons', 'persistence', 'mongodb', '*', '1.0');
  static final CouchbasePersistenceDescriptor =
      Descriptor('beacons', 'persistence', 'couchbase', '*', '1.0');
  static final ControllerDescriptor =
      Descriptor('beacons', 'controller', 'default', '*', '1.0');
  static final CommandableHttpServiceV1Descriptor =
      Descriptor('beacons', 'service', 'commandable-http', '*', '1.0');
  static final CommandableGrpcServiceV1Descriptor =
      Descriptor('beacons', 'service', 'commandable-grpc', '*', '1.0');
  static final RestServiceDescriptor =
      Descriptor('beacons', 'service', 'rest', '*', '1.0');
  static final GrpcServiceV1Descriptor =
      Descriptor('beacons', 'service', 'grpc', '*', '1.0');

  BeaconsServiceFactory() : super() {
    registerAsType(BeaconsServiceFactory.MemoryPersistenceDescriptor,
        BeaconsMemoryPersistence);
    registerAsType(BeaconsServiceFactory.FilePersistenceDescriptor,
        BeaconsFilePersistence);
    registerAsType(BeaconsServiceFactory.MongoDbPersistenceDescriptor,
        BeaconsMongoDbPersistence);
    registerAsType(
        BeaconsServiceFactory.ControllerDescriptor, BeaconsController);
    registerAsType(BeaconsServiceFactory.CommandableHttpServiceV1Descriptor,
        BeaconsCommandableHttpServiceV1);
    registerAsType(BeaconsServiceFactory.CommandableGrpcServiceV1Descriptor,
        BeaconsCommandableGrpcServiceV1);
    registerAsType(
        BeaconsServiceFactory.RestServiceDescriptor, BeaconsRestServiceV1);
    registerAsType(
        BeaconsServiceFactory.GrpcServiceV1Descriptor, BeaconsGrpcServiceV1);
  }
}
