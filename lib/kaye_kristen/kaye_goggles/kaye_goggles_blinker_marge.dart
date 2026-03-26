import 'package:kaye/kaye_kristen/kaye_goggles/kaye_bury_patsy.dart';

class KayeGogglesBlinkerMarge {
  String? version;
  List<KayeBuryPatsy>? coin;
  List<KayeBuryPatsy>? vip;
  List<KayeBuryPatsy>? popup;
  List<KayeBuryPatsy>? first;
  List<KayeBuryPatsy>? others;

  static KayeGogglesBlinkerMarge fromJson(Map<String, dynamic> json) {
    return KayeGogglesBlinkerMarge()
      ..version = json["version"] as String
      ..coin = (json["coin"] as List<dynamic>?)
          ?.map((e) => KayeBuryPatsy.fromJson(e as Map<String, dynamic>))
          .toList()
      ..vip = (json["vip"] as List<dynamic>?)
          ?.map((e) => KayeBuryPatsy.fromJson(e as Map<String, dynamic>))
          .toList()
      ..popup = (json["popup"] as List<dynamic>?)
          ?.map((e) => KayeBuryPatsy.fromJson(e as Map<String, dynamic>))
          .toList()
      ..first = (json["first"] as List<dynamic>?)
          ?.map((e) => KayeBuryPatsy.fromJson(e as Map<String, dynamic>))
          .toList()
      ..others = (json["others"] as List<dynamic>?)
          ?.map((e) => KayeBuryPatsy.fromJson(e as Map<String, dynamic>))
          .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      "version": version,
      "coin": coin?.map((e) => e.toJson()).toList(),
      "vip": vip?.map((e) => e.toJson()).toList(),
      "popup": popup?.map((e) => e.toJson()).toList(),
      "first": first?.map((e) => e.toJson()).toList(),
      "others": others?.map((e) => e.toJson()).toList(),
    };
  }
}
