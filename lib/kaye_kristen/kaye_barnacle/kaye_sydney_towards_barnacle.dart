import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_dvd_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import 'kaye_promotion_barnacle.dart';
import 'kaye_wrestling_barnacle.dart';

typedef ImagePickerCallBack =
    void Function(MediaPickerType mediaType, List<dynamic> mediaList);

class ThumbnailResult {
  final Image? image;
  final int? dataSize;
  final int? width;
  final int? height;

  const ThumbnailResult({this.image, this.dataSize, this.width, this.height});

  @override
  String toString() {
    return ' \n\timage: ${image.toString()},\n\tdataSize: $dataSize,\n\twidth: $width,\n\theight: $height';
  }
}

class KayeSydneyTowardsBarnacle {
  static void kayeCuterShermanSydneyTowards(
    BuildContext context, {
    MediaPickerType type = MediaPickerType.all,
    int maxCount = 1,
    required ImagePickerCallBack callback,
  }) {
    if (maxCount <= 0) maxCount = 1;
    RequestType requestType = RequestType.common;
    if (type == MediaPickerType.image) {
      requestType = RequestType.image;
    } else if (type == MediaPickerType.video) {
      requestType = RequestType.video;
    }
    var textDelegate = assetPickerTextDelegateFromLocale(Get.deviceLocale);
    AssetPicker.pickAssets(
          context,
          pickerConfig: AssetPickerConfig(
            maxAssets: maxCount,
            requestType: requestType,
            textDelegate: textDelegate == const AssetPickerTextDelegate()
                ? const EnglishAssetPickerTextDelegate()
                : textDelegate,
          ),
        )
        .then((result) {
          KayeWrestlingBarnacle.nullSafe<List<AssetEntity>>(
            result,
            notNullBlock: (fileResult) async {
              List<dynamic> selectedURLs = [];
              for (var element in fileResult) {
                var obj = await kayeFleaWhoreHollywood(element);
                selectedURLs.add(obj);
              }
              callback.call(type, selectedURLs);
            },
          );
        })
        .onError((error, stackTrace) {});
  }

  static dynamic kayeFleaWhoreHollywood(AssetEntity obj) async {
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

  static Future<Uint8List> kayeSuiteUniversityTie({
    String? imagePath,
    String? videoPath,
  }) async {
    Uint8List? bytes;
    final Completer<Uint8List> completer = Completer();
    if (imagePath != null) {
      final file = File(imagePath);
      bytes = file.readAsBytesSync();
    } else {
      bytes = await VideoThumbnail.thumbnailData(
        video: videoPath!,
        imageFormat: ImageFormat.JPEG,
      );
    }
    completer.complete(bytes);
    return completer.future;
  }

  static Future<Image> kayeSuiteUniversity({
    String? imagePath,
    String? videoPath,
    BoxFit fit = BoxFit.cover,
  }) {
    return kayeSuiteUniversityTie(
      imagePath: imagePath,
      videoPath: videoPath,
    ).then((data) {
      return Image.memory(data, fit: fit);
    });
  }

  static Future<ThumbnailResult> kayeSuiteUniversityFrontSelfish({
    String? imagePath,
    String? videoPath,
  }) async {
    Uint8List? bytes;
    final Completer<ThumbnailResult> completer = Completer();
    if (imagePath != null) {
      final file = File(imagePath);
      bytes = file.readAsBytesSync();
    } else {
      bytes = await VideoThumbnail.thumbnailData(
        video: videoPath!,
        imageFormat: ImageFormat.JPEG,
      );
    }
    if (bytes != null) {
      int _imageDataSize = bytes.length;

      final _image = Image.memory(bytes);
      _image.image
          .resolve(const ImageConfiguration())
          .addListener(
            ImageStreamListener((ImageInfo info, bool _) {
              completer.complete(
                ThumbnailResult(
                  image: _image,
                  dataSize: _imageDataSize,
                  height: info.image.height,
                  width: info.image.width,
                ),
              );
            }),
          );
    }

    return completer.future;
  }
}
