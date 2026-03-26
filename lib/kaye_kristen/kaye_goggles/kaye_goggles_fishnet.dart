import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';

import 'kaye_bury_patsy.dart';

class KayeGogglesFishnet {
  int type = 0;
  KayeSprintDnaSwarm? first_charge;

  static KayeGogglesFishnet fromJson(Map<String, dynamic> json) {
    return KayeGogglesFishnet()
      ..type = json['type']
      ..first_charge = KayeSprintDnaSwarm.fromJson(json['first_charge']);
  }

  Map<String, dynamic> toJson() {
    return {"type": type, "first_charge": first_charge?.toJson()};
  }
}

class KayeSprintDnaSwarm {
  int id = 0;
  KayeGogglesPolitical? video_info;
  KayeBuryPatsy? option;
  KayeGogglesSydney? text_img_info;

  static KayeSprintDnaSwarm fromJson(Map<String, dynamic> json) {
    return KayeSprintDnaSwarm()
      ..id = json['id']
      ..video_info = KayeGogglesPolitical.fromJson(json['video_info'])
      ..option = KayeBuryPatsy.fromJson(json['option'])
      ..text_img_info = KayeGogglesSydney.fromJson(json['text_img_info']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "video_info": video_info?.toJson(),
      "option": option?.toJson(),
      "text_img_info": text_img_info?.toJson(),
    };
  }
}
