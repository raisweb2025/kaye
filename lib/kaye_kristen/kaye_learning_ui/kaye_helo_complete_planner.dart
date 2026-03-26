import 'dart:math';
import 'kaye_craze_tartar.dart';
import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_tricky_magically.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../kaye_cable.dart';
import '../kaye_learning/kaye_helo_complete_glorify.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_autograph_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeHeloCompletePlanner
    extends KayeFrankGraduatePlanner<KayeHeloCompleteGlorify> {
  const KayeHeloCompletePlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [_kayeWaiterDot(context), _kayeWarpDot(), _kayeBlankElectrify()];
  }

  static const Set<String> _kayeOriginal = {
    'ar',
    'es',
    'pt',
    'id',
    'hi',
    'vi',
    'ur',
  };

  Widget _kayeWaiterDot(BuildContext context) {
    String languageCode = KayeIOBarnacle.getLanguageCode() ?? "en";
    if (!_kayeOriginal.contains(languageCode)) {
      languageCode = 'en';
    }
    String matchLogoPath = 'kaye_ten_helo_waiter_consent_$languageCode';
    return GetBuilder<KayeHeloCompleteGlorify>(
      id: logic.kaye_increase,
      builder: (logic) {
        return Positioned(
          top: Get.mediaQuery.padding.top + 20,
          child: AnimatedOpacity(
            opacity: logic.startAnimation.value ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            child: KayeSydney.local(
              fileName: matchLogoPath,
              width: 240,
              height: 130,
              fit: BoxFit.contain,
            ),
          ),
        );
      },
    );
  }

  Widget _kayeWarpDot() {
    return GetBuilder<KayeHeloCompleteGlorify>(
      id: logic.kaye_increase,
      builder: (logic) {
        return Positioned(
          top: Get.mediaQuery.padding.top + 150,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedOpacity(
                opacity: logic.startAnimation.value ? 1 : 0,
                duration: const Duration(milliseconds: 1000),
                child: KayeDotTrickyMagically(
                  color: const Color(0xFFFF2191),
                  width: Get.width,
                ),
              ),
              SizedBox(width: Get.width, height: 280),
              AnimatedPositioned(
                right: logic.startAnimation.value
                    ? Get.width / 2 - 20
                    : Get.width,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  width: 142,
                  height: 142,
                  decoration: BoxDecoration(
                    color: KayeToddlerBarnacle.white,
                    borderRadius: BorderRadius.circular(71),
                  ),
                  alignment: Alignment.center,
                  child: KayeSydney.circle(
                    url: logic.user.avatarUrl,
                    size: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AnimatedPositioned(
                left: logic.startAnimation.value
                    ? Get.width / 2 - 20
                    : Get.width,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  width: 142,
                  height: 142,
                  decoration: BoxDecoration(
                    color: KayeToddlerBarnacle.white,
                    borderRadius: BorderRadius.circular(71),
                  ),
                  alignment: Alignment.center,
                  child: KayeSydney.circle(
                    url: logic.matchUser.user?.avatarUrl ?? "",
                    size: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: AnimatedOpacity(
                  opacity: logic.startAnimation.value ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: KayeSydney.local(
                    fileName: "kaye_ten_helo_constant",
                    width: 36,
                    height: 36,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _kayeBlankElectrify() {
    return GetBuilder<KayeHeloCompleteGlorify>(
      id: logic.kaye_increase,
      builder: (logic) {
        return Positioned(
          bottom: Get.mediaQuery.padding.bottom + 38,
          child: AnimatedOpacity(
            opacity: logic.startAnimation.value ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            child: Column(
              children: [
                _kayeGoalMeElectrify(),
                const SizedBox(height: 16),
                _kayeLeadElectrify(),
                _kayeProverbialElectrify(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _kayeProverbialElectrify() {
    return GestureDetector(
      onTap: logic.onKayeProverbial,
      child: Container(
        width: 200,
        height: 56,
        color: KayeToddlerBarnacle.transparent,
        alignment: Alignment.center,
        child: Text(
          'kaye_trade_proverbial'.tr,
          style: KayeCreepDesperate.white16Bold,
        ),
      ),
    );
  }

  Widget _kayeLeadElectrify() {
    return GestureDetector(
      onTap: logic.onKayeLead,
      child: Container(
        width: 200,
        height: 56,
        decoration: BoxDecoration(
          color: KayeToddlerBarnacle.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KayeSydney.local(
              fileName: 'kaye_ten_helo_cousin',
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 2),
            Text(
              'kaye_trade_mitten_cousin'.tr,
              style: KayeCreepDesperate.black16_bold,
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeGoalMeElectrify() {
    return GestureDetector(
      onTap: logic.onKayeGoalMe,
      child: Container(
        width: 200,
        height: 56,
        decoration: BoxDecoration(
          gradient: KayeAdvertise.kayeDutchEnforceTattletale,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const KayeAutographSydney(
              url: KayeCable.kaye_uptown_kaye_ten_goal_enforce_geographic,
              height: 34,
              width: 34,
            ),
            const SizedBox(width: 4),
            Text(
              'kaye_trade_goal_me'.tr,
              style: KayeCreepDesperate.white16Bold,
            ),
          ],
        ),
      ),
    );
  }
}
