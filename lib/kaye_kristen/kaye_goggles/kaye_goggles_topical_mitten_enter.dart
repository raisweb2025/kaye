import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesTopicalMittenEnter {
  late String? bannerId;
  late int? regionType;
  late int? cardType;
  late int? limit;
  late int? freeType;
  late int? freeTypeCount;
  late int? timeInterval;
  late int? freeTimeoutCount;
  late String? bgColor;

  KayeGogglesTopicalMittenEnter();

  factory KayeGogglesTopicalMittenEnter.fromJson(Map<String, dynamic> json) =>
      KayeGogglesTopicalMittenEnter()
        ..bannerId = KayeMoistureBarnacle.strDef(json, "banner_id", "")
        ..regionType = KayeMoistureBarnacle.intDef(json, "region_type", 0)
        ..cardType = KayeMoistureBarnacle.intDef(json, "card_type", 0)
        ..limit = KayeMoistureBarnacle.intDef(json, "limit", 0)
        ..freeType = KayeMoistureBarnacle.intDef(json, "free_type", 0)
        ..freeTypeCount = KayeMoistureBarnacle.intDef(
          json,
          "free_type_count",
          0,
        )
        ..timeInterval = KayeMoistureBarnacle.intDef(json, "time_interval", 0)
        ..freeTimeoutCount = KayeMoistureBarnacle.intDef(
          json,
          "free_timeout_count",
          0,
        )
        ..bgColor = KayeMoistureBarnacle.strDef(json, "bg_color", "");
}
