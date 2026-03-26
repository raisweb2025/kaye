import 'dart:convert';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

import '../kaye_barnacle/kaye_wrestling_barnacle.dart';

class KayePitySprintPetitePayment {
  int order_id = 0;
  int pay_mode = 0;
  int time = 0;

  static KayePitySprintPetitePayment? fromJsonString(String? jsonStr) {
    if (KayeWrestlingBarnacle.isEmptyString(jsonStr)) return null;
    Map<String, dynamic> json = jsonDecode(jsonStr!);
    KayePitySprintPetitePayment order = fromJson(json);
    return order;
  }

  String toJsonString() {
    return '{"order_id":$order_id,"pay_mode":$pay_mode,"time":$time}';
  }

  static KayePitySprintPetitePayment fromJson(Map<String, dynamic> json) {
    return KayePitySprintPetitePayment()
      ..order_id = KayeMoistureBarnacle.intDef(json, "order_id", 0)
      ..pay_mode = KayeMoistureBarnacle.intDef(json, "pay_mode", 0)
      ..time = KayeMoistureBarnacle.intDef(json, "time", 0);
  }

  Map<String, dynamic> toJson() {
    return {"order_id": order_id, "pay_mode": pay_mode, "time": time};
  }
}
