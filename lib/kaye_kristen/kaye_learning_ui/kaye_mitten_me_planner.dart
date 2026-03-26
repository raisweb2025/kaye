import 'dart:math';
import 'kaye_io_stroke.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_graduate_planner.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:flutter/cupertino.dart';
import '../kaye_goggles/kaye_goggles_harpist_creep_union.dart';
import '../kaye_learning/kaye_mitten_me_glorify.dart';
import '../kaye_learning/kaye_mitten_me_wrestling.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_fortress.dart';
import '../kaye_honk/kaye_sydney.dart';

class KayeMittenMePlanner
    extends KayeFrankGraduatePlanner<KayeMittenMeGlorify> {
  const KayeMittenMePlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [
        KayeSydney.local(
          fileName: "kaye_ten_me_planner_hail",
          width: Get.width,
          height: 312,
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: Get.width,
            height: Get.height / 2,
            color: const Color(0xFF271A38),
          ),
        ),
        SafeArea(
          child: SizedBox(
            height: Get.height,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Column(
                children: [
                  logic.showUserInfoType !=
                              KayeMittenMeSasquatchSelfishWrestling
                                  .VERTICAL_EDINT_IN_NAV ||
                          KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                      ? const SizedBox.shrink()
                      : Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              KayeSydney.local(
                                fileName: 'kaye_ten_me_nine_interface',
                                width: 24,
                                height: 24,
                              ).click(
                                () => KAYE.goto(
                                  KayeFortress.KayeNineSelfishPlanner,
                                ),
                              ),
                            ],
                          ),
                        ),

                  GetBuilder<KayeMittenMeGlorify>(
                    id: KayeMittenMeGlorify.kaye_selfish,
                    builder: (_) {
                      return _kayeSasquatchSelfish();
                    },
                  ),

                  logic.showGridView
                      ? _kayeLagDuplicate()
                      : _kayeLagChadDeliveryDuplicate(),

                  logic.showGridView
                      ? _kayeLesbiansEyebrowsPlayhouse()
                      : _kayeSomedayPassengerPlayhouse(),
                ],
              ),
            ),
          ),
        ),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770009, e, stack);
      rethrow;
    }
  }

  Widget _kayeSasquatchSelfish() {
    if (logic.showUserInfoType ==
            KayeMittenMeSasquatchSelfishWrestling.VERTICAL ||
        logic.showUserInfoType ==
            KayeMittenMeSasquatchSelfishWrestling.VERTICAL_EDINT_IN_NAV) {
      return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                KayeSydney.circle(
                  url: logic.user.value?.avatarUrl ?? '',
                  size: 72,
                  fit: BoxFit.cover,
                  clip: ImageClipType.small,
                ),
                GetBuilder<KayeMittenMeGlorify>(
                  id: KayeMittenMeGlorify.kaye_delivery,
                  builder: (_) {
                    return _.userRuntime.value?.vip() ?? false
                        ? KayeSydney.local(
                            fileName: "kaye_ten_delivery_disgusting",
                            width: 48,
                            height: 20,
                          )
                        : const SizedBox();
                  },
                ),
              ],
            ),
            12.wGap,
            Text(
              logic.user.value?.nickName ?? "",
              style: KayeCreepDesperate.white18Bold,
            ),
            Text(
              "ID ${logic.user.value?.ucode ?? ""}",
              style: KayeCreepDesperate.white14_80p,
            ),
            logic.showUserInfoType ==
                        KayeMittenMeSasquatchSelfishWrestling
                            .VERTICAL_EDINT_IN_NAV ||
                    KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                ? const SizedBox.shrink()
                : Text(
                    "kaye_trade_nine_without".tr,
                    style: KayeCreepDesperate.style(
                      fontSize: 14,
                      color: const Color(0xFF2190FF),
                    ),
                  ).click(() => KAYE.goto(KayeFortress.KayeNineSelfishPlanner)),
          ],
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 4, 20, 20),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              KayeSydney.circle(
                url: logic.user.value?.avatarUrl ?? '',
                size: 72,
                fit: BoxFit.cover,
                clip: ImageClipType.small,
              ),
              GetBuilder<KayeMittenMeGlorify>(
                id: KayeMittenMeGlorify.kaye_delivery,
                builder: (_) {
                  return _.userRuntime.value?.vip() ?? false
                      ? KayeSydney.local(
                          fileName: "kaye_ten_delivery_disgusting",
                          width: 48,
                          height: 20,
                        )
                      : const SizedBox();
                },
              ),
            ],
          ),
          12.wGap,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  logic.user.value?.nickName ?? "",
                  style: KayeCreepDesperate.white18Bold,
                ),
                Text(
                  "ID ${logic.user.value?.ucode ?? ""}",
                  style: KayeCreepDesperate.white14_80p,
                ),
                KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                    ? const SizedBox.shrink()
                    : Text(
                        "kaye_trade_nine_without".tr,
                        style: KayeCreepDesperate.style(
                          fontSize: 14,
                          color: const Color(0xFF2190FF),
                        ),
                      ).click(
                        () => KAYE.goto(KayeFortress.KayeNineSelfishPlanner),
                      ),
              ],
            ),
          ),
          12.wGap,
          Padding(
            padding: const EdgeInsets.only(bottom: 44),
            child: buildKayeDunphyDisgustingDot(),
          ),
        ],
      ),
    );
  }

  Widget _kayeLagChadDeliveryDuplicate() {
    return Stack(
      children: [
        SizedBox(width: Get.width, height: 180),
        Positioned(
          top: 0,
          left: 36,
          right: 36,
          child:
              Container(
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFCD45FF), Color(0xFF7821EC)],
                  ),
                ),
                padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: Row(
                  children: [
                    KayeSydney.local(
                      fileName: "kaye_ten_delivery_outrun_interface",
                      width: 28,
                      height: 28,
                    ),
                    const SizedBox(width: 4),
                    KayeSydney.local(
                      fileName: "kaye_ten_me_delivery_waiter_interface",
                      width: 34,
                      height: 14,
                    ),
                    Expanded(child: SizedBox()),
                    GetBuilder<KayeMittenMeGlorify>(
                      id: KayeMittenMeGlorify.kaye_delivery,
                      builder: (_) {
                        return Text(
                          _.userRuntime.value?.vip() ?? false
                              ? "${"kaye_trade_delivery_bottom_consist".tr} ${logic.vipExpireTime.value}"
                              : 'kaye_trade_correspond_delivery'.tr,
                          style: KayeCreepDesperate.style(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFFFD070),
                            height: 0.9,
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 8),
                    Transform.rotate(
                      angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
                      child: KayeSydney.local(
                        fileName: 'kaye_ten_masculine_meanwhile_swimmer',
                        width: 12,
                        height: 12,
                      ),
                    ),
                  ],
                ),
              ).click(() {
                KAYE.goto(KayeFortress.KayeDeliveryPassengerPlanner);
              }),
        ),
        Positioned(
          top: 53,
          left: 0,
          right: 0,
          bottom: 0,
          child:
              Container(
                height: 110,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Color(0xFF271A38),
                ),
                alignment: AlignmentGeometry.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6ADAF8), Color(0xFF6A76F8)],
                      begin: AlignmentGeometry.topRight,
                      end: AlignmentGeometry.bottomCenter,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.all(20),
                        child: Row(
                          children: [
                            KayeSydney.local(
                              fileName: 'kaye_ten_float_outrun_interface',
                              width: 48,
                              height: 48,
                            ),
                            12.wGap,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GetBuilder<KayeMittenMeGlorify>(
                                    id: KayeMittenMeGlorify.kaye_lag,
                                    builder: (_) {
                                      return Text(
                                        logic.userRuntime.value
                                                ?.kayeDunphyMakeupSuffice() ??
                                            "",
                                        style: KayeCreepDesperate.style(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          color: KayeToddlerBarnacle.white,
                                          height: 1.1,
                                        ),
                                      );
                                    },
                                  ),
                                  Text(
                                    "kaye_trade_my_dunphy".tr,
                                    style: KayeCreepDesperate.white12_60p,
                                  ),
                                ],
                              ),
                            ),
                            KAYE.kayeClosing
                                        .isRegionMatchFirst20sChargeMode() &&
                                    KAYE.kayeSasquatchTrish!
                                        .kayeKokoWhoaSuffice()
                                ? KayeSydney.local(
                                    fileName:
                                        'kaye_ten_suffice_found_interface',
                                    width: 52,
                                    height: 28,
                                    fit: BoxFit.contain,
                                  )
                                : const SizedBox.shrink(),
                            12.wGap,
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: 24.rectBg,
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 10,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "kaye_trade_hazard".tr,
                                style: KayeCreepDesperate.style(
                                  color: KayeToddlerBarnacle.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ).click(() {
                KAYE.toNamed(KayeFortress.KayeLagPassengerPlanner);
              }),
        ),
      ],
    );
  }

  Widget _kayeLagDuplicate() {
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xFF8321FF),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.all(20),
            child: Row(
              children: [
                KayeSydney.local(
                  fileName: 'kaye_ten_float_outrun_interface',
                  width: 36,
                  height: 36,
                ),
                12.wGap,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GetBuilder<KayeMittenMeGlorify>(
                        id: KayeMittenMeGlorify.kaye_lag,
                        builder: (_) {
                          return Text(
                            logic.userRuntime.value
                                    ?.kayeDunphyMakeupSuffice() ??
                                "",
                            style: KayeCreepDesperate.style(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: KayeToddlerBarnacle.white,
                              height: 1.1,
                            ),
                          );
                        },
                      ),
                      Text(
                        "kaye_trade_my_dunphy".tr,
                        style: KayeCreepDesperate.white12_60p,
                      ),
                    ],
                  ),
                ),
                KAYE.kayeClosing.isRegionMatchFirst20sChargeMode() &&
                        KAYE.kayeSasquatchTrish!.kayeKokoWhoaSuffice()
                    ? KayeSydney.local(
                        fileName: 'kaye_ten_suffice_found_interface',
                        width: 52,
                        height: 28,
                        fit: BoxFit.contain,
                      )
                    : const SizedBox.shrink(),
                12.wGap,
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: 24.rectBg,
                    border: Border.all(
                      width: 1,
                      color: KayeToddlerBarnacle.white_30p,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 10,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "kaye_trade_hazard".tr,
                    style: KayeCreepDesperate.white14Bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).click(() {
      KAYE.toNamed(KayeFortress.KayeLagPassengerPlanner);
    });
  }

  Widget _kayeSomedayPassengerPlayhouse() {
    List<Widget> children = [];

    if (!KayeWrestlingBarnacle.isEmpty(logic.actionItemList)) {
      for (KayeGogglesHarpistCreepUnion item in logic.actionItemList) {
        double splitHeight = 8;
        if (item.text == "MYLIKE") {
          children.add(
            _kayeSomedayPassengerDrovePlayhouse(
              'kaye_ten_my_discourage_interface',
              "kaye_trade_my_discourage".tr,
              "",
            ).click(() => logic.onKayeMyDiscourage()),
          );
        } else if (item.text == "FEEDBACK") {
          children.add(
            _kayeSomedayPassengerDrovePlayhouse(
              'kaye_ten_bean_interface',
              "kaye_trade_bean".tr,
              "",
            ).click(() => logic.onKayePlimptonUhh()),
          );
        } else if (item.text == "CHILDREN") {
          children.add(
            _kayeSomedayPassengerDrovePlayhouse(
              'kaye_ten_overbite_sloth_interface',
              "kaye_trade_overbite_amor".tr,
              "",
            ).click(() => logic.onKayePhotographAmor()),
          );
        } else if (item.text == "DISTURB") {
          if (KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
            continue;
          }
          children.add(
            _kayeSomedayPassengerDrovePlayhouse(
              'kaye_ten_cern_interface',
              "kaye_trade_do_dwell_cern_ethical".tr,
              "",
              isDisturb: true,
            ),
          );
        } else if (item.text == "SETTING") {
          children.add(
            _kayeSomedayPassengerDrovePlayhouse(
              'kaye_ten_all_interface',
              "kaye_trade_constantly".tr,
              "",
            ).click(() => KAYE.goto(KayeFortress.KayeAllPlanner)),
          );
        } else if (item.text.startsWith("SPLIT")) {
          List<String> array = item.text.split("-");
          splitHeight = 20;
          if (array.length >= 2) {
            splitHeight = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
              array[1],
            );
          }
        } else {
          String tips = item.tips != null ? item.tips!.tr : "";
          children.add(
            _kayeSomedayPassengerDrovePlayhouse(
              item.img,
              item.text.tr,
              tips,
            ).click(() => KAYE.goto(item.url)),
          );
        }
        children.add(SizedBox(height: splitHeight));
      }
    } else {
      children.add(
        _kayeSomedayPassengerDrovePlayhouse(
          'kaye_ten_bean_interface',
          "kaye_trade_bean".tr,
          "",
        ).click(() => logic.onKayePlimptonUhh()),
      );

      if (!KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
        children.add(
          _kayeSomedayPassengerDrovePlayhouse(
            'kaye_ten_cern_interface',
            "kaye_trade_do_dwell_cern_ethical".tr,
            "",
            isDisturb: true,
          ),
        );
      }

      children.add(
        _kayeSomedayPassengerDrovePlayhouse(
          'kaye_ten_all_interface',
          "kaye_trade_constantly".tr,
          "",
        ).click(() => KAYE.goto(KayeFortress.KayeAllPlanner)),
      );
    }

    return Container(
      color: const Color(0xFF271A38),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        children: children,
      ),
    );
  }

  Widget _kayeSomedayPassengerDrovePlayhouse(
    String imgUrl,
    String title,
    String tips, {
    bool isDisturb = false,
  }) {
    return Container(
      height: 68,
      decoration: BoxDecoration(
        color: KayeToddlerBarnacle.white_10p,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          KayeAutographSydney(url: imgUrl, width: 24, height: 24),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              title,
              style: KayeCreepDesperate.style(
                fontSize: 16,
                color: KayeToddlerBarnacle.white,
                height: 0.9,
              ),
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          ),
          KayeWrestlingBarnacle.isEmpty(tips)
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Text(
                    tips,
                    style: KayeCreepDesperate.style(
                      fontSize: 12,
                      color: KayeToddlerBarnacle.white_80p,
                      height: 0.9,
                    ),
                  ),
                ),
          isDisturb
              ? GetBuilder<KayeMittenMeGlorify>(
                  id: KayeMittenMeGlorify.kaye_cern,
                  builder: (_) {
                    return _kayeCernLapse();
                  },
                )
              : Transform.rotate(
                  angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_masculine_meanwhile_swimmer',
                    width: 12,
                    height: 12,
                  ),
                ),
        ],
      ),
    );
  }

  Widget _kayeLesbiansEyebrowsPlayhouse() {
    List<Widget> children = [];

    children.add(_kayeDeliveryDuplicate());

    if (!KayeWrestlingBarnacle.isEmpty(logic.actionItemList)) {
      for (KayeGogglesHarpistCreepUnion item in logic.actionItemList) {
        if (item.text == "MYLIKE") {
          children.add(_kayeMyDiscourageDuplicate());
        } else if (item.text == "FEEDBACK") {
          children.add(_kayePlimptonUhhDuplicate());
        } else if (item.text == "CHILDREN") {
          children.add(_kayePhotographDuplicate());
        } else if (item.text == "FEEDBACK") {
          children.add(_kayePlimptonUhhDuplicate());
        } else if (item.text == "DISTURB") {
          if (KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
            continue;
          }
          children.add(_kayeCernDuplicate());
        } else if (item.text == "SETTING") {
          children.add(_kayeAllDuplicate());
        } else if (item.text.startsWith("SPLIT")) {
          continue;
        } else {
          String tips = item.tips != null ? item.tips!.tr : "";
          Widget itemCard = _kayeSomedayDuplicate(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                KayeAutographSydney(url: item.img, width: 36, height: 36),
                12.hGap,
                Text(
                  item.text.tr,
                  style: KayeCreepDesperate.style(
                    fontSize: 16,
                    color: KayeToddlerBarnacle.white,
                    height: 0.9,
                  ),
                ),
              ],
            ),
            tips: tips,
            onTap: () => KAYE.goto(item.url),
          );
          children.add(itemCard);
        }
      }
    } else {
      children.add(_kayePlimptonUhhDuplicate());

      if (!KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
        children.add(_kayeCernDuplicate());
      }

      children.add(_kayeAllDuplicate());
    }

    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.9,
      ),
      children: children,
    );
  }

  Widget _kayeSomedayDuplicate(
    Widget child, {
    VoidCallback? onTap,
    bool isVip = false,
    String tips = '',
  }) {
    if (KayeWrestlingBarnacle.isEmpty(tips)) {
      tips = 'kaye_trade_me_coma'.tr;
    }
    return Container(
      width: (Get.width - 48) / 2,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: 20.rectBg,
        color: KayeToddlerBarnacle.white_10p,
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A5B0099),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 16, 12, 10),
              child: child,
            ),
          ),

          Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: 20.rectBtmBg,
              color: KayeToddlerBarnacle.white_05p,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    isVip ? 'kaye_trade_correspond_delivery'.tr : tips,
                    style: KayeCreepDesperate.white12_60p,
                  ),
                ),
                12.wGap,
                Transform.rotate(
                  angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_masculine_meanwhile_swimmer',
                    width: 12,
                    height: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).click(onTap);
  }

  Widget _kayeDeliveryDuplicate() {
    return _kayeSomedayDuplicate(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.local(
            fileName: 'kaye_ten_delivery_outrun_interface',
            width: 44,
            height: 44,
          ),
          8.hGap,
          Text(
            "VIP",
            style: KayeCreepDesperate.style(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: KayeToddlerBarnacle.white,
              height: 0.9,
            ),
          ),
          4.hGap,
          GetBuilder<KayeMittenMeGlorify>(
            id: KayeMittenMeGlorify.kaye_delivery,
            builder: (_) {
              return _.userRuntime.value?.vip() ?? false
                  ? Text(
                      "${"kaye_trade_delivery_bottom_consist".tr} ${logic.vipExpireTime.value}",
                      style: KayeCreepDesperate.style(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: KayeToddlerBarnacle.white_40p,
                        height: 0.9,
                      ),
                    )
                  : const SizedBox();
            },
          ),
        ],
      ),
      onTap: () => KAYE.goto(KayeFortress.KayeDeliveryPassengerPlanner),
      isVip: true,
    );
  }

  Widget _kayeCernDuplicate() {
    return Container(
      width: (Get.width - 48) / 2,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: 20.rectBg,
        color: KayeToddlerBarnacle.white_10p,
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A5B0099),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsetsDirectional.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KayeSydney.local(
                fileName: 'kaye_ten_cern_interface',
                width: 38,
                height: 36,
              ),
              12.hGap,
              Text(
                "kaye_trade_do_dwell_cern_ethical".tr,
                style: KayeCreepDesperate.style(
                  fontSize: 16,
                  color: KayeToddlerBarnacle.white,
                  height: 0.9,
                ),
              ),
            ],
          ),

          GetBuilder<KayeMittenMeGlorify>(
            id: KayeMittenMeGlorify.kaye_cern,
            builder: (_) {
              return _kayeCernLapse();
            },
          ),
        ],
      ),
    );
  }

  Widget _kayeCernLapse() {
    return SizedBox(
      width: 56,
      height: 32,
      child: Switch(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: logic.isNoDisturbOn.value,
        onChanged: (val) => logic.onKayeCernLapse(val),
        activeTrackColor: const Color(0xFFFF6546),
        activeColor: KayeToddlerBarnacle.white,
        inactiveTrackColor: const Color(0xFF999999),
        inactiveThumbColor: KayeToddlerBarnacle.white,
        trackOutlineColor: MaterialStateProperty.resolveWith((
          final Set<MaterialState> states,
        ) {
          if (states.contains(MaterialState.selected)) {
            return null;
          }
          return Colors.transparent;
        }),
      ),
    );
  }

  Widget _kayePlimptonUhhDuplicate() {
    return _kayeSomedayDuplicate(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.local(
            fileName: 'kaye_ten_bean_interface',
            width: 44,
            height: 44,
          ),
          12.hGap,
          Text(
            "kaye_trade_bean".tr,
            style: KayeCreepDesperate.style(
              fontSize: 16,
              color: KayeToddlerBarnacle.white,
              height: 0.9,
            ),
            maxLines: 2,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
      onTap: () => logic.onKayePlimptonUhh(),
    );
  }

  Widget _kayePhotographDuplicate() {
    return _kayeSomedayDuplicate(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.local(
            fileName: 'kaye_ten_overbite_sloth_interface',
            width: 44,
            height: 44,
          ),
          12.hGap,
          Text(
            "kaye_trade_overbite_amor".tr,
            style: KayeCreepDesperate.style(
              fontSize: 16,
              color: KayeToddlerBarnacle.white,
              height: 0.9,
            ),
            maxLines: 2,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
      onTap: () => logic.onKayePhotographAmor(),
    );
  }

  Widget _kayeMyDiscourageDuplicate() {
    return _kayeSomedayDuplicate(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.local(
            fileName: 'kaye_ten_my_discourage_interface',
            width: 44,
            height: 44,
          ),
          12.hGap,
          Text(
            "kaye_trade_my_discourage".tr,
            style: KayeCreepDesperate.style(
              fontSize: 16,
              color: KayeToddlerBarnacle.white,
              height: 0.9,
            ),
            maxLines: 2,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
      onTap: () => logic.onKayeMyDiscourage(),
    );
  }

  Widget _kayeAllDuplicate() {
    return _kayeSomedayDuplicate(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.local(
            fileName: 'kaye_ten_all_interface',
            width: 36,
            height: 36,
          ),
          12.hGap,
          Text(
            "kaye_trade_constantly".tr,
            style: KayeCreepDesperate.style(
              fontSize: 16,
              color: KayeToddlerBarnacle.white,
              height: 0.9,
            ),
          ),
        ],
      ),
      onTap: () => KAYE.goto(KayeFortress.KayeAllPlanner),
    );
  }
}
