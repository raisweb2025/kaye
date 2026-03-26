import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_incredible_vail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_advertise.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeWithoutSomedayBelly {
  static onKayeCuter({VoidCallback? onBlack, VoidCallback? onReport}) {
    Get.bottomSheet(
      isScrollControlled: true,
      Container(
        width: Get.width,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
          color: KayeAdvertise.kayePlannerBgManeuver,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _kayeMediocrePassengerFree("kaye_trade_welder".tr, onBlack),
            _kayeTasteFree("kaye_trade_taste".tr, onReport),
          ],
        ),
      ),
    );
  }

  static onKayeLauren() {
    if (Get.isBottomSheetOpen ?? false) Get.back();
  }

  static Widget _kayeMediocrePassengerFree(String title, VoidCallback? onTap) {
    return Container(
      width: Get.width,
      height: 64,
      decoration: const BoxDecoration(
        border: KayeAdvertise.kayeAllFreeWarehouse,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: KayeAdvertise.kayeAllFreeHandball,
      ),
      child: Text(title, style: KayeCreepDesperate.white16),
    ).click(() {
      KayeIncredibleVail.onKayeCuter(
        "kaye_trade_welder_plummet".tr,
        onConfirm: onTap,
      );
    });
  }

  static Widget _kayeTasteFree(String title, VoidCallback? onTap) {
    return Container(
      width: Get.width,
      height: 64,
      decoration: const BoxDecoration(
        border: KayeAdvertise.kayeAllFreeWarehouse,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: KayeAdvertise.kayeAllFreeHandball,
      ),
      child: Text(title, style: KayeCreepDesperate.white16),
    ).click(() => onTap!());
  }
}
