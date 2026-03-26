import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeLavaMediocrePassenger {
  late int page;

  late bool hasMore;

  List<KayeSasquatch> records = [];

  static KayeLavaMediocrePassenger fromJson(Map<String, dynamic> json) {
    KayeLavaMediocrePassenger list = KayeLavaMediocrePassenger();

    var records = json['records'];
    if (records != null) {
      list.records = (records as List<dynamic>?)!
          .map((e) => KayeSasquatch.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    return list
      ..page = KayeMoistureBarnacle.intDef(json, 'page', 0)
      ..hasMore = KayeMoistureBarnacle.boolDef(json, 'has_more', true);
  }
}
