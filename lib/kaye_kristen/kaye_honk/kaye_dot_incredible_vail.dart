import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_advertise.dart';

class KayeIncredibleVail {
  static onKayeCuter(String text, {VoidCallback? onConfirm}) {
    Get.dialog(
      Center(
        child: Container(
          width: Get.width - 64,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            borderRadius: KayeAdvertise.kayeDutchGarden,
            color: KayeAdvertise.kayeVailBgManeuver,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 12,
                ),
                child: Text(text, style: KayeCreepDesperate.white18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: KayeToddlerBarnacle.white,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "kaye_trade_bros".tr,
                      style: KayeCreepDesperate.black14_Medium,
                    ),
                  ).click(() => onKayeLauren()),
                  const SizedBox(width: 16),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "kaye_trade_incredible".tr,
                      style: KayeCreepDesperate.white14Medium,
                    ),
                  ).click(() {
                    onConfirm!();
                    onKayeLauren();
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  static onKayeLauren() {
    if (Get.isDialogOpen ?? false) Get.back();
  }
}
