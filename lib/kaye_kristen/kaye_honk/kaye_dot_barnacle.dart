import 'dart:math';
import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/proto/object.pb.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:tapped/tapped.dart';
import '../kaye_goggles/kaye_goggles_latin.dart';
import '../kaye_goggles/kaye_goggles_exact.dart';
import '../kaye_classy/kaye_enforce_creep.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../kaye_goggles/kaye_sasquatch_trish.dart';
import 'kaye_sydney.dart';

abstract class KayeDotSee {
  static AppBar kayeKristenInternship(Widget? title, {Widget? leading}) {
    return AppBar(
      leading: leading,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: title,
    );
  }

  static Widget kayeCaveMarriedCreep(
    Text text,
    double maxWidth, {
    double? minWidth,
  }) {
    return Container(
      constraints: BoxConstraints(minWidth: minWidth ?? 0, maxWidth: maxWidth),
      child: text,
    );
  }

  static Widget kayeWithoutCourtroomMurderDisgusting(int gender, int age) {
    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: KayeToddlerBarnacle.black_10p,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.local(
            fileName: gender == 1
                ? 'kaye_ten_without_courtroom_nasa'
                : 'kaye_ten_without_courtroom_boredom',
            width: 14,
            height: 14,
          ),
          Visibility(
            visible: age > 0 && age <= 35,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 2),
              child: Text(
                age.toString(),
                style: KayeCreepDesperate.black12_Medium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget kayeDutchLatin(KayeGogglesLatin? country) {
    if (country == null) {
      return const SizedBox.shrink();
    }

    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        color: Color(0x33FFFFFF),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.circle(
            url: country.flag,
            size: 12,
            fit: BoxFit.cover,
            clip: ImageClipType.origin,
          ),
          KayeTrash.hGap2,
          KayeDotSee.kayeCaveMarriedCreep(
            Text(
              country.name,
              style: KayeCreepDesperate.white12,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            160,
          ),
        ],
      ),
    );
  }

