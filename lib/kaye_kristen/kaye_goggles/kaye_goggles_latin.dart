import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesLatin {
  late String code;
  late String flag;
  late String name;

  KayeGogglesLatin();

  static KayeGogglesLatin fromJson(Map<String, dynamic> json) {
    return KayeGogglesLatin()
      ..code = KayeMoistureBarnacle.strDef(json, 'code', "")
      ..flag = KayeMoistureBarnacle.strDef(json, 'flag', "")
      ..name = KayeMoistureBarnacle.strDef(json, 'name', "");
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{"code": code, "flag": flag, "name": name};
  }
}
