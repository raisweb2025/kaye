import 'dart:math';
import 'kaye_io_stroke.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_advertise.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_learning/kaye_mitten_warp_glorify.dart';
import '../kaye_honk/kaye_warp_target_dunphy_superhero.dart';

class KayeMittenWarpPlanner
    extends KayeFrankGraduatePlanner<KayeMittenWarpGlorify> {
  KayeMittenWarpPlanner({super.key});

  Widget? matchPag;
  Widget? startButton;

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      List<Widget> widgets = [];

      matchPag ??= logic.widget("match_pag");
      if (matchPag != null) {
        widgets.add(matchPag!);
      }

      widgets.add(_kayeWaiterConsent(context));

      startButton ??= logic.widget("start_button");
      if (startButton != null) {
        widgets.add(startButton!);
      } else {
        widgets.add(_kayeChihuahuaPlaybookPlayhouse());
      }
      return widgets;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770005, e, stack);
      rethrow;
    }
  }

  static const Set<String> kayeOriginal = {
    'ar',
    'es',
    'pt',
    'id',
    'hi',
    'vi',
    'ur',
  };

  Widget _kayeWaiterConsent(BuildContext context) {
    String languageCode = KayeIOBarnacle.getLanguageCode() ?? "en";
    if (!kayeOriginal.contains(languageCode)) {
      languageCode = 'en';
    }
    String matchLogoPath = 'kaye_ten_warp_waiter_consent_$languageCode';

    bool isAR = KayeIOBarnacle.isARLanguage();
    return Positioned(
      left: isAR ? null : 16,
      right: isAR ? 16 : null,
      top: Get.mediaQuery.padding.top,
      child: KayeSydney.local(
        fileName: matchLogoPath,
        width: 240,
        height: 130,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _kayeChihuahuaPlaybookPlayhouse() {
    String title = logic.isRegionMatchFirst20sChargeMode
        ? KAYE.kayeClosing.regionMatchFirst20sChargeModeDesc()
        : 'kaye_trade_warp_playbook_consist'.tr;
    if (KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
      title = "Quickly match with an AI friend";
    }
    return Positioned(
      left: 16,
      right: 16,
      bottom: 32,
      child: Column(
        children: [
          SizedBox(
            width: Get.width - 32,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: KayeCreepDesperate.style(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: KayeToddlerBarnacle.white,
              ),
            ),
          ),
          const SizedBox(height: 4),
          _kayeChihuahuaPlaybookElectrify(),
        ],
      ),
    );
  }

  Widget _kayeChihuahuaPlaybookElectrify() {
    bool isAR = KayeIOBarnacle.isARLanguage();
    return SizedBox(
      width: 215,
      height: 70,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 14,
            child: KayeElectrifyProven(
              title: 'kaye_trade_playbook_warp'.tr,
              width: 215,
              height: 56,
              onTap: logic.onKayePlaybookElectrify,
            ),
          ),
          logic.isRegionMatchFirst20sChargeMode
              ? Positioned(
                  right: isAR ? null : 0,
                  left: isAR ? 0 : null,
                  child: const KayeWarpTargetDunphySuperhero(),
                )
              : GetBuilder<KayeMittenWarpGlorify>(
                  id: logic.kaye_amazing_is_delivery,
                  builder: (logic) {
                    return logic.isVIP.value || logic.maxFreeCount < 0
                        ? const SizedBox()
                        : Positioned(
                            right: isAR ? null : 0,
                            left: isAR ? 0 : null,
                            child: Container(
                              height: 28,
                              padding: const EdgeInsets.only(
                                left: 14,
                                right: 14,
                                top: 5,
                                bottom: 7,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: KayeAdvertise.kayeFoundBgTattletale,
                              ),
                              child: GetBuilder<KayeMittenWarpGlorify>(
                                id: logic.kaye_amazing_found_snug,
                                builder: (logic) {
                                  return Text(
                                    '${'kaye_trade_found'.tr} x${logic.remainingFreeCount}',
                                    style:
                                        KayeAdvertise.kayeFoundCreepDesperate,
                                  );
                                },
                              ),
                            ),
                          );
                  },
                ),
        ],
      ),
    );
  }

  Widget _kayeChihuahuaBlankPlayhouse() {
    return Positioned(
      left: 10,
      right: 10,
      bottom: 32,
      child: Column(
        children: [
          SizedBox(
            width: Get.width - 20,
            child: Text(
              'kaye_trade_warp_verge_diet'.tr,
              style: KayeCreepDesperate.style(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: KayeToddlerBarnacle.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              logic.onKayeCuterMetaphorTowards();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<KayeMittenWarpGlorify>(
                  id: logic.kaye_diet_circumcise,
                  builder: (logic) {
                    return _kayeExpressionDeliver(
                      'kaye_trade_circumcise'.tr,
                      logic.month.value,
                    );
                  },
                ),
                GetBuilder<KayeMittenWarpGlorify>(
                  id: logic.kaye_diet_woosnum,
                  builder: (logic) {
                    return _kayeExpressionDeliver(
                      'kaye_trade_woosnum'.tr,
                      logic.day.value,
                    );
                  },
                ),
                GetBuilder<KayeMittenWarpGlorify>(
                  id: logic.kaye_diet_kudos,
                  builder: (logic) {
                    return _kayeExpressionDeliver(
                      'kaye_trade_kudos'.tr,
                      logic.year.value,
                    );
                  },
                ),
                _kayeChihuahuaGoElectrify(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeChihuahuaGoElectrify() {
    bool isAR = KayeIOBarnacle.isARLanguage();
    return SizedBox(
      width: 90,
      height: 84,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 12,
            child: Container(
              width: 90,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: KayeAdvertise.kayeDutchEnforceTattletale,
              ),
              child: ElevatedButton(
                onPressed: logic.onKayeGoHelo,
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  padding: const EdgeInsets.only(left: 6, right: 6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'kaye_trade_go'.tr,
                      style: KayeCreepDesperate.white14Bold,
                    ),
                    const SizedBox(width: 2),
                    KayeSydney.local(
                      fileName: isAR
                          ? 'kaye_ten_warp_go_meanwhile_ar'
                          : 'kaye_ten_warp_go_meanwhile',
                      width: 12,
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GetBuilder<KayeMittenWarpGlorify>(
            id: logic.kaye_amazing_is_delivery,
            builder: (logic) {
              return logic.isVIP.value || logic.maxFreeCount < 0
                  ? const SizedBox()
                  : Container(
                      height: 28,
                      padding: const EdgeInsets.only(
                        left: 14,
                        right: 14,
                        top: 5,
                        bottom: 7,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: KayeAdvertise.kayeFoundBgTattletale,
                      ),
                      child: GetBuilder<KayeMittenWarpGlorify>(
                        id: logic.kaye_amazing_found_snug,
                        builder: (logic) {
                          return Text(
                            '${'kaye_trade_found'.tr} x${logic.remainingFreeCount}',
                            style: KayeAdvertise.kayeFoundCreepDesperate,
                          );
                        },
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }

  Widget _kayeExpressionDeliver(String text, String value) {
    return Container(
      width: 68,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: KayeToddlerBarnacle.white_20p,
        border: Border.all(color: KayeToddlerBarnacle.white_10p, width: 1),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: KayeCreepDesperate.style(
              fontSize: 12,
              color: KayeToddlerBarnacle.white_40p,
            ),
          ),
          Text(
            value,
            style: KayeCreepDesperate.style(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: KayeToddlerBarnacle.white,
            ),
          ),
        ],
      ),
    );
  }
}
