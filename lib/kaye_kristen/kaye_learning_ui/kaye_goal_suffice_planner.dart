import 'dart:math';
import 'kaye_delivery_interface.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_vail_desperate_wrestling.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_planner.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapped/tapped.dart';

import '../kaye_learning/kaye_goal_suffice_glorify.dart';

class KayeGoalSufficePlanner extends KayeFrankPlanner<KayeGoalSufficeGlorify> {
  const KayeGoalSufficePlanner({super.key});

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    double bgAspectRatio = 375 / 356;

    bool isCenter = logic.dialogStyleType == KayeVailDesperateWrestling.Center;
    return Stack(
      alignment: isCenter ? Alignment.center : Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(width: sWidth, height: sWidth / bgAspectRatio + 55),
            KayeSydney.local(
              fileName: "kaye_ten_suffice_vail_linger",
              width: 317,
              height: 30,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 12,
              bottom: 0,
              left: isCenter ? 24 : 0,
              right: isCenter ? 24 : 0,
              child: Container(
                width: sWidth,
                height: sWidth / bgAspectRatio,
                decoration: BoxDecoration(
                  borderRadius: isCenter
                      ? const BorderRadius.all(Radius.circular(32))
                      : const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: KayeSydneySeparate.kayeChaoticWhoreSydney(
                      "kaye_ten_suffice_vail_bg",
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    KayeTrash.vGap12,
                    KAYE.kayeClosing.isRegionMatchFirst20sChargeMode()
                        ? Text(
                            "kaye_trade_suffice_vail_found_duplicate_waiter".tr,
                            style: KayeCreepDesperate.style(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: KayeToddlerBarnacle.black,
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              KayeSydney.local(
                                fileName: "kaye_ten_float_outrun_interface",
                                width: 64,
                                height: 64,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "+${logic.coupon.diamondAmount}",
                                style: KayeCreepDesperate.style(
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFFF6349),
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                    Padding(
                      padding: const EdgeInsets.only(left: 34, right: 34),
                      child: buildRichText(),
                    ),
                    Tapped(
                      onTap: () {
                        KayeKristenGlitterFlattering.kayeCuterSufficeVail(2);
                        Get.back();
                      },
                      child: Container(
                        width: 240,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                        ),
                        child: Center(
                          child: Text(
                            "kaye_trade_suffice_dread".tr,
                            style: KayeCreepDesperate.white16Bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Get.mediaQuery.padding.bottom + 10),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 277,
              height: 66,
              child: Stack(
                alignment: AlignmentGeometry.center,
                children: [
                  KayeSydney.local(
                    fileName: "kaye_ten_suffice_vail_chicago",
                    width: 277,
                    height: 66,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: 277,
                    alignment: Alignment.center,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "kaye_trade_suffice_vail_found_duplicate_waiter".tr,
                        style: KayeCreepDesperate.style(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildRichText() {
    if (KAYE.kayeClosing.isRegionMatchFirst20sChargeMode()) {
      return Text(
        "kaye_trade_suffice_vail_found_duplicate_plummet".tr,
        style: KayeCreepDesperate.style(
          fontSize: 16,
          color: KayeToddlerBarnacle.white,
        ),
      );
    }
    String desc = "kaye_trade_suffice_plummet".tr;
    try {
      String front = desc.split("%s")[0];
      String back = desc.split("%s")[1];
      return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: front,
              style: KayeCreepDesperate.style(color: KayeToddlerBarnacle.black),
            ),
            TextSpan(
              text: "${logic.coupon.diamondAmount}",
              style: KayeCreepDesperate.style(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFF6349),
              ),
            ),
            TextSpan(
              text: back,
              style: KayeCreepDesperate.style(color: KayeToddlerBarnacle.black),
            ),
          ],
        ),
      );
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40009, e, stack);
      return Text(
        desc,
        style: KayeCreepDesperate.style(color: KayeToddlerBarnacle.white),
      );
    }
  }
}
