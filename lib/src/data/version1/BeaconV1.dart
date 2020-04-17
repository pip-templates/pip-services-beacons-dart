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

  BeaconV1.from(this.id, this.site_id, this.type, this.udi, this.label,
      this.center, this.radius);

  factory BeaconV1.fromJson(Map<String, dynamic> json) {
    return BeaconV1.from(json['id'], json['site_id'], json['type'], json['udi'],
        json['label'], json['center'], json['radius']);
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
