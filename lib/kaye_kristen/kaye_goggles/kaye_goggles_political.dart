import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_white_barnacle.dart';

class KayeGogglesPolitical {
  KayeGogglesPolitical([
    this.id,
    this.duration,
    this.videoUrl,
    this.coverUrl,
    this.width,
    this.height,
    this.progress,
    this.relativePath,
    this.gifUrl,
    this.url,
  ]);

  int? id;
  int? duration;
  String? videoUrl;
  String? coverUrl;
  int? width;
  int? height;
  double? progress;
  String? relativePath;
  String? gifUrl;
  String? url;

  bool get isIdValid => (id ?? 0) > 0;

  String? get absolutePath =>
      KayeWhiteBarnacle.kayeHookWhiteDirtPrecisely(relativePath);

  factory KayeGogglesPolitical.fromJson(Map<String, dynamic> json) {
    return KayeGogglesPolitical(
      KayeMoistureBarnacle.intDef(json, "id", 0),
      KayeMoistureBarnacle.intDef(json, "duration", 0),
      KayeMoistureBarnacle.strDef(json, "video_url", ''),
      KayeMoistureBarnacle.strDef(json, "cover_url", ''),
      KayeMoistureBarnacle.intDef(json, "width", 0),
      KayeMoistureBarnacle.intDef(json, "height", 0),
      KayeMoistureBarnacle.doubleDef(json, "progress", 0),
      KayeMoistureBarnacle.strDef(json, "relativePath", ''),
      KayeMoistureBarnacle.strDef(json, "gif_url", ''),
      KayeMoistureBarnacle.strDef(json, "url", ''),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "duration": duration,
      "video_url": videoUrl,
      "cover_url": coverUrl,
      "width": width,
      "height": height,
      "progress": progress,
      "relativePath": relativePath,
      "gif_url": gifUrl,
      "url": url,
    };
  }
}
