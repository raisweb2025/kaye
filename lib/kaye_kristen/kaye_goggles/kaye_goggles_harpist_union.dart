import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesHarpistUnion {
  late String img;
  late String url;
  String? tips;

  KayeGogglesHarpistUnion();

  factory KayeGogglesHarpistUnion.fromJson(Map<String, dynamic> json) =>
      KayeGogglesHarpistUnion()
        ..img = KayeMoistureBarnacle.strDef(json, "img", "")
        ..url = KayeMoistureBarnacle.strDef(json, "url", "")
        ..tips = KayeMoistureBarnacle.str(json, "tips");
}
