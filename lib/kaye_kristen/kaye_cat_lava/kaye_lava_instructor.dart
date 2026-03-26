import 'package:kaye/kaye_kristen/kaye_cat_lava/kaye_lava_lactose.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';

import '../kaye_goggles/kaye_goggles_latin.dart';
import '../kaye_barnacle/kaye_moisture_barnacle.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';

class KayeLavaInstructor {
  int page = 1;

  bool hasMore = false;

  List<KayeSasquatch> records = [];

  Map<int, CountryVO> countryMap = {};

  static KayeLavaInstructor fromJson(Map<String, dynamic> json) {
    KayeLavaInstructor follows = KayeLavaInstructor();

    var records = json['records'];
    if (records != null) {
      follows.records = (records as List<dynamic>?)!
          .map((e) => KayeSasquatch.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var countryMap = json['country_map'];
    if (countryMap != null) {
      for (var e in (countryMap as Map<String, dynamic>?)!.entries) {
        follows.countryMap[KayeWrestlingBarnacle.parseIntDef(e.key, 0)] =
            CountryVO.fromJson(e.value);
      }
    }

    return follows
      ..page = KayeMoistureBarnacle.intDef(json, 'page', 1)
      ..hasMore = KayeMoistureBarnacle.boolDef(json, 'has_more', true);
  }
}
