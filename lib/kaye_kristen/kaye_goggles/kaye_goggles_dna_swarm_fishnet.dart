import 'package:kaye/kaye_kristen/kaye_goggles/kaye_bury_patsy.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sprint_flattering.dart';

import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import '../kaye_honk/kaye_sydney.dart';
import 'kaye_goggles_sydney.dart';
import 'kaye_goggles_political.dart';

class KayeGogglesFishnetPassengerMarge {
  KayeGogglesDnaSwarmFishnet? first_charge;

  static KayeGogglesFishnetPassengerMarge fromJson(Map<String, dynamic> json) {
    return KayeGogglesFishnetPassengerMarge()
      ..first_charge = json["first_charge"] == null
          ? null
          : KayeGogglesDnaSwarmFishnet.fromJson(
              json["first_charge"] as Map<String, dynamic>,
            );
  }
}

class KayeGogglesDnaSwarmFishnet {
  int? id;
  KayeGogglesSydney? photo;
  KayeGogglesPolitical? video;
  String? option_id;

  static KayeGogglesDnaSwarmFishnet fromJson(Map<String, dynamic> json) {
    return KayeGogglesDnaSwarmFishnet()
      ..id = KayeWrestlingBarnacle.dynamicToIntNotNull("id")
      ..photo = json['photo'] == null
          ? null
          : KayeGogglesSydney.fromJson(json['photo'] as Map<String, dynamic>)
      ..video = json['video'] == null
          ? null
          : KayeGogglesPolitical.fromJson(json['video'] as Map<String, dynamic>)
      ..option_id = json["option_id"] as String?;
  }

  KayeBuryPatsy? getOption() {
    if (KayeWrestlingBarnacle.isEmpty(option_id) ||
        KayeWrestlingBarnacle.isEmpty(
          KayeSprintFlattering.instance.firstListOptions,
        )) {
      return null;
    }
    KayeBuryPatsy? option;
    for (KayeBuryPatsy item
        in KayeSprintFlattering.instance.firstListOptions!) {
      if (option_id! == item.id.toString()) {
        option = item;
        break;
      }
    }

    return option;
  }
}
