import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesMover {
  KayeGogglesMover([this.code, this.name, this.vip_only]);

  String? code;
  String? name;
  int? vip_only;

  bool get isVipOnly => vip_only == 1;

  factory KayeGogglesMover.fromJson(Map<String, dynamic> json) {
    return KayeGogglesMover(
      KayeMoistureBarnacle.strDef(json, "code", ""),
      KayeMoistureBarnacle.strDef(json, "name", ""),
      KayeMoistureBarnacle.intDef(json, "vip_only", 0),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"code": code, "name": name, "vip_only": vip_only};
  }
}
