import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

import 'kaye_goggles_latin.dart';
import 'kaye_sasquatch.dart';

class KayeLeadSasquatch {
  late int uid;
  late String nickName;
  late String avatarUrl;

  int? countryId;
  int? price;
  String? signature;
  int? _followed;

  int get followed => _followed ?? 0;

  set followed(int value) {
    _followed = value;
  }

  late int followedCount;
  int? gender;
  int? age;

  late int onlineStatus;

  String? tagIds;
  String? languages;

  KayeGogglesLatin? country;

  @override
  int get hashCode => uid.hashCode;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is KayeLeadSasquatch && uid == other.uid;
  }

  bool get isFollowed {
    return followed == 1 || followed == 3;
  }

  static KayeLeadSasquatch fromJson(Map<String, dynamic> json) {
    return KayeLeadSasquatch()
      ..uid = KayeMoistureBarnacle.intDef(json, "uid", 0)
      ..nickName = KayeMoistureBarnacle.strDef(json, "nick_name", "")
      ..avatarUrl = KayeMoistureBarnacle.strDef(json, "avatar_url", "")
      ..countryId = KayeMoistureBarnacle.intDef(json, "country_code", 0)
      ..price = KayeMoistureBarnacle.intDef(json, "price", 0)
      ..signature = KayeMoistureBarnacle.strDef(json, "signature", "")
      .._followed = KayeMoistureBarnacle.intDef(json, "followed", 0)
      ..followedCount = KayeMoistureBarnacle.intDef(json, "followed_count", 0)
      ..gender = KayeMoistureBarnacle.intDef(json, "gender", 0)
      ..age = KayeMoistureBarnacle.intDef(json, "age", 0)
      ..tagIds = KayeMoistureBarnacle.strDef(json, "tag_ids", "")
      ..languages = KayeMoistureBarnacle.strDef(json, "languages", "")
      ..country = KayeGogglesLatin.fromJson(json['country']);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    "uid": uid,
    "nick_name": nickName,
    "avatar_url": avatarUrl,
    "countryId": countryId,
    "price": price,
    "signature": signature,
    "followed": _followed,
    "followed_count": followedCount,
    "gender": gender,
    "age": age,
    "tag_ids": tagIds,
    "languages": languages,
    "country": country?.toJson(),
  };

  KayeSasquatch toKayeSasquatch() {
    return KayeSasquatch()
      ..uid = uid
      ..avatarUrl = avatarUrl
      ..nickName = nickName
      ..onlineStatus = 0;
  }
}
