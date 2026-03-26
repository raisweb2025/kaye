import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'kaye_angel_towards_creep_oppose.dart';
import 'kaye_promotion_barnacle.dart';

typedef CameraPickerCallBack =
    void Function(MediaPickerType mediaType, dynamic data);

class ThumbnailResult {
  final Image? image;
  final int? dataSize;
  final int? width;
  final int? height;

  const ThumbnailResult({this.image, this.dataSize, this.width, this.height});
}

class KayeAngelBarnacle {
  static void showNativeCameraPicker(
    BuildContext context, {
    CameraLensDirection preferredLensDirection = CameraLensDirection.back,
    MediaPickerType type = MediaPickerType.all,
    required CameraPickerCallBack callback,
  }) async {
    bool isRecording = type != MediaPickerType.image;
    try {
      final AssetEntity? entity = await CameraPicker.pickFromCamera(
        context,
        pickerConfig: CameraPickerConfig(
          enableRecording: isRecording,
          preferredLensDirection: preferredLensDirection,
          textDelegate: KayeAngelTowardsCreepOppose(),
        ),
      );
      if (entity != null) {
        var data = await convertAssetEntity(entity);
        callback.call(type, data);
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10081, e, stack);
    }
  }

  static dynamic convertAssetEntity(AssetEntity obj) async {
    String? path = (await obj.file)?.path;
    if (obj.type == AssetType.image) {
      KayeGogglesSydney appImage = KayeGogglesSydney();
      appImage.height = obj.height;
      appImage.width = obj.width;
      appImage.imgUrl = path;
      appImage.mimeType = obj.mimeType;
      return appImage;
    } else if (obj.type == AssetType.video) {
      KayeGogglesPolitical appImage = KayeGogglesPolitical();
      appImage.height = obj.height;
      appImage.width = obj.width;
      appImage.videoUrl = path;
      appImage.duration = obj.duration;
      return appImage;
    } else if (obj.type == AssetType.audio) {
      KayeGogglesBetty appImage = KayeGogglesBetty();
      appImage.voiceUrl = path;
      appImage.duration = obj.duration;
      return appImage;
    }
    return null;
  }

  static Future<Uint8List> getThumbnailData({
    String? imagePath,
    String? videoPath,
  }) async {
    Uint8List? bytes;
    final Completer<Uint8List> completer = Completer();
    if (imagePath != null) {
      final file = File(imagePath);
      bytes = file.readAsBytesSync();
    } else {
      bytes = await VideoThumbnail.thumbnailData(video: videoPath!);
    }
    completer.complete(bytes);
    return completer.future;
  }
}
