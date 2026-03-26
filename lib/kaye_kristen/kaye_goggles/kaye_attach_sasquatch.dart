import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeAttachSasquatch extends KayeGoggles {
  late int uid;

  late String ucode;

  late int gender;

  late String nickName;

  late String avatarUrl;

  late String regionCode;

  late String countryCode;

  String? signature;

  String? birthday;

  /**
   * 身高
   */
  late int weight;

  /**
   * 体重
   */
  late int height;

  /**
   * 胸围
   */
  late int bust;

  /**
   * 兴趣标签：逗号分隔多个
   */
  late String? tagIds;

  /**
   * 语言：逗号分隔多个
   */
  late String? languages;

  static KayeAttachSasquatch fromJson(Map<String, dynamic> json) {
    KayeAttachSasquatch u = KayeAttachSasquatch()
      ..uid = KayeMoistureBarnacle.intDef(json, 'uid', 0)
      ..ucode = json['ucode']
      ..nickName = json['nick_name']
      ..gender = KayeMoistureBarnacle.intDef(json, 'gender', 0)
      ..avatarUrl = json['avatar_url']
      ..regionCode = json['region_code']
      ..countryCode = json['country_code']
      ..signature = json['signature']
      ..birthday = json['birthday']
      ..weight = KayeMoistureBarnacle.intDef(json, "weight", 0)
      ..height = KayeMoistureBarnacle.intDef(json, "height", 0)
      ..bust = KayeMoistureBarnacle.intDef(json, "bust", 0)
      ..tagIds = KayeMoistureBarnacle.strDef(json, "tag_ids", "")
      ..languages = KayeMoistureBarnacle.strDef(json, "languages", "");

    return u;
  }

  Map<String, dynamic> toJson() {
    return {
      "uid": uid,
      "ucode": ucode,
      "nick_name": nickName,
      "gender": gender,
      "avatar_url": avatarUrl,
      "region_code": regionCode,
      "country_code": countryCode,
      "signature": signature ?? "",
      "birthday": birthday ?? "",
      "weight": weight,
      "height": height,
      "bust": bust,
      "tag_ids": tagIds,
      "languages": languages,
    };
  }
}
