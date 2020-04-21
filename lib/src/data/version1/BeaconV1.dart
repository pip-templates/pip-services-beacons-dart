import 'package:pip_services3_commons/pip_services3_commons.dart';

class BeaconV1 implements IStringIdentifiable {
  @override
  String id;
  String site_id;
  String type;
  String udi;
  String label;
  Map<String, dynamic> center; // GeoJson
  double radius;

  BeaconV1();

  BeaconV1.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    site_id = map['site_id'];
    type = map['type'];
    udi = map['udi'];
    label = map['label'];
    center = map['center']; // GeoJson
    radius = map['radius'];
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['id'];
    site_id = json['site_id'];
    type = json['type'];
    udi = json['udi'];
    label = json['label'];
    center = json['center']; // GeoJson
    radius = json['radius'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'site_id': site_id,
      'type': type,
      'udi': udi,
      'label': label,
      'center': center, // GeoJson
      'radius': radius
    };
  }
}
