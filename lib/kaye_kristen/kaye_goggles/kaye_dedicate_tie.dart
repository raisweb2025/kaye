import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeDedicateTie {
  late int version;

  late dynamic val;

  static KayeDedicateTie fromJson(Map<String, dynamic> json) {
    return KayeDedicateTie()
      ..version = KayeMoistureBarnacle.intDef(json, 'version', 0)
      ..val = json['val'];
  }

  Map<String, dynamic> toJson() {
    return {"version": version, "val": val};
  }
}
