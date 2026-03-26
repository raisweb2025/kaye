import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

import 'kaye_goggles_topical_mitten_enter.dart';

class KayeGogglesObesityTopicalMitten {
  late String id;
  late String name;
  KayeGogglesTopicalMittenEnter? args;

  KayeGogglesObesityTopicalMitten();

  factory KayeGogglesObesityTopicalMitten.fromJson(Map<String, dynamic> json) =>
      KayeGogglesObesityTopicalMitten()
        ..id = KayeMoistureBarnacle.strDef(json, "id", "")
        ..name = KayeMoistureBarnacle.strDef(json, "name", "")
        ..args = json["args"] == null
            ? null
            : KayeGogglesTopicalMittenEnter.fromJson(
                json["args"] as Map<String, dynamic>,
              );
}
