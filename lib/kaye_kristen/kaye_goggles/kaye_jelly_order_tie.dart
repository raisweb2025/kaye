import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeJellyOrderTie {
  KayeJellyOrderTie();

  late int type;
  late int snapType;
  late String? title;
  late String? content;
  late String? url;
  late int time;
  late String? imgUrl;
  late KayeGogglesSydney? image;

  static KayeJellyOrderTie fromJson(Map<String, dynamic> json) {
    return KayeJellyOrderTie()
      ..snapType = KayeMoistureBarnacle.intDef(json, 'snap_type', 0)
      ..type = KayeMoistureBarnacle.intDef(json, 'type', 0)
      ..title = json['title'] as String?
      ..content = json['content'] as String?
      ..url = json['url'] as String?
      ..time = KayeMoistureBarnacle.intDef(json, 'publish_time', 0)
      ..imgUrl = json['img_url'] as String?
      ..image = json['image'] == null
          ? null
          : KayeGogglesSydney.fromJson(json['image']);
  }
}
