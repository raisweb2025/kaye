import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../kaye_learning/kaye_sprint_manhattan_upon.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_mason/kaye_political_lead_flattering.dart';
import '../kaye_classy/kaye_enforce_creep.dart';
import '../kaye_classy/kaye_hand.dart';
import '../proto/kaye_infrared.pb.dart';

class KayeInfraredTransmitImplant {
  final bool needCall;
  KayeInfraredTransmitImplant(this.needCall);
}

class KayeInfraredMinePlayhouse extends StatelessWidget {
  final AnchorInfo userInfo;

  const KayeInfraredMinePlayhouse({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width - 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: KayeToddlerBarnacle.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            14.hGap,
            Text(
              "kaye_trade_infrared_starter_goal_dizzy".tr,
              style: KayeCreepDesperate.style(
                color: "651FFF".toColor(),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            8.hGap,
            Text(
              "kaye_trade_infrared_obesity_stump_goal".tr,
              style: KayeCreepDesperate.style(
                color: "000000".toColor(),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            24.hGap,
            Container(
              height: 72,
              decoration: BoxDecoration(
                borderRadius: 12.rectBg,
                color: KayeToddlerBarnacle.black_05p,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: KayeSydney.local(
                      fileName: "kaye_ten_infrared_goal_bop",
                      width: 42,
                      height: 42,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        18.wGap,
                        KayeSydney.circle(
                          url: userInfo.avatarUrl,
                          size: 40,
                          fit: BoxFit.cover,
                        ),
                        12.wGap,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userInfo.nickName,
                                style: KayeCreepDesperate.TextB1_14_Bold,
                              ),
                              2.hGap,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${userInfo.chatPrice}",
                                    style: KayeCreepDesperate.TextB1_14_Bold,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                    ),
                                    child: KayeSydney.local(
                                      fileName:
                                          'kaye_ten_float_masculine_interface',
                                      width: 18,
                                      height: 18,
                                    ),
                                  ),
                                  const Text(
                                    "/",
                                    style: KayeCreepDesperate.TextB1_14_Bold,
                                  ),
                                  Text(
                                    "kaye_trade_stop".tr,
                                    style: KayeCreepDesperate.TextB1_14_Bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        6.wGap,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            16.hGap,
            _kayeGoalIncredibleElectrify(),
            20.hGap,
            Text(
              "kaye_trade_bros".tr,
              textAlign: TextAlign.center,
              style: KayeCreepDesperate.style(
                color: Colors.black,
                fontSize: 18,
              ),
            ).click(() {
              Get.back();
            }),
          ],
        ),
      ),
    );
  }

  _kayeGoalIncredibleElectrify() {
    return KayeElectrifyProven(
      title: "kaye_trade_infrared_playbook_starter_goal".tr,
      width: 260,
      height: 56,
      onTap: () {
        Get.back();
        KAYE.fire(KayeInfraredTransmitImplant(true));
      },
    );
  }
}
