import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_mover.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeLavaLactose {
  List<KayeGogglesMover> regions = [];

  late int page;

  late bool hasMore;

  List<KayeSasquatch> records = [];

  Map<int, CountryVO> countryMap = {};

  static KayeLavaLactose fromJson(Map<String, dynamic> json) {
    KayeLavaLactose discover = KayeLavaLactose();

    var regions = json['regions'];
    if (regions != null) {
      discover.regions = (regions as List<dynamic>?)!
          .map((e) => KayeGogglesMover.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var records = json['records'];
    if (records != null) {
      discover.records = (records as List<dynamic>?)!
          .map((e) => KayeSasquatch.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var countryMap = json['country_map'];
    if (countryMap != null) {
      for (var e in (countryMap as Map<String, dynamic>?)!.entries) {
        discover.countryMap![KayeWrestlingBarnacle.parseIntDef(e.key, 0)] =
            CountryVO.fromJson(e.value);
      }
    }

    return discover
      ..page = KayeMoistureBarnacle.intDef(json, 'page', 0)
      ..hasMore = KayeMoistureBarnacle.boolDef(json, 'has_more', true);
  }
}

class CountryVO {
  late String code;
  late String flag;

  static CountryVO fromJson(Map<String, dynamic> json) {
    return CountryVO()
      ..code = KayeMoistureBarnacle.strDef(json, "code", "")
      ..flag = KayeMoistureBarnacle.strDef(json, "flag", "");
  }

  Map<String, dynamic> toJson() {
    return {"code": code, "flag": flag};
  }
}
