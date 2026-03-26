import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesSasquatchUniversalWendy {
  int? id;
  int? business_id;
  int? type;
  int? status;
  String? type_desc;
  String? type_icon;
  String? status_desc;
  String? info;
  double? amount;
  int? create_time;
  KayeGogglesSasquatchUniversalWendyCelery? extend;

  static KayeGogglesSasquatchUniversalWendy fromJson(
    Map<String, dynamic> json,
  ) {
    return KayeGogglesSasquatchUniversalWendy()
      ..id = KayeMoistureBarnacle.intDef(json, "id", 0)
      ..business_id = KayeMoistureBarnacle.intDef(json, "business_id", 0)
      ..type = KayeMoistureBarnacle.intDef(json, "type", 0)
      ..status = KayeMoistureBarnacle.intDef(json, "status", 0)
      ..type_desc = KayeMoistureBarnacle.strDef(json, "type_desc", "")
      ..type_icon = KayeMoistureBarnacle.strDef(json, "type_icon", "")
      ..status_desc = KayeMoistureBarnacle.strDef(json, "status_desc", "")
      ..info = KayeMoistureBarnacle.strDef(json, "info", "")
      ..amount = KayeMoistureBarnacle.doubleDef(json, "amount", 0)
      ..create_time = KayeMoistureBarnacle.intDef(json, "create_time", 0)
      ..extend = KayeGogglesSasquatchUniversalWendyCelery.fromJson(
        json['extend'],
      );
  }
}

class KayeGogglesSasquatchUniversalWendyCelery {
  int? duration;
  String? gift_icon;

  static KayeGogglesSasquatchUniversalWendyCelery fromJson(
    Map<String, dynamic> json,
  ) {
    return KayeGogglesSasquatchUniversalWendyCelery()
      ..duration = KayeMoistureBarnacle.intDef(json, "duration", 0)
      ..gift_icon = KayeMoistureBarnacle.strDef(json, "gift_icon", "");
  }
}
