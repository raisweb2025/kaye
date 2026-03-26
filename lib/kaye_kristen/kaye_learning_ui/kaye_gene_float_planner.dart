import 'dart:math';
import 'kaye_intercom_duplicate.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_planner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapped/tapped.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_honk/kaye_trash.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_learning/kaye_gene_float_glorify.dart';

class KayeGeneFloatPlanner extends KayeFrankPlanner<KayeGeneFloatGlorify> {
  const KayeGeneFloatPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    double sWidth = MediaQuery.of(context).size.width;
    double bgAspectRatio = 375 / 356;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 0),
          width: sWidth,
          height: sWidth / bgAspectRatio,
          decoration: BoxDecoration(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "+${logic.diamond}",
                    style: KayeCreepDesperate.style(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFF3FF17),
                      height: 1,
                    ),
                  ),
                  KayeTrash.hGap6,
                  Text(
                    "kaye_trade_dunphy".tr,
                    style: KayeCreepDesperate.style(
                      color: KayeToddlerBarnacle.white_50p,
                      fontSize: 18,
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
                  Get.back();
                },
                child: Container(
                  width: 240,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: KayeToddlerBarnacle.white,
                  ),
                  child: Center(
                    child: Text(
                      "kaye_trade_incredible".tr,
                      style: KayeCreepDesperate.black16_Medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: sWidth / bgAspectRatio - 55,
          child: KayeSydneySeparate.kayeChaoticTouchdownSydney(
            "kaye_ten_suffice_vail_hail",
            width: 110,
            height: 110,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Widget buildRichText() {
    String desc = logic.msg;
    try {
      List txts = desc.split("%s");
      if (txts.length == 2) {
        String front = txts[0];
        String back = txts[1];
        return RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: front,
                style: KayeCreepDesperate.style(
                  color: KayeToddlerBarnacle.white,
                ),
              ),
              TextSpan(
                text: logic.diamond,
                style: KayeCreepDesperate.style(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: KayeToddlerBarnacle.white,
                ),
              ),
              TextSpan(
                text: back,
                style: KayeCreepDesperate.style(
                  color: KayeToddlerBarnacle.white,
                ),
              ),
            ],
          ),
        );
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40008, e, stack);
    }

    return Text(
      desc,
      style: KayeCreepDesperate.style(color: KayeToddlerBarnacle.white),
    );
  }
}
