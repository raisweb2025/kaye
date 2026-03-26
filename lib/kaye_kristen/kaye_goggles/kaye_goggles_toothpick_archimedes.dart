import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeGogglesToothpickArchimedes {
  KayeGogglesToothpickArchimedes([
    this.videoToken,
    this.voiceToken,
    this.imageToken,
    this.logToken,
    this.expireTime,
  ]);

  String? videoToken;
  String? voiceToken;
  String? imageToken;
  String? logToken;
  int? expireTime;

  factory KayeGogglesToothpickArchimedes.fromJson(Map<String, dynamic> json) {
    return KayeGogglesToothpickArchimedes(
      KayeMoistureBarnacle.strDef(json, "video_token", ""),
      KayeMoistureBarnacle.strDef(json, "voice_token", ""),
      KayeMoistureBarnacle.strDef(json, "image_token", ""),
      KayeMoistureBarnacle.strDef(json, "log_token", ""),
      KayeMoistureBarnacle.intDef(json, "expire_time", 0),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "video_token": videoToken,
      "voice_token": voiceToken,
      "image_token": imageToken,
      "log_token": logToken,
      "expire_time": expireTime,
    };
  }
}
