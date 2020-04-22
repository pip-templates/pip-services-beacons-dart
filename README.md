# <img src="https://github.com/pip-services/pip-services/raw/master/design/Logo.png" alt="Pip.Services Logo" style="max-width:30%"> 
# Beacons microservice

This is the Beacons microservice from the Pip.Templates library. 

The microservice currently supports the following deployment options:
* Deployment platforms: Standalone Process
* External APIs: HTTP/REST, gRPC
* Persistence: Memory, Flat Files, MongoDB, Couchbase

This microservice does not depend on other microservices.

<a name="links"></a> Quick Links:

* [Download Links](doc/Downloads.md)
* [Development Guide](doc/Development.md)
* [Configuration Guide](doc/Configuration.md)
* [Deployment Guide](doc/Deployment.md)
* Communication Protocols
  - [HTTP Version 1](doc/HttpProtocolV1.md)
  - [gRPC Version 1](doc/GrpcProtocolV1.md)

## Contract

The logical contract of the microservice is presented below. 

```dart
class BeaconV1 implements IStringIdentifiable {
  @override
  String id;
  String site_id;
  String type;
  String udi;
  String label;
  Map<String, dynamic> center; // GeoJson
  double radius;
}

// GeoJson Example:
// {
//     "type": "Point", 
//     "coordinates": [30, 10]
// }

abstract class IBeaconsClientV1 {
  Future<DataPage<BeaconV1>> getBeacons(
      String correlationId, FilterParams filter, PagingParams paging);

  Future<BeaconV1> getBeaconById(String correlationId, String beaconId);

  Future<BeaconV1> getBeaconByUdi(String correlationId, String udi);

  Future<Map<String, dynamic>> calculatePosition(
      String correlationId, String siteId, List<String> udis);

  Future<BeaconV1> createBeacon(String correlationId, BeaconV1 beacon);

  Future<BeaconV1> updateBeacon(
    String correlationId,
    BeaconV1 beacon,
  );

  Future<BeaconV1> deleteBeaconById(String correlationId, String beaconId);
}

```

## Download

Right now, the only way to get the microservice is to check it out directly from the GitHub repository
```bash
git clone https://github.com/pip-templates/pip-templates-microservice-dart.git
```

The Pip.Service team is working on implementing packaging, to make stable releases available as zip-downloadable archives.

## Run

Add the **config.yml** file to the config folder and set configuration parameters as needed.

Example of a microservice configuration
```yaml
---
# Container descriptor
- descriptor: "pip-services:context-info:default:default:1.0"
  name: "beacons"
  description: "Beacons microservice"

# Console logger
- descriptor: "pip-services:logger:console:default:1.0"
  level: "trace"

# Perfomance counter that post values to log
- descriptor: "pip-services:counters:log:default:1.0"

{{#MEMORY_ENABLED}}
# In-memory persistence. Use only for testing!
- descriptor: "beacons:persistence:memory:default:1.0"
{{/MEMORY_ENABLED}}

{{#FILE_ENABLED}}
# File persistence
- descriptor: "beacons:persistence:file:default:1.0"
  path: {{FILE_PATH}}{{^FILE_PATH}}"./data/beacons.json"{{/FILE_PATH}}
{{/FILE_ENABLED}}
    
{{#MONGO_ENABLED}}
# MongoDb persistence
- descriptor: "beacons:persistence:mongodb:default:1.0"
  connection:
    uri: {{MONGO_SERVICE_URI}}
    host: {{MONGO_SERVICE_HOST}}{{^MONGO_SERVICE_HOST}}"localhost"{{/MONGO_SERVICE_HOST}}
    port: {{MONGO_SERVICE_PORT}}{{^MONGO_SERVICE_PORT}}27017{{/MONGO_SERVICE_PORT}}
    database: {{MONGO_DB}}{{^MONGO_DB}}"test"{{/MONGO_DB}}
{{/MONGO_ENABLED}}

{{^MEMORY_ENABLED}}{{^FILE_ENABLED}}{{^MONGO_ENABLED}}
# In-memory persistence. Use only for testing!
- descriptor: "beacons:persistence:memory:default:1.0"
{{/MONGO_ENABLED}}{{/FILE_ENABLED}}{{/MEMORY_ENABLED}}

# Controller
- descriptor: "beacons:controller:default:default:1.0"

# Common HTTP endpoint
- descriptor: "pip-services:endpoint:http:default:1.0"
  connection:
    protocol: http
    host: 0.0.0.0
    port: {{HTTP_PORT}}{{^HTTP_PORT}}8080{{/HTTP_PORT}}

# HTTP endpoint service version 1.0
- descriptor: "beacons:service:commandable-http:default:1.0"

# Hearbeat service
- descriptor: "pip-services:heartbeat-service:http:default:1.0"

# Status service
- descriptor: "pip-services:status-service:http:default:1.0"

{{#GRPC_ENABLED}}
# Common GRPC endpoint
- descriptor: "beacons:endpoint:grpc:default:1.0"
  connection:
    protocol: http
    host: 0.0.0.0
    port: 8090
    
# GRPC endpoint service version 1.0
- descriptor: "beacons:service:grpc:default:1.0"
  
# Commandable GRPC endpoint version 1.0
- descriptor: "beacons:service:commandable-grpc:default:1.0"
{{/GRPC_ENABLED}}
```

For more information on microservice configuration, see [The Configuration Guide](Configuration.md).

The microservice can be started using the command:
```bash
dart ./bin/run.dart
```

## Use

The easiest way to work with the microservice is through the client SDK. 

If you use dart, then get references to the required libraries:
- Pip.Services3.Commons : https://github.com/pip-services3-dart/pip-services3-commons-dart
- Pip.Services3.Rpc: 
https://github.com/pip-services3-dart/pip-services3-rpc-dart

<!-- Todo: rename pip-templates-microservice-dart -->
Add **pip-services3-commons-dart** and **pip-templates-microservice-dart** packages
```dart
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_templates_microservice/pip_templates_microservice.dart';

```

Define client configuration parameters that match the configuration of the microservice's external API
```dart
// Client configuration
var httpConfig = ConfigParams.fromTuples(
	"connection.protocol", "http",
	"connection.host", "localhost",
	"connection.port", 8080
);
```

Instantiate the client and open a connection to the microservice
```dart
// Create the client instance
var client = BeaconsCommandableHttpClientV1();

// Configure the client
client.configure(httpConfig);

// Connect to the microservice
try{
  await client.open(null)
}catch() {
  // Error handling...
}       
// Work with the microservice
// ...
```

The client is now ready to perform operations
```dart
// Define a beacon
final BEACON1 = BeaconV1.fromMap({
    'id': '1',
    'udi': '00001',
    'type': BeaconTypeV1.AltBeacon,
    'site_id': '1',
    'label': 'TestBeacon',
    'center': { 'type': 'Point', 'coordinates': [ 0, 0 ] },
    'radius': 50.0
});

    // Create the beacon
    try {
      var beacon = await client.createBeacon('123', BEACON1);
      // Do something with the returned beacon...
    } catch(err) {
      // Error handling...     
    }
      
    // Get a list of beacons
    try {
      var page = await client.getBeacons(
            null, FilterParams.fromTuples([
              "label", "TestBeacon",
            ]), PagingParams(0, 10));
      // Do something with the returned page...
      // E.g. beacon = page.data[0];
    } catch(err) {              
        // Error handling...
    }   

```

## Acknowledgements

This microservice was created and currently maintained by 
- **Sergey Seroukhov**.
- **Levichev Dmitry**
