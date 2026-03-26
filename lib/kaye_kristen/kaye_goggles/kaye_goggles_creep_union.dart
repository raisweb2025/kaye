import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesCreepUnion {
  late String text;
  late String url;
  String? img;
  String? tips;

  KayeGogglesCreepUnion();

  factory KayeGogglesCreepUnion.fromJson(Map<String, dynamic> json) =>
      KayeGogglesCreepUnion()
        ..text = KayeMoistureBarnacle.strDef(json, "text", "")
        ..url = KayeMoistureBarnacle.strDef(json, "url", "")
        ..img = KayeMoistureBarnacle.str(json, "img")
        ..tips = KayeMoistureBarnacle.str(json, "tips");
}
