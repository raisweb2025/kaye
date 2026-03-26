import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesCrisp {
  late String id;
  late String name;

  KayeGogglesCrisp(this.id, this.name);

  static KayeGogglesCrisp fromJson(Map<String, dynamic> json) {
    return KayeGogglesCrisp(
      KayeMoistureBarnacle.strDef(json, 'id', ""),
      KayeMoistureBarnacle.strDef(json, 'name', ""),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name};
  }
}
