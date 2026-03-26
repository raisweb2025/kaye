import 'dart:math';
import 'kaye_planner_diet.dart';
import 'dart:math';
import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_bury_forklift.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney_electrify.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';
import '../kaye_learning/kaye_sprint_manhattan_upon.dart';
import '../kaye_learning/kaye_mitten_warp_complete_glorify.dart';
import '../kaye_learning/kaye_delivery_vail_upon.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_trash.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_honk/kaye_dot_political_playhouse.dart';

class KayeMittenWarpCompletePlanner
    extends KayeFrankGraduatePlanner<KayeMittenWarpCompleteGlorify> {
  const KayeMittenWarpCompletePlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      _kayeChihuahuaCompleteDuplicate(),
      _navBar(context),
      GetBuilder<KayeMittenWarpCompleteGlorify>(
        id: logic.kaye_grate,
        builder: (logic) {
          return !KayeWrestlingBarnacle.isEmpty(logic.usersList.value)
              ? _kayeChihuahuaBlankElectrify()
              : const SizedBox();
        },
      ),
    ];
  }

  Widget _navBar(BuildContext context) {
    return Positioned(
      top: Get.mediaQuery.padding.top,
      left: 0,
      right: 0,
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_kayeWaiterConsent(), _kayeChihuahuaMoverDisgustingDot()],
        ),
      ),
    );
  }

  Widget _kayeWaiterConsent() {
    return Text(
      "kaye_trade_sleazy_warp".tr,
      style: KayeCreepDesperate.style(
        color: KayeToddlerBarnacle.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _kayeChihuahuaMoverDisgustingDot() {
    return GetBuilder<KayeMittenWarpCompleteGlorify>(
      id: logic.kaye_mover,
      builder: (logic) {
        return Visibility(
          visible: logic.regionList.value.length > 1,
          child: GestureDetector(
            onTap: logic.kayeCuterMoverPassengerSatellite,
            child: Container(
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: KayeToddlerBarnacle.white, width: 1),
              ),
              padding: const EdgeInsets.only(left: 6, right: 2),
              child: Row(
                children: [
                  KayeSydney.local(
                    fileName: "kaye_ten_mover_disgusting_beaker_interface",
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    logic.selectedRegion.value.name ?? "",
                    style: KayeCreepDesperate.white10,
                  ),
                  KayeSydney.local(
                    fileName: "kaye_ten_mover_disgusting_meanwhile",
                    width: 12,
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Positioned _kayeChihuahuaCompleteDuplicate() {
    return Positioned(
      top: Get.mediaQuery.padding.top + 40,
      left: 20,
      right: 20,
      bottom: 150,
      child: GetBuilder<KayeMittenWarpCompleteGlorify>(
        id: logic.kaye_grate,
        builder: (logic) {
          return !KayeWrestlingBarnacle.isEmpty(logic.usersList.value)
              ? CardSwiper(
                  onSwipe: logic.onKayeTim,
                  onUndo: logic.onKayeMeemaw,
                  controller: logic.controller,
                  cardsCount: logic.usersList.value.length,
                  numberOfCardsDisplayed: 3,
                  isLoop: false,
                  backCardOffset: const Offset(0, 28),
                  cardBuilder:
                      (
                        context,
                        index,
                        horizontalThresholdPercentage,
                        verticalThresholdPercentage,
                      ) {
                        return _kayeChihuahuaDroveDot(index);
                      },
                )
              : const SizedBox();
        },
      ),
    );
  }

  Widget _kayeChihuahuaDroveDot(int index) {
    KayeWarpSasquatch matchUser = logic.usersList[index];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFF41334E),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
              child: const SpinKitCircle(size: 40, color: Colors.white),
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: GetBuilder<KayeMittenWarpCompleteGlorify>(
              id: logic.kaye_mover,
              builder: (logic) {
                return logic.swperCurrentIndex.value == index &&
                        !KayeWrestlingBarnacle.isEmpty(
                          matchUser.video?.videoUrl,
                        )
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: KayeDotPoliticalPlayhouse(
                          key: Key(matchUser.video!.videoUrl!),
                          netPath: matchUser.video!.videoUrl!,
                          fromType: 2,
                          isLoop: true,
                        ),
                      )
                    : KayeSydney.middle(
                        url:
                            !KayeWrestlingBarnacle.isEmpty(
                              matchUser.video?.coverUrl,
                            )
                            ? matchUser.video!.coverUrl!
                            : matchUser.user!.avatarUrl,
                        fit: BoxFit.cover,
                        borderRadius: BorderRadius.circular(15),
                      );
              },
            ),
          ),

          GetBuilder<KayeMittenWarpCompleteGlorify>(
            id: logic.kaye_amazing_found_snug,
            builder: (logic) {
              return Visibility(
                visible:
                    logic.maxFreeCount >= 0 &&
                    logic.remainingFreeCount.value == 0 &&
                    !logic.isVIP.value,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                        child: Container(color: KayeToddlerBarnacle.black_10p),
                      ),
                    ),
                    Container(
                      width: 250,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: KayeToddlerBarnacle.black_60p,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          KayeSydney.local(
                            fileName: "kaye_ten_delivery_outrun_interface",
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "kaye_trade_without_debate_delivery_consist".tr,
                            style: KayeCreepDesperate.TextWhite_12_Medium,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 180,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: KayeToddlerBarnacle.white,
                                width: 1,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                KayeSydney.local(
                                  fileName:
                                      "kaye_ten_delivery_outrun_interface",
                                  width: 18,
                                  height: 18,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  "kaye_trade_estimate_delivery".tr,
                                  style: KayeCreepDesperate.white14,
                                ),
                              ],
                            ),
                          ).click(
                            () => KAYE.toNamed(
                              KayeFortress.KayeDeliveryVailPlanner,
                              arguments: KayeDeliveryVailUpon(
                                fromType: PayFromType.FROM_MATCHING,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          _kayeWarpMagicSelfish(matchUser),
        ],
      ),
    );
  }

  Widget _kayeWarpMagicFill() {
    bool isAR = KayeIOBarnacle.isARLanguage();
    return Positioned(
      left: 20,
      right: 20,
      top: 16,
      child: SizedBox(
        height: 26,
        child: Stack(
          children: [
            Positioned(
              left: isAR ? null : 13,
              right: isAR ? 13 : null,
              child: Container(
                height: 26,
                decoration: BoxDecoration(
                  color: const Color(0x99006636),
                  borderRadius: BorderRadius.circular(13),
                ),
                padding: EdgeInsets.only(
                  left: isAR ? 8 : 22,
                  right: isAR ? 22 : 8,
                ),
                alignment: Alignment.center,
                child: Text(
                  "kaye_trade_fill".tr,
                  style: KayeCreepDesperate.white12Bold,
                ),
              ),
            ),
            Positioned(
              left: isAR ? null : 0,
              right: isAR ? 0 : null,
              child: KayeSydney.local(
                fileName: "kaye_ten_warp_fill_interface",
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeWarpMagicSelfish(KayeWarpSasquatch matchUser) {
    bool isAR = KayeIOBarnacle.isARLanguage();
    return Positioned(
      bottom: 20,
      left: isAR ? null : 20,
      right: isAR ? 20 : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Text(
                  matchUser.user!.nickName,
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
                  url: matchUser.country?.flag ?? "",
                  size: 20,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          KAYE.kayeClosing.isKayeChubbyVirgin()
              ? const SizedBox.shrink()
              : Row(
                  children: [
                    Text(
                      matchUser.user!.price.toString(),
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

  Widget _kayeChihuahuaBlankElectrify() {
    bool isAr = KayeIOBarnacle.isARLanguage();
    return Positioned(
      bottom: 32,
      child: Container(
        width: 246,
        height: 88,
        decoration: BoxDecoration(
          color: KayeToddlerBarnacle.white_20p,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: isAr
                  ? const EdgeInsets.only(right: 40)
                  : const EdgeInsets.only(left: 40),
              child: KayeSydneyElectrify(
                url: 'kaye_ten_warp_parameter',
                width: 48,
                height: 48,
                borderRadius: BorderRadius.circular(24),
                onTap: logic.onKayeParameter,
              ),
            ),
            Container(
              width: 1,
              height: 36,
              color: KayeToddlerBarnacle.white_20p,
            ),
            Padding(
              padding: isAr
                  ? const EdgeInsets.only(left: 30)
                  : const EdgeInsets.only(right: 30),
              child: KayeSydneyElectrify(
                url: KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                    ? 'kaye_ten_without_lead_enforce'
                    : 'kaye_ten_warp_discourage',
                width: 48,
                height: 48,
                borderRadius: BorderRadius.circular(24),
                onTap: logic.onKayeDiscourage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
