import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesStarfish {
  KayeGogglesStarfish([this.id, this.name, this.icon]);

  int? id;
  String? name;
  String? icon;

  factory KayeGogglesStarfish.fromJson(Map<String, dynamic> json) {
    return KayeGogglesStarfish(
      KayeMoistureBarnacle.intDef(json, "id", 0),
      KayeMoistureBarnacle.strDef(json, "name", ""),
      KayeMoistureBarnacle.strDef(json, "icon", ""),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"id": id, "name": name, "icon": icon};
  }
}
