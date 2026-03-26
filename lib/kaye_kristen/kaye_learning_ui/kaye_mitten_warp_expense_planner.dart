import 'dart:math';
import 'kaye_delivery_interface.dart';
import 'package:kaye/kaye_kristen/kaye_cable.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_tattletale_secretary_creep.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_enforce_creep.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_learning/kaye_mitten_warp_expense_glorify.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_warp_target_dunphy_superhero.dart';
import '../kaye_honk/kaye_warp_lug_sydney.dart';
import '../kaye_honk/kaye_dot_tricky_magically.dart';

class KayeMittenWarpExpensePlanner
    extends KayeFrankGraduatePlanner<KayeMittenWarpExpenseGlorify> {
  const KayeMittenWarpExpensePlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      _kayeChihuahuaPile(),
      _kayeWaiterConsent(context),
      _kayeChihuahuaExpensePlayhouse(),
      _kayeConsciousInternship(context),
    ];
  }

  Widget _kayeChihuahuaPile() {
    return KayeAutographSydney(
      url: KayeCable.kaye_uptown_kaye_warp_bg,
      width: Get.width,
      height: Get.height,
      fit: BoxFit.fill,
    );
  }

  Widget _kayeChihuahuaExpensePlayhouse() {
    return Align(
      alignment: AlignmentGeometry.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Stack(
          alignment: Alignment.center,
          children: [const KayeWarpLugSydney(), _kayeChihuahuaSmackPlayhouse()],
        ),
      ),
    );
  }

  Widget _kayeChihuahuaSmackPlayhouse() {
    return Transform.scale(
      scale: 0.8,
      child: GestureDetector(
        onTap: logic.onKayePlaybookElectrify,
        child: Container(
          width: 172,
          height: 172,
          child: Stack(
            alignment: AlignmentGeometry.center,
            children: [
              KayeSydney.local(
                fileName: "kaye_ten_mitten_warp_glorious_playbook",
                width: 172,
                height: 172,
              ),
              Text(
                "kaye_trade_playbook".tr,
                style: KayeCreepDesperate.style(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              logic.isRegionMatchFirst20sChargeMode
                  ? const Positioned(
                      bottom: 20,
                      child: KayeWarpTargetDunphySuperhero(),
                    )
                  : GetBuilder<KayeMittenWarpExpenseGlorify>(
                      id: logic.kaye_amazing_is_delivery,
                      builder: (logic) {
                        return logic.isVIP.value || logic.maxFreeCount < 0
                            ? const SizedBox()
                            : Positioned(
                                bottom: 20,
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
                                    gradient:
                                        KayeAdvertise.kayeFoundBgTattletale,
                                  ),
                                  child: GetBuilder<KayeMittenWarpExpenseGlorify>(
                                    id: logic.kaye_amazing_found_snug,
                                    builder: (logic) {
                                      return Text(
                                        '${'kaye_trade_found'.tr} x${logic.remainingFreeCount}',
                                        style: KayeAdvertise
                                            .kayeFoundCreepDesperate,
                                      );
                                    },
                                  ),
                                ),
                              );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _kayeConsciousInternship(BuildContext context) {
    return Positioned(
      top: Get.mediaQuery.padding.top,
      left: 0,
      right: 0,
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_kayeSleazyWarpWaiter(), buildKayeDunphyDisgustingDot()],
        ),
      ),
    );
  }

  Widget _kayeSleazyWarpWaiter() {
    return KayeTattletaleSecretaryCreep(
      text: "kaye_trade_sleazy_warp".tr,
      style: KayeCreepDesperate.style(
        color: const Color(0xFFFF4661),
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      gradient: const LinearGradient(
        colors: [Color(0xFFFF7E45), Color(0xFFFF4661)],
        begin: AlignmentGeometry.topRight,
        end: AlignmentGeometry.bottomCenter,
      ),
    );
  }

  static const Set<String> kayeOriginal = {'ar', 'es', 'pt', 'id', 'hi', 'vi'};

  Widget _kayeWaiterConsent(BuildContext context) {
    String languageCode = KayeIOBarnacle.getLanguageCode() ?? "en";
    if (!kayeOriginal.contains(languageCode)) {
      languageCode = 'en';
    }
    String matchLogoPath = 'kaye_ten_warp_waiter_consent_$languageCode';
    return Positioned(
      top: Get.mediaQuery.padding.top + 24,
      child: KayeSydney.local(
        fileName: matchLogoPath,
        width: 310,
        height: 161,
        fit: BoxFit.contain,
      ),
    );
  }
}
