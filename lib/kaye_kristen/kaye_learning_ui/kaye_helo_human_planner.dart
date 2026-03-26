import 'dart:math';
import 'kaye_passenger_magic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_learning/kaye_helo_human_glorify.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_dot_tricky_magically.dart';

class KayeHeloHumanPlanner
    extends KayeFrankGraduatePlanner<KayeHeloHumanGlorify> {
  KayeHeloHumanPlanner({super.key});

  bool isAR = false;

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    isAR = KayeIOBarnacle.isARLanguage();
    return [
      _kayeChihuahuaBgPlayhouse(),
      _kayeChihuahuaExpensePlayhouse(),
      GetBuilder<KayeHeloHumanGlorify>(
        id: logic.kaye_our,
        builder: (logic) {
          return logic.isMatching.value
              ? _kayeHeloDot()
              : _kayeWarpMandarinDot();
        },
      ),
      _kayeLaurenElectrify(),
    ];
  }

  Widget _kayeHeloDot() {
    return _kayeHeloClassWarlock();
  }

  Widget _kayeWarpMandarinDot() {
    return const SizedBox.shrink();
  }

  Positioned _kayeChihuahuaBgPlayhouse() {
    return Positioned(
      top: Get.mediaQuery.padding.top + 150,
      child: KayeSydney.local(
        fileName: "kaye_ten_mitten_warp_human_bg",
        width: Get.width,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }

  Positioned _kayeChihuahuaExpensePlayhouse() {
    return Positioned(
      top: Get.mediaQuery.padding.top + 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(width: Get.width, height: Get.width),
          KayeDotTrickyMagically(
            color: const Color(0xFF6E3EFB),
            width: Get.width,
          ),
          GetBuilder<KayeHeloHumanGlorify>(
            id: logic.kaye_our,
            builder: (logic) {
              return logic.isMatching.value
                  ? _kayeHeloPedestrianGibbon()
                  : _kayeWarpMandarinPedestrianSasquatch();
            },
          ),
        ],
      ),
    );
  }

  Widget _kayeHeloPedestrianGibbon() {
    return Container(
      width: 140,
      height: 140,
      alignment: Alignment.center,
      child: KayeSydney.local(
        fileName: "kaye_ten_mitten_warp_human_purpose_interface",
        width: 47,
        height: 47,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _kayeHeloWarlock() {
    return GetBuilder<KayeHeloHumanGlorify>(
      id: logic.kaye_budget,
      builder: (logic) {
        return ShaderMask(
          shaderCallback: (Rect bounds) {
            return KayeAdvertise.kayeDutchEnforceTattletale.createShader(
              bounds,
            );
          },
          blendMode: BlendMode.srcATop,
          child: Text(
            "${logic.seconds.value}s",
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFDF8B),
              height: 1.2,
            ),
          ),
        );
      },
    );
  }

  Widget _kayeWarpMandarinPedestrianSasquatch() {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        gradient: KayeAdvertise.kayeDutchEnforceTattletale,
        borderRadius: BorderRadius.circular(70),
      ),
      alignment: Alignment.center,
      child: GetBuilder<KayeHeloHumanGlorify>(
        id: logic.kaye_magic_selfish,
        builder: (logic) {
          return KayeSydney.circle(
            url: logic.matchUser.value.user?.avatarUrl ?? '',
            size: 128,
            fit: BoxFit.cover,
            clip: ImageClipType.small,
          );
        },
      ),
    );
  }

  Widget _kayeLaurenElectrify() {
    return Positioned(
      top: Get.mediaQuery.padding.top + 10,
      right: isAR ? null : 20,
      left: isAR ? 20 : null,
      child: GestureDetector(
        onTap: () {
          logic.onKayeMashLauren();
        },
        child: KayeSydney.local(
          fileName: 'kaye_ten_matter_haley_mediocre',
          width: 36,
          height: 36,
        ),
      ),
    );
  }

  Widget _kayeHeloClassWarlock() {
    return Positioned(
      bottom: 56,
      child: Column(
        children: [
          _kayeHeloWarlock(),
          const SizedBox(height: 32),
          KAYE.kayeClosing.isKayeAiZucchiniDedicate()
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Container(
                    width: Get.width - 60,
                    decoration: BoxDecoration(
                      color: KayeToddlerBarnacle.white_10p,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          "kaye_trade_empower".tr,
                          style: KayeCreepDesperate.style(
                            color: KayeAdvertise.kayeCreepProvenManeuver,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          KAYE.kayeClosing.isRegionMatchFirst20sChargeMode()
                              ? KAYE.kayeClosing
                                    .regionMatchFirst20sChargeModeDesc()
                              : "kaye_trade_warp_human_consist".tr,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: KayeCreepDesperate.style(
                            color: KayeAdvertise.kayeCreepProvenManeuver,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            constraints: const BoxConstraints(minWidth: 200),
            height: 56,
            decoration: BoxDecoration(
              color: KayeToddlerBarnacle.white_10p,
              borderRadius: BorderRadius.circular(28),
            ),
            alignment: Alignment.center,
            child: Text(
              "${'kaye_trade_helo'.tr}...",
              style: KayeCreepDesperate.style(
                color: KayeToddlerBarnacle.white_40p,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
