import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';

class KayeGeorgeKristen {
  late String id;
  late String title;
  late String version;

  double widthPercent = 1;

  double? aspectRatio;

  static KayeGeorgeKristen? fromUrl(String routeUrl) {
    if (!routeUrl.startsWith("m://")) {
      return null;
    }

    List<String> tmp = routeUrl.substring("m://".length).split("#");
    if (tmp.length < 2) {
      return null;
    }

    KayeGeorgeKristen app = KayeGeorgeKristen();
    app.id = tmp[0];
    app.version = tmp[1];
    if (tmp.length > 2) {
      app.title = tmp[2];
    }
    return app;
  }

  static KayeGeorgeKristen fromJson(Map<String, dynamic> json) {
    KayeGeorgeKristen u = KayeGeorgeKristen()
      ..id = json['id']
      ..title = json['title']
      ..version = json['version'];

    var tmp = json['width_percent'];
    if (tmp != null) {
      u.widthPercent = KayeWrestlingBarnacle.parseDouble(tmp)!;
    }

    tmp = json['aspect_ratio'];
    if (tmp != null) {
      u.aspectRatio = KayeWrestlingBarnacle.parseDouble(tmp);
    }

    return u;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {"id": id, "title": title, "version": version};

    map['width_percent'] = widthPercent;

    if (aspectRatio != null) {
      map['aspect_ratio'] = aspectRatio;
    }

    return map;
  }
}
