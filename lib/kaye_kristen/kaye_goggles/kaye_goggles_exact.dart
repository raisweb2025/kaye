import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesExact {
  late String id;
  late String name;

  KayeGogglesExact(this.id, this.name);

  static KayeGogglesExact fromJson(Map<String, dynamic> json) {
    return KayeGogglesExact(
      KayeMoistureBarnacle.strDef(json, 'id', ""),
      KayeMoistureBarnacle.strDef(json, 'name', ""),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name};
  }
}