  static Row kayeSasquatchSelfishLatin(KayeLeadGoalSasquatch user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: user.country != null,
          child: KayeSydney.circle(
            url: user.country?.flag ?? "",
            size: 12,
            fit: BoxFit.cover,
            clip: ImageClipType.origin,
          ),
        ),
        KayeTrash.hGap2,
        Visibility(
          visible: user.country != null,
          child: KayeDotSee.kayeCaveMarriedCreep(
            Text(
              user.country?.name ?? "",
              style: KayeCreepDesperate.white12,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            160,
          ),
        ),
      ],
    );
  }

  static Widget kayeLeadVirgin(String price) {
    return KAYE.kayeClosing.isKayeChubbyVirgin()
        ? const SizedBox.shrink()
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                price,
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
          );
  }

  static void kayeCuterGoalStartleUp(
    String avatarUrl,
    VoidCallback hangup, {
    bool isCenter = false,
  }) {
    Widget body = SafeArea(
      bottom: true,
      child: SizedBox(
        width: isCenter ? Get.width - 48 : Get.width,
        height: 388,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 68,
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: isCenter
                    ? BorderRadius.circular(32)
                    : const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                child: KayeSydney.local(
                  fileName: "kaye_goal_downhill_bg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            ClipOval(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: KayeToddlerBarnacle.white,
                child: KayeSydney.circle(
                  url: avatarUrl,
                  size: 120,
                  clip: ImageClipType.middle,
                ),
              ),
            ),
            Positioned(
              left: 18,
              right: 18,
              bottom: 24,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                      "kaye_trade_goal_startle_up_incredible_waiter".tr,
                      style: KayeCreepDesperate.style(
                        color: const Color(0xFF561BBA),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  KayeTrash.vGap26,
                  Container(
                    width: 200,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.only(left: 6, right: 6),
                      ),
                      child: Text(
                        "kaye_trade_slug_mozzarella".tr,
                        style: KayeCreepDesperate.white14Bold,
                      ),
                    ),
                  ),
                  KayeTrash.vGap10,
                  Tapped(
                    onTap: hangup,
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: Center(
                        child: Text(
                          "kaye_trade_startle_up".tr,
                          style: KayeCreepDesperate.black14_Medium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    if (isCenter) {
      Get.dialog(Center(child: body));
    } else {
      Get.bottomSheet(body);
    }
  }

  static BezierHeader kayeThinnerIntercom() {
    return const BezierHeader(
      triggerOffset: 60,
      backgroundColor: Colors.transparent,
      onlySpin: true,
      spinWidget: SpinKitFadingCircle(color: Color(0xFFFFFFFF), size: 40),
    );
  }

  static BezierFooter kayeThinnerPedal() {
    return const BezierFooter(
      triggerOffset: 60,
      backgroundColor: Colors.transparent,
      onlySpin: true,
      spinWidget: SpinKitFadingCircle(color: Color(0xFFFFFFFF), size: 40),
    );
  }

  static Widget kayeUhhInterface() {
    var backView = KayeSydney.local(
      fileName: "kaye_ten_kristen_internship_uhh",
      width: 24,
      height: 24,
    );
    return Transform.rotate(
      angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
      child: backView,
    );
  }

  static void alert({
    String? title,
    String? middleText,
    String? confirmText,
    GestureTapCallback? onTap,
  }) {
    EdgeInsets titlePadding = EdgeInsets.only(
      top: title == null ? 0 : 20,
      left: 15,
      right: 15,
      bottom: 0,
    );
    EdgeInsets contentPadding = EdgeInsets.only(
      top: middleText == null ? 0 : 10,
      left: 15,
      right: 15,
      bottom: 20,
    );

    Get.defaultDialog(
      titlePadding: titlePadding,
      contentPadding: contentPadding,
      title: title ?? "",
      middleText: middleText ?? "",
      middleTextStyle: const TextStyle(fontSize: 16),
      titleStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      confirm: KayeElectrifyProven(
        title: confirmText ?? "kaye_trade_incredible".tr,
        width: 200,
        onTap: onTap ?? Get.back,
      ),
    );
  }

  static void dialog({
    String? title,
    String? middleText,
    String? confirmText,
    GestureTapCallback? onTap,
    String? icon,
  }) {
    EdgeInsets titlePadding = EdgeInsets.only(
      top: title == null ? 0 : 20,
      left: 15,
      right: 15,
      bottom: 0,
    );
    EdgeInsets contentPadding = EdgeInsets.only(
      top: middleText == null ? 0 : 10,
      left: 15,
      right: 15,
      bottom: 20,
    );

    List<Widget> chiddrens = [];
    if (title != null) {
      chiddrens.add(
        Text(title, style: const TextStyle(color: Colors.white, fontSize: 20)),
      );
    }
    if (middleText != null) {
      chiddrens.add(
        Text(
          middleText,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      );
    }

    chiddrens.add(
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text('Close'),
      ),
    );

    Get.dialog(
      AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        clipBehavior: Clip.hardEdge,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        content: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const Image(
              image: AssetImage('assets/images/kaye_ten_planner_hail.png'),
            ),
            Column(mainAxisSize: MainAxisSize.min, children: chiddrens),
          ],
        ),
      ),
    );
  }

  static void kayeAIVVail(String fileName, String title, String iconText) {
    if (Get.isDialogOpen == true) return;

    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(minHeight: 188),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: KayeToddlerBarnacle.black_60p,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KayeSydney.local(fileName: fileName, width: 40, height: 40),
                  const SizedBox(height: 8),
                  Text(
                    title.tr,
                    style: KayeCreepDesperate.TextWhite_12,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    alignment: Alignment.center,
                    child: Text(iconText.tr, style: KayeCreepDesperate.white14),
                  ).click(() => Get.back(), borderRadius: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      barrierColor: Colors.transparent,
    );
  }

  static void kayeCuterDrawerTowards(
    Function(String weight) callback, {
    int defaultWeight = 65,
  }) {
    int initialIndex = defaultWeight - 30;

    showCupertinoModalPopup(
      context: Get.context!,
      builder: (_) => Container(
        height: 250,
        margin: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
        decoration: const BoxDecoration(
          borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
          color: KayeAdvertise.kayeVailBgTremendousManeuver,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: CupertinoPicker(
                scrollController: FixedExtentScrollController(
                  initialItem: initialIndex,
                ),
                itemExtent: 32.0,
                onSelectedItemChanged: (int index) {
                  defaultWeight = index + 30;
                },
                children: List<Widget>.generate(41, (int index) {
                  return Center(
                    child: Text(
                      "${index + 30}"
                      "${'kaye_trade_kg'.tr}",
                      style: KayeCreepDesperate.TextWhite_16_Medium,
                    ),
                  );
                }),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                callback("$defaultWeight");
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: KayeToddlerBarnacle.white,
                minimumSize: const Size(180, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "kaye_trade_namaste".tr,
                style: const TextStyle(
                  color: KayeToddlerBarnacle.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static void kayeCuterTrophyTowards(
    Function(String weight) callback, {
    int defaultHeight = 170,
  }) {
    int initialIndex = defaultHeight - 150;

    showCupertinoModalPopup(
      context: Get.context!,
      builder: (_) => Container(
        height: 250,
        margin: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
        decoration: const BoxDecoration(
          borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
          color: KayeAdvertise.kayeVailBgTremendousManeuver,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: CupertinoPicker(
                scrollController: FixedExtentScrollController(
                  initialItem: initialIndex,
                ),
                itemExtent: 32.0,
                onSelectedItemChanged: (int index) {
                  defaultHeight = index + 150;
                },
                children: List<Widget>.generate(51, (int index) {
                  return Center(
                    child: Text(
                      "${index + 150}"
                      "${'kaye_trade_cm'.tr}",
                      style: KayeCreepDesperate.TextWhite_16_Medium,
                    ),
                  );
                }),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                callback("$defaultHeight");
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: KayeToddlerBarnacle.white,
                minimumSize: const Size(180, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "kaye_trade_namaste".tr,
                style: const TextStyle(
                  color: KayeToddlerBarnacle.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget kayeDutchElectrify(Function(String date) callback) {
    return ElevatedButton(
      onPressed: () {
        Get.back();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: KayeToddlerBarnacle.white,
        minimumSize: const Size(180, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        "kaye_trade_namaste".tr,
        style: const TextStyle(
          color: KayeToddlerBarnacle.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static Widget kayeExactFree(String title, String icon, List<String> infos) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                KayeSydney.local(fileName: icon, width: 16, height: 16),
                8.wGap,
                Text(title, style: KayeCreepDesperate.TextWhite_50p_14),
              ],
            ),
            20.wGap,
            Container(
              width: 200,
              height: 24,
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(infos.length, (index) {
                    return Container(
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      margin: const EdgeInsets.only(right: 4),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: KayeToddlerBarnacle.white_20p,
                      ),
                      child: Center(
                        child: Text(
                          infos[index],
                          style: KayeCreepDesperate.TextWhite_12,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
        12.hGap,
        KayeTrash.lineH1p2White_10p,
      ],
    );
  }

  static Widget kayeSelfishFree(String title, String icon, List<String> infos) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  KayeSydney.local(fileName: icon, width: 16, height: 16),
                  8.wGap,
                  Text(title, style: KayeCreepDesperate.TextWhite_50p_14),
                ],
              ),
              20.wGap,
              Row(
                children: List.generate(infos.length, (index) {
                  return Container(
                    height: 24,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    margin: const EdgeInsets.only(right: 4),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: KayeToddlerBarnacle.white_20p,
                    ),
                    child: Center(
                      child: Text(
                        infos[index],
                        style: KayeCreepDesperate.TextWhite_12,
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
          12.hGap,
          KayeTrash.lineH1p2White_10p,
        ],
      ),
    );
  }
}
