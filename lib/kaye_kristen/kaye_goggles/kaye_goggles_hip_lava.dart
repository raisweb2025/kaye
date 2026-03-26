import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';
import 'kaye_goggles_hip_tie.dart';
import 'kaye_hip_whatever_tie.dart';

class KayeGogglesHipLava {
  KayeGogglesHipLava([this.code, this.msg, this.data]);

  int? code;
  String? msg;
  KayeHipWhateverTie? data;

  factory KayeGogglesHipLava.fromJson(Map<String, dynamic> json) {
    return KayeGogglesHipLava(
      KayeMoistureBarnacle.intDef(json, 'code', 0),
      KayeMoistureBarnacle.strDef(json, 'msg', ''),
      json['data'] == null
          ? null
          : KayeHipWhateverTie.fromJson(json['data'] as Map<String, dynamic>),
    );
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{"code": code, "msg": msg, 'data': data?.toJson()};
  }
}
