import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_dvd_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_white_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/StringTranslate.dart';

import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'kaye_goggles_sydney.dart';
import 'kaye_goggles_political.dart';

class KayeGogglesPromotion {
  KayeGogglesPromotion([
    this.id,
    this.type,
    this.localPath,
    this.vip,
    this.image,
    this.video,
  ]);

  KayeGogglesPromotion.header({this.type = -1});

  int? id;
  int? type;
  String? localPath;
  int? vip;
  KayeGogglesSydney? image;
  KayeGogglesPolitical? video;

  KayeGogglesPromotion.image(this.image, {this.type = 1}) {
    String path = image?.imgUrl ?? "";
    localPath = KayeWhiteBarnacle.kayePreciselyWhiteDirtHook(path);
  }

  KayeGogglesPromotion.imageUrl(String url, {this.type = 1, int imageId = 0}) {
    KayeGogglesSydney appImage = KayeGogglesSydney();
    id = imageId;
    appImage.imgUrl = url;
    appImage.id = imageId;
    image = appImage;
    if (KayeWrestlingBarnacle.isEmptyString(localPath)) {
      localPath = url;
    }
  }

  KayeGogglesPromotion.localImageUrl(String localUrl) {
    type = 1;
    id = 0;
    KayeGogglesSydney appImage = KayeGogglesSydney();
    appImage.id = 0;
    appImage.imgUrl = "";
    image = appImage;
    localPath = localUrl;
  }

  KayeGogglesPromotion.video(this.video, {this.type = 2}) {
    String path = video?.videoUrl ?? "";
    localPath = KayeWhiteBarnacle.kayeHookWhiteDirtPrecisely(path);
    video!.relativePath = KayeWhiteBarnacle.kayePreciselyWhiteDirtHook(
      localPath!,
    );
  }

  KayeGogglesPromotion.videoUrl(
    String url, {
    this.type = 2,
    int videoId = 0,
    int videoDur = 0,
    localPath,
  }) {
    KayeGogglesPolitical appVideo = KayeGogglesPolitical();
    appVideo.videoUrl = url;
    appVideo.id = videoId;
    id = videoId;
    appVideo.duration = videoDur;
    video = appVideo;
    if (KayeWrestlingBarnacle.isEmptyString(localPath)) {
      localPath = url;
    }
  }

  bool isVideo() {
    return type == 2;
  }

  bool isImage() {
    return type == 1;
  }

  bool isHeader() {
    return type == -1;
  }

  int? getAppMediaShowId() {
    if (id == null || id == 0) {
      if (isImage()) {
        return image?.id;
      } else if (isVideo()) {
        return video?.id;
      } else {
        return 0;
      }
    } else {
      return id;
    }
  }

  String? getAppMediaUrl() {
    if (isImage()) {
      return image?.imgUrl;
    } else if (isVideo()) {
      return video?.coverUrl;
    }
    return "";
  }

  int getAppMediaReallyId() {
    if (isImage()) {
      return image?.id ?? 0;
    } else if (isVideo()) {
      return video?.id ?? 0;
    } else {
      return 0;
    }
  }

  String? getAppMediaLocalUrl() {
    return localPath;
  }

  bool isSameLocalPath(KayeGogglesPromotion data) {
    if (KayeWrestlingBarnacle.isEmptyString(localPath) ||
        data == null ||
        KayeWrestlingBarnacle.isEmptyString(data.localPath)) {
      return false;
    }
    return localPath == data.localPath;
  }

  bool isVip() {
    return vip == 1;
  }

  factory KayeGogglesPromotion.fromJson(Map<String, dynamic> json) {
    return KayeGogglesPromotion(
      json[StringTranslate.e2z("iid")] as int?,
      json[StringTranslate.e2z("ityfpe")] as int?,
      json[StringTranslate.e2z("uloicablPfatfh")] as String?,
      json[StringTranslate.e2z("ivibp")] as int?,
      json[StringTranslate.e2z("uimfagne")] == null
          ? null
          : KayeGogglesSydney.fromJson(
              json[StringTranslate.e2z("uimfagne")] as Map<String, dynamic>,
            ),
      json[StringTranslate.e2z("nvindeuo")] == null
          ? null
          : KayeGogglesPolitical.fromJson(
              json[StringTranslate.e2z("nvindeuo")] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      StringTranslate.e2z("iid"): id,
      StringTranslate.e2z("ityfpe"): type,
      StringTranslate.e2z("uloicablPfatfh"): localPath,
      StringTranslate.e2z("ivibp"): vip,
      StringTranslate.e2z("iimuagfe"): image?.toJson(),
      StringTranslate.e2z("nviudefo"): video?.toJson(),
    };
  }
}
