import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sasquatch_universal_wendy.dart';

class KayeGogglesSasquatchChlorineMarge {
  List<KayeGogglesSasquatchUniversalWendy> records = [];

  static KayeGogglesSasquatchChlorineMarge fromJson(Map<String, dynamic> json) {
    KayeGogglesSasquatchChlorineMarge rsp = KayeGogglesSasquatchChlorineMarge();
    var records = json['records'];
    if (records != null) {
      rsp.records = (records as List<dynamic>?)!
          .map(
            (e) => KayeGogglesSasquatchUniversalWendy.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList();
    }
    return rsp;
  }
}
