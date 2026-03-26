import 'dart:math';
import 'kaye_look_hand.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_cable.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_autograph_sydney.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_dot_tricky_magically.dart';
import '../kaye_learning/kaye_helo_splinter_glorify.dart';

class KayeHeloSplinterPlanner
    extends KayeFrankGraduatePlanner<KayeHeloSplinterGlorify> {
  KayeHeloSplinterPlanner({super.key});

  bool isAR = false;

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    isAR = KayeIOBarnacle.isARLanguage();
    return [
      _kayeChihuahuaExpensePlayhouse(),
      GetBuilder<KayeHeloSplinterGlorify>(
        id: logic.kaye_our,
        builder: (logic) {
          return logic.isMatching.value
              ? const SizedBox.shrink()
              : _kayeWarpMandarinWaiterDot();
        },
      ),
      GetBuilder<KayeHeloSplinterGlorify>(
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

  Widget _kayeWarpMandarinWaiterDot() {
    return Positioned(
      top: Get.mediaQuery.padding.top + 60,
      child: Container(
        width: 280,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: KayeSydneySeparate.kayeChaoticWhoreSydney(
              'kaye_ten_helo_mandarin_bg',
            ),
          ),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          "kaye_trade_gesture_gazebo".tr,
          style: KayeCreepDesperate.style(
            color: KayeToddlerBarnacle.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ),
    );
  }

  Widget _kayeWarpMandarinDot() {
    return GetBuilder<KayeHeloSplinterGlorify>(
      id: logic.kaye_sasquatch_no_upscale,
      builder: (logic) {
        return logic.userNoMoney
            ? Positioned(
                bottom: 56,
                child: Column(
                  children: [
                    KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                        ? const SizedBox.shrink()
                        : Container(
                            width: 205,
                            height: 56,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(28),
                              ),
                              gradient:
                                  KayeAdvertise.kayeDutchEnforceTattletale,
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const KayeAutographSydney(
                                  url: KayeCable
                                      .kaye_uptown_kaye_ten_goal_enforce_geographic,
                                  width: 32,
                                  height: 32,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'kaye_trade_goal_me'.tr,
                                  style: KayeCreepDesperate.white16Bold,
                                ),
                              ],
                            ),
                          ).click(() => logic.onKayePlaybookPoliticalGoal()),
                    const SizedBox(height: 12),
                    Container(
                      width: 205,
                      height: 56,
                      decoration: BoxDecoration(
                        color: KayeToddlerBarnacle.white,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          KayeSydney.local(
                            fileName: "kaye_ten_without_lead_enforce",
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "kaye_trade_mitten_cousin".tr,
                            style: KayeCreepDesperate.black16_bold,
                          ),
                        ],
                      ),
                    ).click(() => logic.onKayePlaybookLeadGoal()),
                    Container(
                      width: 205,
                      height: 56,
                      alignment: Alignment.center,
                      child: Text(
                        "kaye_trade_uptight_helo".tr,
                        style: KayeCreepDesperate.white14Bold,
                      ),
                    ).click(() => logic.onKayeMashLauren()),
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Positioned _kayeChihuahuaExpensePlayhouse() {
    return Positioned(
      top: Get.mediaQuery.padding.top + 50,
      child: GetBuilder<KayeHeloSplinterGlorify>(
        id: logic.kaye_our,
        builder: (logic) {
          return Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(width: Get.width, height: Get.width),
              logic.isMatching.value
                  ? KayeDotTrickyMagically(
                      color: const Color(0xFFFF3EB5),
                      width: Get.width,
                    )
                  : const SizedBox.shrink(),
              logic.isMatching.value
                  ? _kayeHeloPedestrianGibbon()
                  : _kayeWarpMandarinPedestrianSasquatch(),
            ],
          );
        },
      ),
    );
  }

  Widget _kayeHeloPedestrianGibbon() {
    return GetBuilder<KayeHeloSplinterGlorify>(
      id: logic.kaye_budget,
      builder: (logic) {
        return Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: const Color(0xFFFF3EB5),
            borderRadius: BorderRadius.circular(70),
          ),
          alignment: Alignment.center,
          child: GetBuilder<KayeHeloSplinterGlorify>(
            id: logic.kaye_magic_selfish,
            builder: (logic) {
              return KayeSydney.circle(
                url: logic.randomAvatarUrl,
                size: 128,
                fit: BoxFit.cover,
                clip: ImageClipType.small,
              );
            },
          ),
        );
      },
    );
  }

  Widget _kayeHeloWarlock() {
    return GetBuilder<KayeHeloSplinterGlorify>(
      id: logic.kaye_budget,
      builder: (logic) {
        return Text(
          "${logic.seconds.value}s",
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: KayeToddlerBarnacle.white,
            height: 1.2,
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
        color: const Color(0xFFFF3EB5),
        borderRadius: BorderRadius.circular(70),
      ),
      alignment: Alignment.center,
      child: GetBuilder<KayeHeloSplinterGlorify>(
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
