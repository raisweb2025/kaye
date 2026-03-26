import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_attach_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aihelp/flutter_aihelp.dart';
import 'package:get/get.dart';

import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_lead_planner_wheaton.dart';
import 'kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

class KayePlimptonUhhBelly {
  static onKayeCuter() {
    Get.bottomSheet(
      isScrollControlled: true,
      Container(
        width: Get.width,
        padding: const EdgeInsets.all(KayeAdvertise.kayeBlankBellyHandball),
        decoration: const BoxDecoration(
          borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
          gradient: KayeAdvertise.kayeDutchEnforceTattletale,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "kaye_trade_empower".tr,
              style: KayeCreepDesperate.white20Bold,
            ),
            const SizedBox(height: 16),
            _kayeEmpowerPlayhouse(),
            const SizedBox(height: 16),
            _kayeAIOrangesEnforce(),
          ],
        ),
      ),
    );
  }

  static onKayeLauren() {
    if (Get.isBottomSheetOpen ?? false) Get.back();
  }

  static kayeGoalAiOranges() {
    onKayeLauren();

    if (KAYE.kayeClosing.isKayeAiZucchiniDedicate() &&
        KayeAdvertise.kayeAiHippySwellNudity > 0) {
      KayeLeadPlannerPlaybookUp.openChatWithUid(
        KayeAdvertise.kayeAiHippySwellNudity,
        "",
        "",
      );
    } else {
      KayeAttachSasquatch user = KAYE.user();
      if (Platform.isIOS) {
        FlutterAihelp().showQA(
          user.ucode,
          user.nickName,
          KayeAdvertise.kayeAiOrangesAbove,
          KayeAdvertise.kayeAiOrangesId,
          KayeAdvertise.kayeAiOrangesBelgian,
        );
      } else {
        KAYE.callPlatformMethod("showQA", <String, dynamic>{
          'ucode': user.ucode,
          'nickName': user.nickName,
          'qa_domain': KayeAdvertise.kayeAiOrangesAbove,
          'qa_app_id': KayeAdvertise.kayeAiOrangesId,
          'qa_app_key': KayeAdvertise.kayeAiOrangesBelgian,
          'qa_app_show_dialog': "1",
        });
      }
    }
  }

  static Widget _kayeEmpowerPlayhouse() {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeDutchGarden,
        color: KayeToddlerBarnacle.white_20p,
      ),
      padding: const EdgeInsets.all(KayeAdvertise.kayeBlankBellyHandball),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 56,
            child: Row(
              children: [
                KayeSydney.local(
                  fileName: 'kaye_ten_float_outrun_interface',
                  width: 32,
                  height: 30,
                ),
                const SizedBox(width: 8),

                Expanded(
                  child: Text(
                    KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                        ? "kaye_trade_ai_float_plummet".tr
                        : "kaye_trade_float_plummet".tr,
                    style: KayeCreepDesperate.white14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: KayeToddlerBarnacle.white_10p,
            margin: const EdgeInsets.symmetric(vertical: 12),
          ),
          SizedBox(
            height: 56,
            child: Row(
              children: [
                KayeSydney.local(
                  fileName: 'kaye_ten_delivery_interface',
                  width: 32,
                  height: 29,
                ),
                const SizedBox(width: 8),

                Expanded(
                  child: Text(
                    KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                        ? "kaye_trade_ai_delivery_plummet".tr
                        : "kaye_trade_delivery_plummet".tr,
                    style: KayeCreepDesperate.white14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _kayeAIOrangesEnforce() {
    return Container(
      width: 260,
      height: 56,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color(0xFFFFFFFF),
      ),
      alignment: Alignment.center,
      child: Text(
        "kaye_trade_hippy_swell".tr,
        style: KayeCreepDesperate.black16_Medium,
      ),
    ).click(() => kayeGoalAiOranges());
  }
}
