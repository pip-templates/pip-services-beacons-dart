import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_grpc/pip_services3_grpc.dart';

class BeaconsCommandableGrpcServiceV1 extends CommandableGrpcService {
  BeaconsCommandableGrpcServiceV1() : super('v1.beacons') {
    dependencyResolver.put(
        'controller', Descriptor('beacons', 'controller', '*', '*', '1.0'));
  }
}
