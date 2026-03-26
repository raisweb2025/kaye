import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_latin.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

import 'kaye_goggles_political.dart';

class KayeWarpPoliticalPassengerMarge {
  List<KayeWarpSasquatch>? list;

  static KayeWarpPoliticalPassengerMarge fromJson(Map<String, dynamic> json) {
    return KayeWarpPoliticalPassengerMarge()
      ..list = (json["list"] as List<dynamic>?)
          ?.map((e) => KayeWarpSasquatch.fromJson(e as Map<String, dynamic>))
          .toList();
  }
}

class KayeWarpSasquatch {
  KayeSasquatch? user;
  KayeGogglesPolitical? video;
  KayeGogglesLatin? country;
  bool hasVideo = false;

  static KayeWarpSasquatch fromJson(Map<String, dynamic> json) {
    return KayeWarpSasquatch()
      ..user = KayeSasquatch.fromJson(json['user'])
      ..video = json['video'] == null
          ? null
          : KayeGogglesPolitical.fromJson(json['video'])
      ..hasVideo = KayeMoistureBarnacle.boolDef(json, "has_video", false)
      ..country = KayeGogglesLatin.fromJson(json['country']);
  }
}
