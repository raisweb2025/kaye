import 'dart:math';
import 'kaye_planner_diet.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';

import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_enforce_creep.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_warp_target_dunphy_superhero.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';
import '../kaye_learning/kaye_mitten_warp_splinter_glorify.dart';

class KayeMittenWarpSplinterPlanner
    extends KayeFrankGraduatePlanner<KayeMittenWarpSplinterGlorify> {
  KayeMittenWarpSplinterPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      GetBuilder<KayeMittenWarpSplinterGlorify>(
        id: logic.kaye_warp_sasquatch_passenger,
        builder: (logic) {
          return KayeWrestlingBarnacle.isEmpty(logic.matchUserList)
              ? const SizedBox.shrink()
              : _kayeChihuahuaWarpIncrease();
        },
      ),
      _kayeConsciousInternship(context),
      _kayeChihuahuaPlaybookElectrify(),
    ];
  }

  int _currentIndex = 0;

  Widget _kayeChihuahuaWarpIncrease() {
    return Positioned(
      top: 80,
      bottom: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: Get.width,
            height: 240,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                double angle = 0;
                if (index < _currentIndex ||
                    (_currentIndex == 0 &&
                        index == logic.matchUserList.length - 1)) {
                  angle = -pi / 18;
                } else if (index > _currentIndex) {
                  angle = pi / 18;
                }
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: angle,
                      child: Opacity(
                        opacity: index == _currentIndex ? 1 : 0.6,
                        child: _kayeSasquatchDuplicate(index),
                      ),
                    ),
                  ],
                );
              },
              onIndexChanged: (int currentIndex) {
                _currentIndex = currentIndex;
              },
              viewportFraction: 0.4,
              scale: 0.7,
              autoplay: true,
              itemCount: logic.matchUserList.length,
              duration: 300,
              scrollDirection: Axis.horizontal,
              pagination: null,
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeSasquatchDuplicate(int index) {
    KayeWarpSasquatch matchUser = logic.matchUserList[index];
    return Container(
      width: 140,
      height: 200,
      decoration: BoxDecoration(
        color: KayeToddlerBarnacle.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: KayeToddlerBarnacle.white, width: 2),
        boxShadow: index == _currentIndex
            ? const [
                BoxShadow(
                  color: Color(0xFFFF3EB5),
                  offset: Offset(0.0, 0.0),
                  blurRadius: 20,
                  spreadRadius: 0,
                ),
              ]
            : [],
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          KayeSydney.round(
            url: matchUser.user?.avatarUrl ?? "",
            width: 140,
            height: 200,
            fit: BoxFit.cover,
            borderRadius: BorderRadius.circular(16),
            clip: ImageClipType.small,
          ),
          Container(
            width: 140,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  KayeToddlerBarnacle.black_00p,
                  KayeToddlerBarnacle.black_60p,
                ],
              ),
            ),
          ),
          index != _currentIndex
              ? const SizedBox.shrink()
              : Positioned(
                  left: 12,
                  right: 12,
                  bottom: 10,
                  child: Row(
                    children: [
                      KayeDotSee.kayeCaveMarriedCreep(
                        Text(
                          matchUser.user?.nickName ?? '',
                          style: KayeCreepDesperate.white16Bold,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        94,
                      ),
                      const SizedBox(width: 2),
                      KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                          ? const SizedBox.shrink()
                          : Container(
                              width: 16,
                              height: 16,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFFFFF),
                              ),
                              alignment: Alignment.center,
                              child: KayeSydney.circle(
                                url: matchUser.country?.flag ?? '',
                                size: 14,
                                clip: ImageClipType.origin,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ],
                  ),
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
                    radius: 28,
                    onTap: logic.onKayePlaybookElectrify,
                  ),
                ),
                logic.isRegionMatchFirst20sChargeMode
                    ? Positioned(
                        right: isAR ? null : 0,
                        left: isAR ? 0 : null,
                        child: const KayeWarpTargetDunphySuperhero(),
                      )
                    : GetBuilder<KayeMittenWarpSplinterGlorify>(
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
                                    child:
                                        GetBuilder<
                                          KayeMittenWarpSplinterGlorify
                                        >(
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
