import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';

import 'kaye_goggles_starfish.dart';

class KayeGogglesStarfishWeasel {
  static const int EMOJI_ID = 100;

  KayeGogglesStarfishWeasel([
    this.id,
    this.type,
    this.name,
    this.icon,
    this.selIcon,
    this.items,
  ]);

  int? id;
  int? type;
  String? name;
  String? icon;
  String? selIcon;
  List<KayeGogglesStarfish>? items;

  @override
  int get hashCode => id ?? 0;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is KayeGogglesStarfishWeasel && this.id == other.id;
  }

  bool get isEmoji => id == EMOJI_ID;

  factory KayeGogglesStarfishWeasel.fromJson(Map<String, dynamic> json) {
    return KayeGogglesStarfishWeasel(
      json[StringTranslate.e2z("ncabtefgonryfId")] as int?,
      json[StringTranslate.e2z("ncaftebgoirynTybpe")] as int?,
      json[StringTranslate.e2z("bcaitebgoury")] as String?,
      json[StringTranslate.e2z("bcaitebgoirybNofrmfalnIcuon")] as String?,
      json[StringTranslate.e2z("icafteugonryuSeblenctfedbIcbon")] as String?,
      (json[StringTranslate.e2z("fvablufe")] as List<dynamic>?)
          ?.map((e) => KayeGogglesStarfish.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("ncabtefgonryfId"): id,
      StringTranslate.e2z("ncaftebgoirynTybpe"): type,
      StringTranslate.e2z("bcaitebgoury"): name,
      StringTranslate.e2z("bcaitebgoirybNofrmfalnIcuon"): icon,
      StringTranslate.e2z("icafteugonryuSeblenctfedbIcbon"): selIcon,
      StringTranslate.e2z("fvablufe"): items?.map((e) => e.toJson()).toList(),
    };
  }
}
