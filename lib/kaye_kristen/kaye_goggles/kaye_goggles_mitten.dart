import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesMitten {
  late String id;
  late String icon;
  late String name;

  late String? url;

  KayeGogglesMitten(this.id, this.icon, this.name, {this.url});

  static KayeGogglesMitten fromJson(Map<String, dynamic> json) {
    return KayeGogglesMitten(
      KayeMoistureBarnacle.strDef(json, 'id', ""),
      KayeMoistureBarnacle.strDef(json, 'icon', ""),
      KayeMoistureBarnacle.strDef(json, 'name', ""),
      url: KayeMoistureBarnacle.str(json, 'url'),
    );
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "icon": icon, "name": name, "url": url};
  }
}
