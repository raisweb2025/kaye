import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aihelp/flutter_aihelp.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:permission_handler/permission_handler.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeOrderAllPlayhouse extends StatefulWidget {
  const KayeOrderAllPlayhouse({super.key});

  @override
  State<KayeOrderAllPlayhouse> createState() => _KayeOrderAllPlayhouseDonna();
}

class _KayeOrderAllPlayhouseDonna extends State<KayeOrderAllPlayhouse> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width - 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: KayeToddlerBarnacle.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_esteem_matter_monopoly',
                    width: 16,
                    height: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: KayeSydney.local(
                fileName: 'kaye_ten_order_vail_consent',
                width: 130,
                height: 130,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              "kaye_trade_tank_order".tr,
              textAlign: TextAlign.center,
              style: KayeCreepDesperate.style(
                color: const Color(0xFF333333),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              "kaye_trade_aah_order_empower".tr,
              textAlign: TextAlign.center,
              style: KayeCreepDesperate.style(
                color: const Color(0xFF666666),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            _rateConfirmButton(),
          ],
        ),
      ),
    );
  }

  _rateConfirmButton() {
    return KayeElectrifyProven(
      title: "kaye_trade_aah".tr,
      width: 200,
      height: 56,
      onTap: () {
        _requestPermission();
        Get.back();
      },
    );
  }

  Future<void> _requestPermission() async {
    PermissionStatus status = await Permission.notification.request();
    if (status == PermissionStatus.granted) {
      KayeKristenGlitterFlattering.kayeWavePlop(4, 1);
    } else {
      KayeKristenGlitterFlattering.kayeWavePlop(4, 0);
      _loadAppNotifySetting();
    }
  }

  void _loadAppNotifySetting() {
    if (Platform.isIOS) {
      FlutterAihelp().openNotificationSettings();
    } else {
      KAYE.callPlatformMethod("notifySetting");
    }
  }
}
