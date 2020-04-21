import 'package:pip_templates_microservice_dart/pip_template_microservice.dart';

void main(List<String> argument) {
  try {
    var proc = BeaconsProcess();
    proc.configPath = './config/config.yml';
    proc.run(argument);
  } catch (ex) {
    print(ex);
  }
}
