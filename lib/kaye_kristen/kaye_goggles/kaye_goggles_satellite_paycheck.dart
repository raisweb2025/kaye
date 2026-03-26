import '../kaye_barnacle/kaye_moisture_barnacle.dart';
import 'kaye_goggles_harpist_union.dart';

class KayeGogglesSatellitePaycheck {
  late double width;
  late double height;
  late double right;
  late double bottom;

  List<KayeGogglesHarpistUnion> urls = [];

  KayeGogglesSatellitePaycheck();

  factory KayeGogglesSatellitePaycheck.fromJson(Map<String, dynamic> json) {
    KayeGogglesSatellitePaycheck win = KayeGogglesSatellitePaycheck()
      ..width = KayeMoistureBarnacle.doubleDef(json, "width", 0)
      ..height = KayeMoistureBarnacle.doubleDef(json, "height", 0)
      ..right = KayeMoistureBarnacle.doubleDef(json, "right", 0)
      ..bottom = KayeMoistureBarnacle.doubleDef(json, "bottom", 0);

    dynamic urls = json['urls'];
    if (urls != null) {
      win.urls = (urls! as List<dynamic>)
          .map(
            (e) => KayeGogglesHarpistUnion.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }
    return win;
  }

  bool isNotEmpty() {
    return width > 0 && height > 0 && urls.isNotEmpty;
  }
}
