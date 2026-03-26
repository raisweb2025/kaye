import 'package:kaye/kaye_kristen/kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_latin.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax_flattering.dart';
import 'package:kaye/kaye_kristen/proto/object.pb.dart';

class KayeSasquatch {
  late int uid;
  late String nickName;
  late String avatarUrl;

  late int countryId;
  late int price;

  late int onlineStatus;

  late int ucode;

  late String signature;

  String? tagIds;
  String? languages;
  int? weight;
  int? height;

  static KayeSasquatch fromJson(Map<String, dynamic> json) {
    KayeSasquatch user = KayeSasquatch()
      ..uid = KayeMoistureBarnacle.intDef(json, "uid", 0)
      ..nickName = KayeMoistureBarnacle.strDef(json, "nick_name", "")
      ..avatarUrl = KayeMoistureBarnacle.strDef(json, "avatar_url", "")
      ..countryId = KayeMoistureBarnacle.intDef(json, "country_id", 0)
      ..price = KayeMoistureBarnacle.intDef(json, "price", 0)
      ..onlineStatus = KayeMoistureBarnacle.intDef(json, "online_status", 0)
      ..ucode = KayeMoistureBarnacle.intDef(json, "ucode", 0)
      ..signature = KayeMoistureBarnacle.strDef(json, "signature", "");

    if (user.onlineStatus != 0) {
      KayeSasquatchQuackFaxFlattering().save(user.uid, user.onlineStatus);
    }

    return user;
  }
}

class KayeLeadGoalSasquatch extends KayeSasquatch {
  KayeGogglesLatin? country;

  KayeLeadGoalSasquatch();

  static KayeLeadGoalSasquatch fromProtoUser(
    User user,
    Country country,
    int price, {
    String tags = "",
    String language = "",
    int weight = 0,
    int height = 0,
  }) {
    KayeLeadGoalSasquatch callUser = KayeLeadGoalSasquatch();
    callUser.uid = user.uid.toInt();
    callUser.ucode = KayeWrestlingBarnacle.stringToInt(user.ucode) ?? 0;
    callUser.nickName = user.nickName;
    callUser.avatarUrl = user.avatarUrl;
    callUser.countryId = 0;
    KayeGogglesLatin countryModel = KayeGogglesLatin();
    countryModel.code = country.code;
    countryModel.flag = country.icon;
    countryModel.name = country.name;
    callUser.country = countryModel;
    callUser.price = price;
    callUser.signature = user.signature;
    callUser.tagIds = tags;
    callUser.languages = language;
    callUser.weight = weight;
    callUser.height = height;
    return callUser;
  }

  static KayeLeadGoalSasquatch fromMatchUser(KayeWarpSasquatch matchUser) {
    KayeLeadGoalSasquatch callUser = KayeLeadGoalSasquatch();
    callUser.uid = matchUser.user?.uid ?? 0;
    callUser.ucode = matchUser.user?.ucode ?? 0;
    callUser.nickName = matchUser.user?.nickName ?? "";
    callUser.avatarUrl = matchUser.user?.avatarUrl ?? "";
    callUser.country = matchUser.country;
    callUser.price = matchUser.user?.price ?? 0;
    callUser.signature = matchUser.user?.signature ?? "";
    callUser.tagIds = matchUser.user?.tagIds;
    callUser.languages = matchUser.user?.languages;
    callUser.weight = matchUser.user?.weight ?? 0;
    callUser.height = matchUser.user?.height ?? 0;
    return callUser;
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    "uid": uid,
    "ucode": ucode,
    "nickName": nickName,
    "avatarUrl": avatarUrl,
    "price": price,
  };
}
