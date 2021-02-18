# <img src="https://github.com/pip-services/pip-services/raw/master/design/Logo.png" alt="Pip.Services Logo" style="max-width:30%"> <br/> Beacons microservice

This microservice stores information about BLE beacons that emit unique device IDs (UDIs) over bluetooth protocol.
And then it uses that information to triangulate position of users based on UDIs their devices detect around them.

Supported functionality:
* Deployment platforms: Standalone Process, Docker, AWS Lambda
* External APIs: HTTP (REST and Commandable), GRPC (Custom and Commandable)
* Persistence: Memory, Flat Files, MongoDB
* Health checks: Heartbeat, Status
* Consolidated logging: ElasticSearch, CloudWatch
* Consolidated metrics: Prometheus, CloudWatch

This microservice does not depend on other microservices.

<a name="links"></a> Quick links:

* Communication Protocols:
  - [gRPC Version 1](lib/src/protos/beacons_v1.proto)
  - [HTTP Version 1](lib/src/swagger/beacons_v1.yaml)
* Client SDKs:
  - [Node.js SDK](https://github.com/pip-templates/pip-clients-beacons-node)
  - [.NET SDK](https://github.com/pip-templates/pip-clients-beacons-dotnet)
  - [Golang SDK](https://github.com/pip-templates/pip-clients-beacons-go)
* [API Reference](https://pub.dev/documentation/pip_services_beacons/latest/pip_services_beacons/pip_services_beacons-library.html)
* [Change Log](CHANGELOG.md)


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

## Get

Get the microservice source from GitHub:
```bash
git clone git@github.com:pip-templates/pip-services-beacons-dart.git
```

Install the microservice as a binary dependency:
```bash
pub get
```

Get docker image for the microservice:
```bash
docker pull pipdevs/pip-services-beacons-dart:latest
```
## Run

The microservice can be configured using the environment variables:
* AWS_LAMDBA_ARN - a unique Amazon Resource Name
* AWS_ACCESS_ID - AWS access/client id
* AWS_ACCESS_KEY - AWS access/client id
* CLOUD_WATCH_ENABLED -  turn on CloudWatch loggers and metrics
* CLOUD_WATCH_STREAM - Cloud Watch Log stream (default: context name)
* CLOUD_WATCH_GROUP - Cloud Watch Log group (default: context instance ID or hostname)
* ELASTICSEARCH_LOGGING_ENABLED - turn on Elasticsearch logs and metrics
* ELASTICSEARCH_PROTOCOL - connection protocol: http or https
* ELASTICSEARCH_SERVICE_URI - resource URI or connection string with all parameters in it
* ELASTICSEARCH_SERVICE_HOST - host name or IP address
* ELASTICSEARCH_SERVICE_PORT - port number
* FILE_ENABLED - turn on file persistence. Keep it undefined to turn it off
* FILE_PATH - file path where persistent data shall be stored (default: ../data/id_records.json) 
* MEMORY_ENABLED - turn on in-memory persistence. Keep it undefined to turn it off
* MONGO_ENABLED - turn on MongoDB persistence. Keep it undefined to turn it off
* MONGO_SERVICE_URI - URI to connect to MongoDB. When it's defined other database parameters are ignored
* MONGO_SERVICE_HOST - MongoDB hostname or server address
* MONGO_SERVICE_PORT - MongoDB port number (default: 3360)
* MONGO_DB - MongoDB database name (default: app)
* MONGO_COLLECTION - MongoDB collection (default: id_records)
* MONGO_USER - MongoDB user login
* MONGO_PASS - MongoDB user password
* PUSHGATEWAY_METRICS_ENABLED - turn on pushgetway for prometheus
* PUSHGATEWAY_PROTOCOL - connection protocol: http or https
* PUSHGATEWAY_METRICS_SERVICE_URI - resource URI or connection string with all parameters in it
* PUSHGATEWAY_METRICS_SERVICE_HOST - host name or IP address
* PUSHGATEWAY_METRICS_SERVICE_PORT - port number
* HTTP_ENABLED - turn on HTTP endpoint
* HTTP_PORT - HTTP port number (default: 8080)
* GRPC_ENABLED - turn on GRPC endpoint
* GRPC_PORT - GRPC port number (default: 8090)


Start the microservice as process:
```bash
dart ./bin/main.dart
```

Run the microservice in docker:
Then use the following command:
```bash
./run.ps1
```

Launch the microservice with all infrastructure services using docker-compose:
```bash
docker-compose -f ./docker/docker-compose.yml up
```

## Use

Add this to your package's pubspec.yaml file:
```yaml
dependencies:
  pip_services_beacons_dart: version
```

Now you can install package from the command line:
```bash
pub get
```

Inside your code get the reference to the client SDK
```dart
import 'package:pip_services3_commons/pip_services3_commons.dart';

import 'package:pip_services_beacons_dart/pip_services_beacons_dart.dart';
```

Instantiate the client
```dart
// Create the client instance
var client = new BeaconsCommandableHttpClientV1();
```

Define client connection parameters
```dart
// Client configuration
var httpConfig = ConfigParams.fromTuples(
	"connection.protocol", "http",
	"connection.host", "localhost",
	"connection.port", 8080
);

// Configure the client
client.configure(httpConfig);
```

Connect to the microservice
```dart
// Connect to the microservice
try{
  await client.open(null)
}catch() {
  // Error handling...
}  

// Work with the microservice
```

Call the microservice using the client API
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

## Develop

For development you shall install the following prerequisites:
* Dart SDK 2
* Visual Studio Code or another IDE of your choice
* Docker

Install dependencies:
```bash
pub get
```

Compile the microservice:
```bash
tsc
```

Before running tests launch infrastructure services and required microservices:
```bash
docker-compose -f ./docker-compose.dev.yml up
```

Run automated tests:
```bash
pub run test
```

Run automated benchmarks:
```bash
npm run benchmark
```

Generate GRPC protobuf stubs:
```bash
./protogen.ps1
```

Generate API documentation:
```bash
./docgen.ps1
```

Before committing changes run dockerized build and test as:
```bash
./build.ps1
./test.ps1
./package.ps1
./run.ps1
./clear.ps1
```

## Contacts

This microservice was created and currently maintained by *Sergey Seroukhov*.
