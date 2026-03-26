import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../kaye_honk/kaye_sydney.dart';
import 'kaye_angel_towards_creep_oppose.dart';
import 'kaye_angel_barnacle.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import 'kaye_sydney_towards_barnacle.dart';

typedef MediaPickerCallBack = void Function(dynamic data);

enum MediaPickerType { all, image, video }

class KayePromotionBarnacle {
  static void kayeCuterPromotionTowards(
    BuildContext context,
    MediaPickerCallBack callback, {
    MediaPickerType type = MediaPickerType.image,
    CameraLensDirection preferredLensDirection = CameraLensDirection.back,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: KayeToddlerBarnacle.transparent,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        Widget childWidget = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _kayeConundrumDot(
              "kaye_ten_promotion_angel_interface",
              'kaye_trade_angel'.tr,
              () => _kayeSwabAngel(
                context,
                type,
                callback,
                preferredLensDirection: preferredLensDirection,
              ),
            ),
            const SizedBox(height: 12),
            _kayeConundrumDot(
              "kaye_ten_promotion_vernacular_interface",
              'kaye_trade_vernacular'.tr,
              () => _kayeSwabDebate(context, type, callback),
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Text(
                'kaye_trade_bros'.tr,
                style: KayeCreepDesperate.TextB1_16,
              ),
            ),
          ],
        );

        return Container(
          height: 252,
          padding: const EdgeInsets.all(24),
          margin: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
          decoration: const BoxDecoration(
            color: KayeToddlerBarnacle.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: childWidget,
        );
      },
    );
  }

  static Widget _kayeConundrumDot(
    String iconName,
    String text,
    Function function,
  ) {
    Widget childWidget = Container(
      height: 64,
      decoration: const BoxDecoration(
        color: KayeToddlerBarnacle.colorF6F6FA,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KayeSydney.local(fileName: iconName, width: 24, height: 24),
          const SizedBox(width: 8),
          Text(text, style: KayeCreepDesperate.TextB1_16),
        ],
      ),
    );

    return InkWell(onTap: () => function(), child: childWidget);
  }

  static void _kayeSwabAngel(
    BuildContext context,
    MediaPickerType cameraType,
    MediaPickerCallBack callback, {
    CameraLensDirection preferredLensDirection = CameraLensDirection.back,
  }) {
    Navigator.pop(context);
    KayeAngelBarnacle.showNativeCameraPicker(
      context,
      type: cameraType,
      preferredLensDirection: preferredLensDirection,
      callback: (mediaType, data) {
        if (data != null) {
          callback(data);
        }
      },
    );
  }

  static void _kayeSwabDebate(
    BuildContext context,
    MediaPickerType photoType,
    MediaPickerCallBack callback,
  ) {
    Navigator.pop(context);
    KayeSydneyTowardsBarnacle.kayeCuterShermanSydneyTowards(
      context,
      type: photoType,
      callback: (mediaType, mediaList) {
        if (!KayeWrestlingBarnacle.isEmpty(mediaList)) {
          var selected = mediaList.first;
          callback(selected);
        }
      },
    );
  }
}
