import 'dart:math';
import 'kaye_fridge_tractor.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';

import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_enforce_creep.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_learning/kaye_mitten_warp_human_glorify.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_warp_target_dunphy_superhero.dart';

class KayeMittenWarpHumanPlanner
    extends KayeFrankGraduatePlanner<KayeMittenWarpHumanGlorify> {
  const KayeMittenWarpHumanPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      GetBuilder<KayeMittenWarpHumanGlorify>(
        id: logic.kaye_warp_sasquatch_passenger,
        builder: (logic) {
          return KayeWrestlingBarnacle.isEmpty(logic.matchUserList)
              ? const SizedBox.shrink()
              : _kayeChihuahuaHumanPlayhouse();
        },
      ),
      _kayeConsciousInternship(context),
      _kayeChihuahuaPlaybookElectrify(),
    ];
  }

  Positioned _kayeChihuahuaHumanPlayhouse() {
    double size = Get.width / 3.5;
    return Positioned(
      top: Get.mediaQuery.padding.top + 44,
      left: 0,
      right: 0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox(height: 300),
          KayeSydney.local(
            fileName: "kaye_ten_mitten_warp_human_bg",
            width: Get.width,
            height: 300,
            fit: BoxFit.cover,
          ),
          KAYE.kayeClosing.isKayeAiZucchiniDedicate()
              ? const SizedBox.shrink()
              : Column(
                  children: [
                    SizedBox(
                      width: Get.width,
                      height: size,
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          KayeWarpSasquatch matchUser =
                              logic.matchUserList[index];
                          return Stack(
                            alignment: Alignment.center,
                            children: [
                              GetBuilder<KayeMittenWarpHumanGlorify>(
                                id: logic.kaye_forget,
                                builder: (logic) {
                                  return Container(
                                    width: size,
                                    height: size,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: logic.currentIndex == index
                                            ? const Color(0xFF6E3EFB)
                                            : KayeToddlerBarnacle.transparent,
                                        width: 6,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        size / 2,
                                      ),
                                    ),
                                    child: KayeSydney.circle(
                                      url: matchUser.user?.avatarUrl ?? '',
                                      size: size,
                                      fit: BoxFit.cover,
                                      clip: ImageClipType.small,
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                        onIndexChanged: (int index) {
                          logic.onKayeAnesthesiaNaughty(index);
                        },
                        viewportFraction: 0.28,
                        scale: 0.65,
                        autoplay: true,
                        itemCount: logic.matchUserList.length,
                        duration: 300,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const SizedBox(height: 16),
                    GetBuilder<KayeMittenWarpHumanGlorify>(
                      id: logic.kaye_forget,
                      builder: (logic) {
                        KayeWarpSasquatch matchUser =
                            logic.matchUserList[logic.currentIndex];
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              constraints: const BoxConstraints(
                                maxWidth: 200.0,
                              ),
                              child: Text(
                                matchUser.user?.nickName ?? "",
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                maxLines: 1,
                                style: KayeCreepDesperate.style(
                                  color: KayeToddlerBarnacle.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            (matchUser.country != null)
                                ? KayeSydney.circle(
                                    url: matchUser.country?.flag ?? "",
                                    size: 20,
                                    fit: BoxFit.cover,
                                    clip: ImageClipType.origin,
                                  )
                                : const SizedBox.shrink(),
                          ],
                        );
                      },
                    ),
                  ],
                ),
        ],
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
          children: [_kayeWaiterConsent(), buildKayeDunphyDisgustingDot()],
        ),
      ),
    );
  }

  Widget _kayeWaiterConsent() {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return KayeAdvertise.kayeDutchEnforceTattletale.createShader(bounds);
      },
      blendMode: BlendMode.srcATop,
      child: Text(
        "kaye_trade_sleazy_warp".tr,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFDF8B),
          height: 1.2,
        ),
      ),
    );
  }

  Widget _kayeChihuahuaPlaybookElectrify() {
    bool isAR = KayeIOBarnacle.isARLanguage();
    return Positioned(
      bottom: 32,
      child: Column(
        children: [
          KAYE.kayeClosing.isKayeAiZucchiniDedicate()
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 16),
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
                          logic.isRegionMatchFirst20sChargeMode
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
          SizedBox(
            width: 215,
            height: 70,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 14,
                  child: KayeElectrifyProven(
                    title: 'kaye_trade_playbook'.tr,
                    width: 215,
                    height: 56,
                    radius: 16,
                    onTap: logic.onKayePlaybookElectrify,
                  ),
                ),
                logic.isRegionMatchFirst20sChargeMode
                    ? Positioned(
                        right: isAR ? null : 0,
                        left: isAR ? 0 : null,
                        child: const KayeWarpTargetDunphySuperhero(),
                      )
                    : GetBuilder<KayeMittenWarpHumanGlorify>(
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
                                      gradient:
                                          KayeAdvertise.kayeFoundBgTattletale,
                                    ),
                                    child: GetBuilder<KayeMittenWarpHumanGlorify>(
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
        ],
      ),
    );
  }
}
