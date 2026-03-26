import 'package:kaye/kaye_kristen/kaye_cat_lava/kaye_lava_closing.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';
import 'package:kaye/kaye_kristen/proto/kaye_gray.pb.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeLeadGoalLegally {
  int callId = 0;
  KayeSasquatch? from;
  KayeSasquatch? to;
  KayeGogglesLegally gift = KayeGogglesLegally();

  KayeLeadGoalLegally();
}

class KayeGogglesLegally {
  KayeGogglesLegally([
    this.id,
    this.name,
    this.icon,
    this.price,
    this.value,
    this.minDuration,
    this.maxDuration,
    this.animationType,
    this.animationUrl,
    this.totalCount,
  ]);

  int? id;
  String? name;
  String? icon;
  int? price;
  int? value;
  int? minDuration;
  int? maxDuration;
  int? animationType;
  String? animationUrl;
  int? totalCount;

  static KayeGogglesLegally fromProto(Gift protoGift) {
    KayeGogglesLegally gift = KayeGogglesLegally();
    gift.id = protoGift.id.toInt();
    gift.name = protoGift.name;
    gift.icon = protoGift.icon;
    gift.price = protoGift.price;
    gift.value = protoGift.value;
    gift.minDuration = protoGift.minDuration;
    gift.maxDuration = protoGift.maxDuration;
    gift.animationType = protoGift.animationType;
    gift.animationUrl = protoGift.animationUrl;
    return gift;
  }

  static KayeGogglesLegally? fromVoGift(VoGift? voGift) {
    if (voGift == null) return null;
    KayeGogglesLegally gift = KayeGogglesLegally();
    gift.id = voGift.id;
    gift.name = voGift.name;
    gift.icon = voGift.icon;
    gift.price = voGift.price;
    gift.value = voGift.value;
    gift.minDuration = voGift.minDuration;
    gift.maxDuration = voGift.maxDuration;
    gift.animationType = voGift.animationType;
    gift.animationUrl = voGift.animationUrl;
    return gift;
  }

  factory KayeGogglesLegally.fromJson(Map<String, dynamic> json) {
    return KayeGogglesLegally(
      KayeMoistureBarnacle.intDef(json, "id", 0),
      KayeMoistureBarnacle.strDef(json, "name", ""),
      KayeMoistureBarnacle.strDef(json, "icon", ""),
      KayeMoistureBarnacle.intDef(json, "price", 0),
      KayeMoistureBarnacle.intDef(json, "value", 0),
      KayeMoistureBarnacle.intDef(json, "min_duration", 0),
      KayeMoistureBarnacle.intDef(json, "max_duration", 0),
      KayeMoistureBarnacle.intDef(json, "animation_type", 0),
      KayeMoistureBarnacle.strDef(json, "animation_url", ""),
      KayeMoistureBarnacle.intDef(json, "total_count", 0),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "icon": icon,
      "price": price,
      "value": value,
      "min_duration": minDuration,
      "max_duration": maxDuration,
      "animation_type": animationType,
      "animation_url": animationUrl,
      "total_count": totalCount,
    };
  }
}
