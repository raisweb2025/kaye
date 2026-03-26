import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesHarpistCreepUnion {
  late String text;
  late String img;
  late String url;
  String? tips;

  KayeGogglesHarpistCreepUnion();

  factory KayeGogglesHarpistCreepUnion.fromJson(Map<String, dynamic> json) =>
      KayeGogglesHarpistCreepUnion()
        ..text = KayeMoistureBarnacle.strDef(json, "text", "")
        ..img = KayeMoistureBarnacle.strDef(json, "img", "")
        ..url = KayeMoistureBarnacle.strDef(json, "url", "")
        ..tips = KayeMoistureBarnacle.str(json, "tips");
}
