import 'dart:math';
import 'kaye_towards_plummet.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_helo_lug_sydney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../kaye_cable.dart';
import '../kaye_learning/kaye_helo_expense_glorify.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_lead_planner_wheaton.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_autograph_sydney.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_warp_lug_sydney.dart';
import '../kaye_honk/kaye_dot_tricky_magically.dart';

class KayeHeloExpensePlanner
    extends KayeFrankGraduatePlanner<KayeHeloExpenseGlorify> {
  KayeHeloExpensePlanner({super.key});

  bool isAR = false;

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    isAR = KayeIOBarnacle.isARLanguage();
    return [
      Container(color: const Color(0xFF00023F)),
      _kayeChihuahuaPile(),
      _kayeWaiterConsent(context),
      _kayeChihuahuaExpensePlayhouse(),
      GetBuilder<KayeHeloExpenseGlorify>(
        id: logic.kaye_cuter_sasquatch_duplicate,
        builder: (logic) {
          return logic.showUserCard ? _kayeWarpMandarinDot() : SizedBox();
        },
      ),
      _kayeLaurenElectrify(),
    ];
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

  Widget _kayeChihuahuaPile() {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 72,
      child: KayeAutographSydney(
        url: KayeCable.kaye_uptown_kaye_warp_bg,
        width: Get.width,
        height: Get.height - 72,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _kayeChihuahuaExpensePlayhouse() {
    return Align(
      alignment: AlignmentGeometry.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 32, bottom: 72),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(width: 172, height: 172),
            GetBuilder<KayeHeloExpenseGlorify>(
              id: logic.kaye_our,
              builder: (logic) {
                return KayeHeloLugSydney(isMatching: logic.isMatching.value);
              },
            ),
            Transform.scale(
              scale: 0.8,
              child: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  KayeSydney.local(
                    fileName: "kaye_ten_mitten_warp_glorious_playbook",
                    width: 172,
                    height: 172,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GetBuilder<KayeHeloExpenseGlorify>(
                        id: logic.kaye_budget,
                        builder: (logic) {
                          return Text(
                            "${logic.seconds.value}",
                            style: KayeCreepDesperate.style(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              height: 1,
                            ),
                          );
                        },
                      ),
                      Text(
                        "${'kaye_trade_helo'.tr}...",
                        style: KayeCreepDesperate.style(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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

  Widget _kayeWarpMandarinDot() {
    return Container(
      width: Get.width,
      height: Get.height,
      color: KayeToddlerBarnacle.black_60p,
      alignment: AlignmentGeometry.center,
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: Get.mediaQuery.padding.top + 44 + 24),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Positioned(
                  top: 4,
                  bottom: 4,
                  left: 4,
                  right: 4,
                  child: KayeSydney.round(
                    url: logic.matchUser.value.user?.avatarUrl ?? "",
                    clip: ImageClipType.middle,
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Row(
                    children: [
                      Text(
                        logic.matchUser.value.user?.nickName ?? "dddd",
                        style: KayeCreepDesperate.white22Bold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          _kayeDryPlayhouse(),
          SizedBox(height: 120),
        ],
      ),
    );
  }

  Widget _kayeDryPlayhouse() {
    return SizedBox(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _kayePlaybookLeadEnforce(),

          KAYE.kayeClosing.isKayeAiZucchiniDedicate()
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: _kayePlaybookGoalEnforce(),
                ),
        ],
      ),
    );
  }

  Widget _kayePlaybookLeadEnforce() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(28)),
        border: Border.all(color: KayeToddlerBarnacle.black_10p, width: 1),
      ),
      alignment: Alignment.center,
      child: KayeSydney.local(
        fileName: 'kaye_ten_without_lead_enforce',
        width: 28,
        height: 28,
      ),
    ).click(() => logic.onKayeLead());
  }

  Widget _kayePlaybookGoalEnforce() {
    return GetBuilder<KayeHeloExpenseGlorify>(
      id: logic.kaye_magic_selfish,
      builder: (_) {
        return Container(
          width: Get.width - 160,
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: KayeAdvertise.kayeDutchEnforceTattletale,
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const KayeAutographSydney(
                url: KayeCable.kaye_uptown_kaye_ten_goal_enforce_geographic,
                width: 32,
                height: 32,
              ),
              SizedBox(width: 6),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "kaye_trade_goal_me".tr,
                    style: KayeCreepDesperate.style(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  KAYE.kayeClosing.isKayeChubbyVirgin()
                      ? const SizedBox.shrink()
                      : Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "${logic.matchUser.value.user?.price ?? 60}",
                              style: KayeCreepDesperate.style(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2,
                              ),
                              child: KayeSydney.local(
                                fileName: 'kaye_ten_float_masculine_interface',
                                width: 12,
                                height: 12,
                              ),
                            ),
                            Text(
                              "/",
                              style: KayeCreepDesperate.style(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "kaye_trade_stop".tr,
                              style: KayeCreepDesperate.style(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ],
          ),
        ).click(() => logic.onKayeGoal());
      },
    );
  }
}
