import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_aws/pip_services3_aws.dart';

import '../build/BeaconsServiceFactory.dart';

class BeaconsLambdaFunction extends CommandableLambdaFunction {
  BeaconsLambdaFunction() : super('beacons', 'Beacons microservice') {
    dependencyResolver.put(
        'controller', Descriptor('beacons', 'controller', 'default', '*', '*'));
    factories.add(BeaconsServiceFactory());
  }
}
