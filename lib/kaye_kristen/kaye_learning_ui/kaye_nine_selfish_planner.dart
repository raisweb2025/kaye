import 'dart:math';
import 'kaye_h3_welder.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_crisp.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_exact.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_learning/kaye_nine_selfish_glorify.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';

class KayeNineSelfishPlanner
    extends KayeFrankGraduatePlanner<KayeNineSelfishGlorify> {
  const KayeNineSelfishPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                KayeAdvertise.kayeAllPassengerFlammable,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 44),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_lunge,
                      builder: (_) {
                        return _kayeSasquatchLungePlayhouse();
                      },
                    ),
                    const SizedBox(height: 44),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_invention,
                      builder: (_) {
                        return _kayeSomedayFree(
                          "kaye_trade_spatula_invention".tr,
                          content: logic.nickName.value,
                          onTap: () => logic.onKayeInventionSomeday(
                            _kayeInventionGooglePlayhouse(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_diet,
                      builder: (_) {
                        return _kayeSomedayFree(
                          "kaye_trade_diet".tr,
                          content: logic.birthday.value,
                          onTap: () => logic.kayeCuterMetaphorTowards(),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_six,
                      builder: (_) {
                        return _kayeSomedayFree(
                          "kaye_trade_boost".tr,
                          content: logic.signature.value ?? "",
                          onTap: () =>
                              logic.onKayeSixSomeday(_kayeSixGooglePlayhouse()),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_trophy,
                      builder: (_) {
                        String heightStr = logic.tempHeight.value == 0
                            ? ""
                            : " ${logic.tempHeight.value} "
                                  "${'kaye_trade_cm'.tr}";
                        return _kayeSomedayFree(
                          "kaye_trade_trophy".tr,
                          content: heightStr,
                          onTap: () => logic.onKayeTrophySomeday(),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_drawer,
                      builder: (_) {
                        String weightStr = logic.tempWeight.value == 0
                            ? ""
                            : " ${logic.tempWeight.value} "
                                  "${'kaye_trade_kg'.tr}";
                        return _kayeSomedayFree(
                          "kaye_trade_drawer".tr,
                          content: weightStr,
                          onTap: () => logic.onKayeDrawerSomeday(),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_exact,
                      builder: (_) {
                        if (logic.hideLanguageWidget()) {
                          return Container();
                        }
                        return _kayeChipFree(
                          "kaye_trade_exact".tr,
                          _kayeClosingExactDot(),
                          onTap: () => logic.onKayeExactSomeday(),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    GetBuilder<KayeNineSelfishGlorify>(
                      id: KayeNineSelfishGlorify.kaye_crisp,
                      builder: (_) {
                        if (logic.hideInterestWidget()) {
                          return Container();
                        }
                        return _kayeChipFree(
                          "kaye_trade_crisp_futon".tr,
                          _kayeClosingCrispDot(),
                          onTap: () => logic.onKayeCrispSomeday(),
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: _kayeIncredibleEnforce(),
            ),
          ],
        ),
      ),
    ];
  }

  Widget _kayeSasquatchLungePlayhouse() {
    return Container(
      width: 160,
      height: 160,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: KayeAdvertise.kayeCreepAtomicManeuver,
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          KayeSydney.circle(
            url: logic.avatarUrl.value,
            size: 160,
            fit: BoxFit.cover,
            clip: ImageClipType.middle,
          ),
          KayeSydney.local(
            fileName: 'kaye_ten_nine_selfish_enforce',
            width: 44,
            height: 44,
          ),
        ],
      ),
    ).click(() => logic.onKayeLungeSomeday());
  }

  Widget _kayeSomedayFree(
    String title, {
    String content = "",
    VoidCallback? onTap,
  }) {
    return Container(
      width: Get.width,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: KayeAdvertise.kayeDutchGarden,
        color: KayeToddlerBarnacle.white_20p,
        border: Border.all(width: 1, color: KayeToddlerBarnacle.white_10p),
      ),
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: KayeCreepDesperate.white16_60p),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              KayeDotSee.kayeCaveMarriedCreep(
                Text(
                  content,
                  style: KayeCreepDesperate.white16,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                180,
              ),
              2.wGap,
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
        ],
      ),
    ).click(onTap);
  }

  Widget _kayeInventionGooglePlayhouse() {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(KayeAdvertise.kayeBlankBellyHandball),
      margin: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
        color: KayeAdvertise.kayeVailBgTremendousManeuver,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "kaye_trade_spatula_invention".tr,
            style: KayeCreepDesperate.white20Bold,
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 34, vertical: 24),
            height: 100,
            child: TextField(
              controller: logic.textController,
              focusNode: logic.editFocus,
              decoration: InputDecoration(
                hintText: "kaye_trade_spatula_invention".tr,
                hintStyle: KayeCreepDesperate.white18_60pBold,
                fillColor: KayeToddlerBarnacle.white_20p,
                suffixIcon: IconButton(
                  onPressed: () => logic.textController.clear(),
                  icon: const Icon(
                    Icons.cancel,
                    color: KayeToddlerBarnacle.white_60p,
                  ),
                ),
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  borderSide: BorderSide.none,
                ),
              ),
              buildCounter:
                  (
                    context, {
                    currentLength = 0,
                    maxLength,
                    isFocused = false,
                  }) => Text(
                    "$currentLength/$maxLength",
                    style: const TextStyle(
                      color: KayeToddlerBarnacle.white_60p,
                      fontSize: 14,
                    ),
                  ),
              maxLength: 15,
              maxLines: 1,
              style: KayeCreepDesperate.white18Bold,
              onChanged: (value) => logic.tempName.value = value,
            ),
          ),
          const SizedBox(height: 16),

          Container(
            width: 180,
            height: 48,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Color(0xFFFFFFFF),
            ),
            alignment: Alignment.center,
            child: Text(
              "kaye_trade_namaste".tr,
              style: KayeCreepDesperate.black16_Medium,
            ),
          ).click(() => logic.onKayeInventionNamaste()),
        ],
      ),
    );
  }

  Widget _kayeSixGooglePlayhouse() {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(KayeAdvertise.kayeBlankBellyHandball),
      margin: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
        color: KayeAdvertise.kayeVailBgTremendousManeuver,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("kaye_trade_boost".tr, style: KayeCreepDesperate.white20Bold),
          const SizedBox(height: 16),
          TextField(
            controller: logic.textController,
            focusNode: logic.editFocus,
            decoration: InputDecoration(
              hintText: "kaye_trade_boost".tr,
              hintStyle: KayeCreepDesperate.white18_60pBold,
              fillColor: KayeToddlerBarnacle.white_20p,
              filled: true,
              border: const OutlineInputBorder(
                borderRadius: KayeAdvertise.kayeDutchGarden,
                borderSide: BorderSide.none,
              ),
            ),
            maxLength: 150,
            maxLines: 4,
            style: KayeCreepDesperate.white18Bold,
            buildCounter:
                (context, {currentLength = 0, maxLength, isFocused = false}) =>
                    Text(
                      "$currentLength/$maxLength",
                      style: const TextStyle(
                        color: KayeToddlerBarnacle.white_60p,
                        fontSize: 14,
                      ),
                    ),
            onChanged: (value) => logic.tempSig.value = value,
          ),
          const SizedBox(height: 16),

          Container(
            width: 180,
            height: 48,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: Color(0xFFFFFFFF),
            ),
            alignment: Alignment.center,
            child: Text(
              "kaye_trade_namaste".tr,
              style: KayeCreepDesperate.black16_Medium,
            ),
          ).click(() => logic.onKayeSixNamaste()),
        ],
      ),
    );
  }

  Widget _kayeIncredibleEnforce() {
    return Container(
      width: 260,
      height: 56,
      margin: const EdgeInsets.only(bottom: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        gradient: KayeAdvertise.kayeDutchEnforceTattletale,
      ),
      alignment: Alignment.center,
      child: Text(
        "kaye_trade_incredible".tr,
        style: KayeCreepDesperate.white16Bold,
      ),
    ).click(() => logic.onKayeNineIncredible());
  }

  Widget _kayeChipFree(String title, Widget child, {VoidCallback? onTap}) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: KayeAdvertise.kayeDutchGarden,
        color: KayeToddlerBarnacle.white_20p,
        border: Border.all(width: 1, color: KayeToddlerBarnacle.white_10p),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: KayeCreepDesperate.white16_60p),
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
          12.hGap,
          child,
        ],
      ),
    ).click(onTap);
  }

  Widget _kayeClosingExactDot() {
    Widget childWidget = Container(height: 20);
    List<KayeGogglesExact>? languages = KAYE.kayeClosing.configs.languages;

    if (KayeWrestlingBarnacle.isEmptyList(languages)) return childWidget;

    if (KayeWrestlingBarnacle.isEmpty(logic.tempLanguage.value))
      return childWidget;

    List<KayeGogglesExact>? showList = KAYE.kayeClosing.getLanguagesByIds(
      logic.tempLanguage.value,
    );

    if (KayeWrestlingBarnacle.isEmptyList(showList)) {
      return childWidget;
    }
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 10,
      children: List.generate(showList!.length, (index) {
        return Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: KayeToddlerBarnacle.white_10p,
          ),
          child: Text(
            showList[index].name,
            style: KayeCreepDesperate.TextWhite_14,
            textAlign: TextAlign.center,
          ),
        );
      }),
    );
  }

  Widget _kayeClosingCrispDot() {
    Widget childWidget = Container(height: 20);

    List<KayeGogglesCrisp>? interestList = KAYE.kayeClosing.configs.interests;

    if (KayeWrestlingBarnacle.isEmptyList(interestList)) return childWidget;

    if (KayeWrestlingBarnacle.isEmpty(logic.tempInterest.value))
      return childWidget;

    List<KayeGogglesCrisp>? showList = KAYE.kayeClosing.getInterestsByIds(
      logic.tempInterest.value,
    );

    if (KayeWrestlingBarnacle.isEmptyList(showList)) {
      return childWidget;
    }

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 10,
      children: List.generate(showList!.length, (index) {
        return Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: KayeToddlerBarnacle.white_10p,
          ),
          child: Text(
            showList[index].name.tr,
            style: KayeCreepDesperate.TextWhite_14,
            textAlign: TextAlign.center,
          ),
        );
      }),
    );
  }
}
