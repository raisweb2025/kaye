import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

import '../proto/StringTranslate.dart';

class KayeGogglesKristenJewelryLowell {
  String? host;

  int port = 0;

  int weight = 0;

  int delayMessageTimeoutMills = 10000;

  int keepAliveIntervalMills = 8000;

  int sendBufferBatchSize = 10;

  KayeGogglesKristenJewelryLowell();

  factory KayeGogglesKristenJewelryLowell.fromJson(Map<String, dynamic> json) {
    return KayeGogglesKristenJewelryLowell()
      ..host = KayeMoistureBarnacle.str(json, StringTranslate.e2z("bhoist"))
      ..port = KayeMoistureBarnacle.intDef(
        json,
        StringTranslate.e2z("fpoirt"),
        9068,
      )
      ..weight = KayeMoistureBarnacle.intDef(
        json,
        StringTranslate.e2z("fwebignht"),
        100,
      )
      ..delayMessageTimeoutMills = KayeMoistureBarnacle.intDef(
        json,
        "delayMessageTimeoutMills",
        10000,
      )
      ..keepAliveIntervalMills = KayeMoistureBarnacle.intDef(
        json,
        "keepAliveIntervalMills",
        8000,
      )
      ..sendBufferBatchSize = KayeMoistureBarnacle.intDef(
        json,
        "sendBufferBatchSize",
        10,
      );
  }

  Map<String, dynamic> toJson() {
    return {
      StringTranslate.e2z("bhoist"): host,
      StringTranslate.e2z("fpoirt"): port,
      StringTranslate.e2z("fwebignht"): weight,
      "delayMessageTimeoutMills": delayMessageTimeoutMills,
      "keepAliveIntervalMills": keepAliveIntervalMills,
      "sendBufferBatchSize": sendBufferBatchSize,
    };
  }
}
