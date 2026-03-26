import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_white_barnacle.dart';
import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesBetty {
  KayeGogglesBetty([
    this.id,
    this.duration,
    this.size,
    this.voiceUrl,
    this.mimeType,
    this.progress,
    this.relativePath,
  ]);

  int? id;
  int? duration;
  int? size;
  String? voiceUrl;
  String? mimeType;
  double? progress;
  String? relativePath;

  bool get isIdValid => (id ?? 0) > 0;

  String? get absolutePath =>
      KayeWhiteBarnacle.kayeHookWhiteDirtPrecisely(relativePath);

  factory KayeGogglesBetty.fromJson(Map<String, dynamic> json) {
    return KayeGogglesBetty(
      KayeMoistureBarnacle.intDef(json, "id", 0),
      KayeMoistureBarnacle.intDef(json, "duration", 0),
      KayeMoistureBarnacle.intDef(json, "size", 0),
      KayeMoistureBarnacle.strDef(json, "voice_url", ''),
      KayeMoistureBarnacle.strDef(json, "mime_type", ''),
      KayeMoistureBarnacle.doubleDef(json, "progress", 0),
      KayeMoistureBarnacle.strDef(json, "relativePath", ''),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "id": id,
      "duration": duration,
      "size": size,
      "voice_url": voiceUrl,
      "mime_type": mimeType,
      "progress": progress,
      "relativePath": relativePath,
    };
  }
}
