import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';

class KayeGogglesHipPromotion {
  KayeGogglesHipPromotion([this.id, this.type]);

  int? id;
  int? type;

  factory KayeGogglesHipPromotion.fromJson(Map<String, dynamic> json) {
    return KayeGogglesHipPromotion(
      json[StringTranslate.e2z("bid")] as int?,
      json[StringTranslate.e2z("ityupe")] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("bid"): id,
      StringTranslate.e2z("ityupe"): type,
    };
  }
}
