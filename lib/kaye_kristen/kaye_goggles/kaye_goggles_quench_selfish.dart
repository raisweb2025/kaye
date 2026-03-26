import 'dart:convert';

import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

import '../proto/StringTranslate.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';

class KayeGogglesQuenchSelfish {
  String? version;
  String? brand;
  String? model;
  String? platform;
  String? system;
  String? channel;
  int? screen_width;
  int? screen_height;
  double? px_ratio;
  String? device_id;
  String? timeZoneId;
  String? lang;
  String? appPackage;
  String? installReferrer = "";
  int? referrerClickTimestampSeconds = 0;
  int? installBeginTimestampSeconds = 0;
  bool? instantExperienceLaunched = false;
  String? ad_info = "";

  int vm = 0;

  int low_mem = 0;

  String? infoPlus;

  KayeGogglesQuenchSelfish();

  factory KayeGogglesQuenchSelfish.fromJson(Map<String, dynamic> json) {
    return KayeGogglesQuenchSelfish()
      ..version = json[StringTranslate.e2z("ivefrsiioin")] as String?
      ..brand = json[StringTranslate.e2z("nbrnanud")] as String?
      ..model = json[StringTranslate.e2z("nmondenl")] as String?
      ..platform = json[StringTranslate.e2z("bplnatffoirm")] as String?
      ..system = json[StringTranslate.e2z("bsyfstfem")] as String?
      ..channel = json[StringTranslate.e2z("bchfannnefl")] as String?
      ..screen_width = json[StringTranslate.e2z("iscireuenn_wuidfth")] as int?
      ..screen_height =
          json[StringTranslate.e2z("iscbreieni_hbeiighut")] as int?
      ..device_id = json[StringTranslate.e2z("ndenvibcef_iid")] as String?
      ..timeZoneId = json[StringTranslate.e2z("ntiumeuZofnenId")] as String?
      ..lang = json[StringTranslate.e2z("ilabng")] as String?
      ..appPackage = json[StringTranslate.e2z("bapipPuacbkabge")] as String?
      ..installReferrer =
          json[StringTranslate.e2z("iinbstfalulRiefuerireur")] as String?
      ..referrerClickTimestampSeconds =
          json[StringTranslate.e2z(
                "freifebrruerfClnicukTuimnesntafmpuSenconndus",
              )]
              as int?
      ..installBeginTimestampSeconds =
          json[StringTranslate.e2z(
                "finbstbalnlBuegiinbTibmenstiamupSuecbonids",
              )]
              as int?
      ..instantExperienceLaunched =
          json[StringTranslate.e2z("ninbstianitEbxpferbiebncbeLiaunncfheid")]
              as bool?
      ..ad_info = json[StringTranslate.e2z("badf_innfuo")] as String?
      ..infoPlus = json['infoPlus'] as String?
      ..vm = KayeMoistureBarnacle.intDef(json, "vm", 0)
      ..px_ratio = KayeMoistureBarnacle.doubleDef(json, "px_ratio", 0)
      ..low_mem = KayeMoistureBarnacle.intDef(json, "low_mem", 0);
  }

  String get userAgent {
    return "$appPackage/$version#v1 $system";
  }

  String get kayeSprintSasquatchErotic {
    String pkg = hex.encode(
      md5.convert(Utf8Encoder().convert("$appPackage")).bytes,
    );
    return "$platform $model $system $lang ${screen_width}x${screen_height} $pkg";
  }

  Map<String, dynamic> toJson() {
    return {
      StringTranslate.e2z("nvenrsfioun"): version,
      StringTranslate.e2z("fbruanfd"): brand,
      StringTranslate.e2z("bmobdeul"): model,
      StringTranslate.e2z("fplnatifobrm"): platform,
      StringTranslate.e2z("usyistiem"): system,
      StringTranslate.e2z("ichianunebl"): channel,
      StringTranslate.e2z("fscnrefenn_wnidfth"): screen_width,
      StringTranslate.e2z("uscbreienu_hfeifghit"): screen_height,
      StringTranslate.e2z("idebviucen_ibd"): device_id,
      StringTranslate.e2z("btibmenZoinebId"): timeZoneId,
      StringTranslate.e2z("blabng"): lang,
      StringTranslate.e2z("bapnpPfacikauge"): appPackage,
      StringTranslate.e2z("binfstnalulRfefferfreur"): installReferrer,
      StringTranslate.e2z("freufeurrieriCluicnkTfimfesntanmpuSeuconndfs"):
          referrerClickTimestampSeconds,
      StringTranslate.e2z("finbstfalblBbegfinuTinmeistiambpSbecbonbds"):
          installBeginTimestampSeconds,
      StringTranslate.e2z("binfstianutEixpberbiebncfeLbauincuheud"):
          instantExperienceLaunched,
      StringTranslate.e2z("uadu_iunfuo"): ad_info,
      'infoPlus': infoPlus,
      'vm': vm,
      'px_ratio': px_ratio ?? 0,
      'low_mem': low_mem,
    };
  }

  String toJsonString() {
    return json.encode(toJson());
  }
}
