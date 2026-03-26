import 'dart:math';
import 'kaye_planner_diet.dart';
import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_cable.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_learning_ui/kaye_political_lead_planner.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_planner.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_goal_magically.dart';
import 'package:flutter/widgets.dart';
import '../kaye_goggles/kaye_goggles_crisp.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:svgaplayer_flutter_rhr/svgaplayer_flutter.dart';

import '../kaye_learning/kaye_goal_order_glorify.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';

class KayeGoalOrderPlanner extends KayeFrankPlanner<KayeGoalOrderGlorify> {
  const KayeGoalOrderPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Material(
          type: MaterialType.transparency,
          child: fullScreenContainer(context),
        ),
      ),
    );
  }

  Stack fullScreenContainer(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            width: Get.width,
            height: Get.height,
            color: "0F0022".toColor(),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.fromLTRB(24, 80, 24, 0),
            child: KayeDotGoalMagically(
              color: Colors.blue,
              width: 70,
              icon: logic.chatCall.user.avatarUrl,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.fromLTRB(24, 278, 24, 0),
            child: Column(
              children: [
                KayeDotSee.kayeCaveMarriedCreep(
                  Text(
                    logic.chatCall.user.nickName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: KayeToddlerBarnacle.white,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Get.width - 48,
                ),
                KayeTrash.vGap6,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KayeDotSee.kayeLeadVirgin(
                      logic.chatCall.chatPrice.toString(),
                    ),
                    8.wGap,
                    Container(
                      height: 26,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                        borderRadius: 15.rectBg,
                        color: KayeToddlerBarnacle.white_20p,
                      ),
                      child: kayeGoalLatin(logic.chatCall.user),
                    ),
                  ],
                ),
                20.hGap,
                _kayeClosingCrispDot(logic.chatCall.user),
                _kayeHumiliateSelfishPlayhouse(logic.chatCall.user),
              ],
            ),
          ),
        ),
        Positioned(
          left: 40,
          right: 40,
          bottom: 32 + Get.mediaQuery.padding.bottom,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: _button(
                  () => logic.clickOnReject(),
                  KayeSydney.local(
                    fileName: 'kaye_ten_ic_order_element',
                    width: 76,
                    height: 76,
                  ),
                ),
              ),
              SizedBox(
                width: 120,
                height: 120,
                child: GetBuilder<KayeGoalOrderGlorify>(
                  id: KayeGoalOrderGlorify.kaye_prototype,
                  builder: (logic) {
                    return _buildAnimPickUp();
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAnimPickUp() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ...logic.animationChildren,
        _button(
          () => logic.clickOnPickup(logic.chatCall, logic.chatCall.user),
          Container(
            width: 76,
            height: 76,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF18AB31),
                  Color(0xFF22BD3D),
                  Color(0xFF2BD04A),
                ],
              ),
            ),
            alignment: Alignment.center,
            child: const SizedBox(
              width: 32,
              height: 32,
              child: SVGASimpleImage(
                assetsName: KayeCable.kaye_uptown_kaye_crow_electrify_outdated,
              ),
            ),
          ),
        ),
        Visibility(
          visible:
              (logic.chatCall.aivCall() && logic.chatCall.hasVideo()) ||
              (KAYE.usable() && !logic.chatCall.aivCall()),
          child: Positioned(
            bottom: 10,
            child: Container(
              height: 28,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                gradient: KayeAdvertise.kayeFoundBgTattletale,
                borderRadius: BorderRadius.circular(24),
              ),
              alignment: Alignment.center,
              child: Text(
                "kaye_trade_found".tr,
                style: KayeAdvertise.kayeFoundCreepDesperate,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _button(VoidCallback onPressed, Widget icon) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
      onPressed: onPressed,
      child: icon,
    );
  }

  Widget avatarBorder({Widget? child}) {
    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(24),
        color: KayeAdvertise.kayePoliticalOrderLungeWarehouse,
        child: child,
      ),
    );
  }

  Widget kayeGoalLatin(KayeLeadGoalSasquatch user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: user.country != null,
          child: Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFFFFF),
            ),
            alignment: Alignment.center,
            child: KayeSydney.circle(
              url: user.country?.flag ?? '',
              size: 16,
              clip: ImageClipType.origin,
              fit: BoxFit.cover,
            ),
          ),
        ),
        KayeTrash.hGap4,
        Visibility(
          visible: user.country != null,
          child: KayeDotSee.kayeCaveMarriedCreep(
            Text(
              user.country?.name ?? "",
              style: KayeCreepDesperate.white14,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            160,
          ),
        ),
      ],
    );
  }

  Widget _kayeClosingCrispDot(KayeLeadGoalSasquatch user) {
    Widget childWidget = Container(height: 0);

    if (user.tagIds?.isEmpty == true) return childWidget;

    List<KayeGogglesCrisp>? showList = KAYE.kayeClosing.getInterestsByIds(
      user.tagIds ?? "",
    );
    if (KayeWrestlingBarnacle.isEmptyList(showList)) {
      return childWidget;
    }
    Widget wrapWidget = Wrap(
      alignment: WrapAlignment.start,
      spacing: 8,
      runSpacing: 8,
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

    return SizedBox(
      width: Get.width,
      child: Column(
        children: [wrapWidget, 16.hGap, KayeTrash.lineH1p2White_10p],
      ),
    );
  }

  Widget _kayeHumiliateSelfishPlayhouse(KayeLeadGoalSasquatch user) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: !KayeWrestlingBarnacle.isEmpty(user.languages),
            child: KayeDotSee.kayeExactFree(
              "kaye_trade_exact".tr,
              "kaye_ten_exact_interface",
              logic.kayeExactWag(user),
            ),
          ),
          Visibility(
            visible: (user.height ?? 0) > 0,
            child: KayeDotSee.kayeSelfishFree(
              "kaye_trade_trophy".tr,
              "kaye_ten_trophy_interface",
              ["${user.height} ${"kaye_trade_cm".tr}"],
            ),
          ),
          Visibility(
            visible: (user.weight ?? 0) > 0,
            child: KayeDotSee.kayeSelfishFree(
              "kaye_trade_drawer".tr,
              "kaye_ten_drawer_interface",
              ["${user.weight} ${"kaye_trade_kg".tr}"],
            ),
          ),
        ],
      ),
    );
  }
}
