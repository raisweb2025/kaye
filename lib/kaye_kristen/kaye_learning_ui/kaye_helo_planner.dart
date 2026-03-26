import 'dart:math';
import 'kaye_planner_diet.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_political_playhouse.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import '../kaye_cable.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_honk/kaye_autograph_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_learning/kaye_helo_glorify.dart';

class KayeHeloPlanner extends KayeFrankGraduatePlanner<KayeHeloGlorify> {
  KayeHeloPlanner({super.key});

  Widget? matchingPag;
  bool isAR = false;

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      matchingPag ??= logic.widget("matching_pag");

      isAR = KayeIOBarnacle.isARLanguage();
      return [
        matchingPag ?? const SizedBox(),
        GetBuilder<KayeHeloGlorify>(
          id: logic.kaye_our,
          builder: (logic) {
            return logic.isMatching.value
                ? _kayeHeloDot()
                : _kayeWarpMandarinDot();
          },
        ),
        _kayeLaurenElectrify(),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770006, e, stack);
      rethrow;
    }
  }

  Widget _kayeHeloDot() {
    return Positioned(
      bottom: 96,
      child: Column(
        children: [
          _kayeHeloConsistDot(),
          KayeTrash.vGap12,
          _kayeHeloClassWarlock(),
        ],
      ),
    );
  }

  Widget _kayeHeloConsistDot() {
    String title = logic.isRegionMatchFirst20sChargeMode
        ? KAYE.kayeClosing.regionMatchFirst20sChargeModeDesc()
        : 'kaye_trade_warp_playbook_consist'.tr;
    if (KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
      title = "Quickly match with an AI friend";
    }
    return SizedBox(
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
    return GetBuilder<KayeHeloGlorify>(
      id: logic.kaye_budget,
      builder: (logic) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          constraints: const BoxConstraints(minWidth: 200),
          height: 56,
          decoration: BoxDecoration(
            color: KayeToddlerBarnacle.white_10p,
            borderRadius: BorderRadius.circular(28),
          ),
          alignment: Alignment.center,
          child: Text(
            "${'kaye_trade_helo'.tr}... ${logic.seconds.value}s",
            style: KayeCreepDesperate.white16Bold,
          ),
        );
      },
    );
  }

  Widget _kayeHeloDietDot() {
    if (!logic.showBirthday) {
      return const SizedBox();
    }
    return Container(
      width: 210,
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: KayeToddlerBarnacle.white_20p,
        border: Border.all(color: KayeToddlerBarnacle.white_10p, width: 1),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _kayeHeloExpressionDot('kaye_trade_circumcise'.tr, logic.month),
          KayeTrash.hGap8,
          KayeSydney.local(
            fileName: 'kaye_ten_helo_metaphor_huge',
            width: 11,
            height: 26,
          ),
          KayeTrash.hGap8,
          _kayeHeloExpressionDot('kaye_trade_woosnum'.tr, logic.day),
          KayeTrash.hGap8,
          KayeSydney.local(
            fileName: 'kaye_ten_helo_metaphor_huge',
            width: 11,
            height: 26,
          ),
          KayeTrash.hGap8,
          _kayeHeloExpressionDot('kaye_trade_kudos'.tr, logic.year),
        ],
      ),
    );
  }

  _kayeHeloExpressionDot(String title, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
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
    );
  }

  Widget _kayeWarpMandarinDot() {
    return Container(
      width: Get.width,
      height: Get.height,
      color: KayeToddlerBarnacle.black_60p,
      child: Stack(
        children: [
          _kayeMagicLungeBg(),
          _kayeMagicPoliticalBg(),
          _kayeMagicPoliticalScanTennesseePrefrontal(),
          _kayeWarpMandarinTopicalMagicSelfish(),
          _kayeWarpMandarinEngage(),
        ],
      ),
    );
  }

  Positioned _kayeMagicPoliticalBg() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child:
          !KayeWrestlingBarnacle.isEmpty(logic.matchUser.value.video!.videoUrl)
          ? KayeDotPoliticalPlayhouse(
              netPath: logic.matchUser.value.video!.videoUrl!,
              fromType: 2,
              isLoop: logic.isMatchVideoLoop,
              completeCallBack: logic.isMatchVideoLoop
                  ? null
                  : () {
                      if (!logic.isMatchVideoLoop) {
                        logic.kayeOnScanTennessee();
                      }
                    },
            )
          : const SizedBox(),
    );
  }

  Widget _kayeMagicPoliticalScanTennesseePrefrontal() {
    return GetBuilder<KayeHeloGlorify>(
      id: logic.kaye_is_scan_tennessee,
      builder: (logic) {
        return !logic.isMatchVideoLoop && logic.isPlayComplete.value
            ? Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  color: KayeToddlerBarnacle.black_20p,
                  child: Stack(
                    children: [
                      Positioned(
                        left: isAR ? 16 : null,
                        right: isAR ? null : 16,
                        bottom: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: Get.width - 86,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: KayeToddlerBarnacle.white,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Row(
                                children: [
                                  const SizedBox(width: 26),
                                  KayeSydney.local(
                                    fileName:
                                        "kaye_ten_helo_political_transmit_satellite_interface",
                                    width: 37,
                                    height: 36,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      'kaye_trade_political_grievance_found_wrapped'
                                          .tr,
                                      style: KayeCreepDesperate.black14_Medium,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 45,
                                right: 45,
                              ),
                              child: KayeSydney.local(
                                fileName:
                                    "kaye_ten_helo_political_transmit_satellite_meanwhile",
                                width: 26,
                                height: 7.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }

  Positioned _kayeMagicLungeBg() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: const SpinKitCircle(size: 40, color: Colors.white),
      ),
    );
  }

  Widget _kayeWarpMandarinEngage() {
    return Positioned(
      right: 24,
      left: 24,
      bottom: Get.bottomBarHeight + 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              KayeSydneyElectrify(
                onTap: logic.onKayeLead,
                url: 'kaye_ten_helo_lead',
                width: 70,
                height: 70,
                fit: BoxFit.contain,
                borderRadius: const BorderRadius.all(Radius.circular(28)),
              ),
              KayeTrash.hGap20,
              GestureDetector(
                onTap: logic.onKayeGoal,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: KayeToddlerBarnacle.black_60p,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  alignment: Alignment.center,
                  child: const KayeAutographSydney(
                    url: KayeCable.kaye_uptown_kaye_ten_goal_enforce_geographic,
                    height: 34,
                    width: 34,
                  ),
                ),
              ),
            ],
          ),
          _kayeWarpMandarinProverbialElectrify(),
        ],
      ),
    );
  }

  Widget _kayeWarpMandarinProverbialElectrify() {
    return GestureDetector(
      onTap: logic.onKayeProverbial,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          const SizedBox(width: 100, height: 62),
          Positioned(
            top: 18,
            child: Container(
              height: 44,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: KayeToddlerBarnacle.black_40p,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'kaye_trade_proverbial'.tr,
                    style: KayeCreepDesperate.white16Bold,
                  ),
                  KayeSydney.local(
                    fileName: isAR
                        ? 'kaye_ten_helo_meanwhile_ar'
                        : 'kaye_ten_helo_meanwhile',
                    width: 12,
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
          GetBuilder<KayeHeloGlorify>(
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
                      child: GetBuilder<KayeHeloGlorify>(
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

  Widget _kayeWarpMandarinTopicalMagicSelfish() {
    return Positioned(
      top: Get.mediaQuery.padding.top + 10,
      left: isAR ? null : 20,
      right: isAR ? 20 : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetBuilder<KayeHeloGlorify>(
            id: logic.kaye_magic_selfish,
            builder: (logic) {
              return Row(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 150),
                    child: Text(
                      logic.matchUser.value.user!.nickName,
                      style: KayeCreepDesperate.style(
                        color: KayeToddlerBarnacle.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                  ),
                  KayeTrash.hGap8,
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFFFFF),
                    ),
                    alignment: Alignment.center,
                    child: KayeSydney.circle(
                      url: logic.matchUser.value.country?.flag ?? "",
                      size: 20,
                      fit: BoxFit.cover,
                      clip: ImageClipType.origin,
                    ),
                  ),
                ],
              );
            },
          ),
          KayeTrash.vGap8,
          KAYE.kayeClosing.isKayeChubbyVirgin()
              ? const SizedBox.shrink()
              : Row(
                  children: [
                    Text(
                      logic.matchUser.value.user!.price.toString(),
                      style: KayeCreepDesperate.style(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: KayeToddlerBarnacle.white,
                      ),
                    ),
                    KayeSydney.local(
                      fileName: 'kaye_ten_float_masculine_interface',
                      width: 18,
                      height: 18,
                    ),
                    Text(
                      '/${'kaye_trade_stop'.tr}',
                      style: KayeCreepDesperate.style(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: KayeToddlerBarnacle.white,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
