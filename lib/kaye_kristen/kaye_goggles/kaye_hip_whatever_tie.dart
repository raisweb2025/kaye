import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';

class KayeHipWhateverTie {
  KayeGogglesSydney? img;
  KayeGogglesPolitical? video;
  KayeGogglesBetty? voice;

  KayeHipWhateverTie();

  factory KayeHipWhateverTie.fromJson(Map<String, dynamic> json) =>
      KayeHipWhateverTie()
        ..img = json['img'] == null
            ? null
            : KayeGogglesSydney.fromJson(json['img'] as Map<String, dynamic>)
        ..video = json['video'] == null
            ? null
            : KayeGogglesPolitical.fromJson(
                json['video'] as Map<String, dynamic>,
              )
        ..voice = json['voice'] == null
            ? null
            : KayeGogglesBetty.fromJson(json['voice'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'img': img?.toJson(),
      'video': video?.toJson(),
      'voice': voice?.toJson(),
    };
  }
}
