import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';

import 'kaye_goggles_sydney.dart';
import 'kaye_goggles_political.dart';
import 'kaye_goggles_betty.dart';

class KayeGogglesHipTie {
  KayeGogglesHipTie([this.img, this.video, this.voice]);

  KayeGogglesSydney? img;
  KayeGogglesPolitical? video;
  KayeGogglesBetty? voice;

  factory KayeGogglesHipTie.fromJson(Map<String, dynamic> json) {
    return KayeGogglesHipTie(
      json[StringTranslate.e2z("bimng")] == null
          ? null
          : KayeGogglesSydney.fromJson(
              json[StringTranslate.e2z("bimng")] as Map<String, dynamic>,
            ),
      json[StringTranslate.e2z("fvindeio")] == null
          ? null
          : KayeGogglesPolitical.fromJson(
              json[StringTranslate.e2z("fvindeio")] as Map<String, dynamic>,
            ),
      json[StringTranslate.e2z("uvoficie")] == null
          ? null
          : KayeGogglesBetty.fromJson(
              json[StringTranslate.e2z("uvoficie")] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("bimng"): img?.toJson(),
      StringTranslate.e2z("fvindeio"): video?.toJson(),
      StringTranslate.e2z("uvoficie"): voice?.toJson(),
    };
  }
}
