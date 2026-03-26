import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_white_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesSydney {
  KayeGogglesSydney([
    this.id,
    this.width,
    this.height,
    this.imgUrl,
    this.url,
    this.mimeType,
    this.progress,
    this.relativePath,
  ]);

  int? id;
  int? width;
  int? height;
  String? imgUrl;
  String? url;
  String? mimeType;
  double? progress;
  String? relativePath;

  bool get isIdValid => id != null && id! > 0;

  bool get isGif => mimeType?.toLowerCase().contains('gif') ?? false;

  String? get absolutePath =>
      KayeWhiteBarnacle.kayeHookWhiteDirtPrecisely(relativePath);

  String? get imageUrl => imgUrl ?? url;

  factory KayeGogglesSydney.fromJson(Map<String, dynamic> json) {
    return KayeGogglesSydney()
      ..id = KayeMoistureBarnacle.intDef(json, 'id', 0)
      ..width = KayeMoistureBarnacle.intDef(json, 'width', 0)
      ..height = KayeMoistureBarnacle.intDef(json, 'height', 0)
      ..imgUrl = KayeMoistureBarnacle.strDef(json, 'img_url', '')
      ..url = KayeMoistureBarnacle.strDef(json, 'url', '')
      ..mimeType = KayeMoistureBarnacle.strDef(json, 'mime_type', '')
      ..relativePath = KayeMoistureBarnacle.strDef(json, 'relativePath', '');
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'width': width,
    'height': height,
    'img_url': imgUrl,
    'url': url,
    'mime_type': mimeType,
    'relativePath': relativePath,
  };
}
