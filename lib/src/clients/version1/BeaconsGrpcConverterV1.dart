import '../../generated/beacons_v1.pb.dart' as messages;
import 'package:pip_services3_commons/pip_services3_commons.dart';
import '../../data/version1/BeaconV1.dart';

class BeaconsGrpcConverterV1 {
  static dynamic fromError(err) {
    if (err == null) return null;

    var description = ErrorDescriptionFactory.create(err);
    var obj = messages.ErrorDescription();

    obj.type = description.type ?? '';
    obj.category = description.category ?? '';
    obj.code = description.code ?? '';
    obj.correlationId = description.correlation_id ?? '';
    obj.status =
        description.status != null ? description.status.toString() : '';
    obj.message = description.message ?? '';
    obj.cause = description.cause ?? '';
    obj.stackTrace = description.stack_trace ?? '';
    if (description.details != null) {
      obj.details.addAll(description.details.innerValue());
    }

    return obj;
  }

  static dynamic toError(obj) {
    if (obj == null || (obj.getCategory() == '' && obj.getMessage() == '')) {
      return null;
    }

    var description = ErrorDescription();
    description.fromJson({
      'type': obj.type,
      'category': obj.category,
      'code': obj.code,
      'correlation_id': obj.correlationId,
      'status': obj.status,
      'message': obj.message,
      'cause': obj.cause,
      'stack_trace': obj.stackTrace,
      'details': obj.details
    });

    return ApplicationExceptionFactory.create(description);
  }

  // private static toJson(value: any): string {
  //     if (value == null || value == '') return null;
  //     return JSON.stringify(value);
  // }

  // private static fromJson(value: string): any {
  //     if (value == null || value == '') return null;
  //     return JSON.parse(value);
  // }

  static dynamic fromPagingParams(PagingParams paging) {
    if (paging == null) return null;

    var obj = messages.PagingParams();
    if (paging.skip != null) {
      obj.skip += paging.skip;
    }
    if (paging.take != null) {
      obj.take = paging.take;
    }
    if (paging.total != null) {
      obj.total = paging.total;
    }

    return obj;
  }

  static PagingParams toPagingParams(obj) {
    if (obj == null) {
      return null;
    }

    var paging = PagingParams(obj.skip, obj.take, obj.total);

    return paging;
  }

  static messages.Point fromPoint(Map<String, dynamic> point) {
    if (point == null) return null;

    var obj = messages.Point();
    obj.type = point['type'];
    for (var coord in point['coordinates']) {
      obj.coordinates.add(coord);
    }

    return obj;
  }

  static Map<String, dynamic> toPoint(messages.Point obj) {
    if (obj == null) return null;

    var point = {'type': obj.type, 'coordinates': obj.coordinates};

    return point;
  }

  static messages.Beacon fromBeacon(BeaconV1 beacon) {
    if (beacon == null) return null;

    var obj = messages.Beacon();

    obj.id = beacon.id;
    obj.siteId = beacon.site_id;
    obj.type = beacon.type;
    obj.udi = beacon.udi;
    obj.label = beacon.label;
    var center = BeaconsGrpcConverterV1.fromPoint(beacon.center);
    obj.center = center;
    obj.radius = beacon.radius;

    return obj;
  }

  static BeaconV1 toBeacon(messages.Beacon obj) {
    if (obj == null) return null;

    var beacon = BeaconV1();
    beacon.fromJson({
      'id': obj.id,
      'site_id': obj.siteId,
      'type': obj.type,
      'udi': obj.udi,
      'label': obj.label,
      'center': BeaconsGrpcConverterV1.toPoint(obj.center),
      'radius': obj.radius
    });

    return beacon;
  }

  static messages.BeaconsPage fromBeaconsPage(DataPage<BeaconV1> page) {
    if (page == null) return null;

    var obj = messages.BeaconsPage();
    if (page.total != null) {
      obj.total += page.total;
    }
    var data = <messages.Beacon>[];
    for (var item in page.data) {
      data.add(fromBeacon(item));
    }
    ;
    obj.data.addAll(data);

    return obj;
  }

  static DataPage<BeaconV1> toBeaconsPage(messages.BeaconsPage obj) {
    if (obj == null) return null;

    var data = <BeaconV1>[];
    for (var item in obj.data) {
      data.add(toBeacon(item));
    }
    return DataPage<BeaconV1>(data, obj.total.toInt());
  }
}
