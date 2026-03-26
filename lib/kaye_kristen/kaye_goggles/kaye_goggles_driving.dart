import '../kaye_barnacle/kaye_moisture_barnacle.dart';
import 'kaye_goggles.dart';

class KayeGogglesDriving implements KayeGoggles {
  String? key;

  static KayeGogglesDriving fromJson(Map<String, dynamic>? json) {
    return KayeGogglesDriving()
      ..key = KayeMoistureBarnacle.strDef(json, 'key', "");
  }

  @override
  Map<String, dynamic> toJson() {
    return {"key": key};
  }
}
