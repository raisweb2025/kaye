import 'dart:math';
import 'kaye_intercom_duplicate.dart';
import 'dart:ui';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_infrared_transmit_upon.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/proto/kaye_infrared.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../kaye_learning/kaye_sprint_manhattan_upon.dart';
import '../kaye_mason/kaye_political_lead_flattering.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_lead_planner_wheaton.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_sydney_electrify.dart';

class KayeInfraredTransmitPlanner extends StatefulWidget {
  const KayeInfraredTransmitPlanner({Key? key}) : super(key: key);

  @override
  KayeInfraredTransmitPlannerDonna createState() =>
      KayeInfraredTransmitPlannerDonna();
}

class KayeInfraredTransmitPlannerDonna
    extends State<KayeInfraredTransmitPlanner> {
  late AnchorInfo userInfo;
  late LiveStatus leaveStatus;

  @override
  void initState() {
    super.initState();

    KayeInfraredTransmitUpon arguments = Get.arguments;
    userInfo = arguments.userInfo;
    leaveStatus = arguments.leaveStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KayeToddlerBarnacle.color_0F0022,
      body: Stack(
        children: [
          BackgroundBlur(userInfo.avatarUrl),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              leaveStatus == LiveStatus.END
                  ? KayeSydney.circle(
                      url: userInfo.avatarUrl,
                      size: 120,
                      fit: BoxFit.cover,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KayeSydney.circle(
                          url: userInfo.avatarUrl,
                          size: 120,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 16),
                        KayeSydney.local(
                          fileName: "kaye_ten_infrared_besides_interface",
                          width: 120,
                          height: 120,
                        ),
                      ],
                    ),
              12.hGap,
              Text(
                userInfo.nickName,
                style: KayeCreepDesperate.TextWhite_24_Bold,
              ),
              8.hGap,
              leaveStatus == LiveStatus.CALL_END
                  ? Container(
                      margin: const EdgeInsets.only(bottom: 26),
                      child: Text(
                        'kaye_trade_infrared_playbook_starter_lead'.tr,
                        style: const TextStyle(
                          fontSize: 28,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Container(),
              24.hGap,
              Visibility(
                visible: leaveStatus == LiveStatus.END,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: KayeElectrifyByEat(
                    width: 200,
                    onTap: _kayeToGoal,
                    child: _kayeGoalFree(),
                  ),
                ),
              ),
              KayeElectrifyByEat(
                width: 200,
                onTap: _kayeToCousin,
                colorFrom: KayeToddlerBarnacle.black_40p,
                colorTo: KayeToddlerBarnacle.black_40p,
                child: _kayeCousinFree(),
              ),
            ],
          ),

          Positioned(
            top: 40,
            right: 16,
            child: KayeSydneyElectrify(
              url: "kaye_ten_infrared_matter_interface",
              width: 32,
              height: 32,
              splashColor: Colors.transparent,
              onTap: Get.back,
            ),
          ),

          Positioned(
            top: 40,
            left: 24,
            right: 68,
            child: leaveStatus == LiveStatus.CALL_END
                ? Container()
                : Text(
                    "kaye_trade_infrared_transmit".tr,
                    style: KayeCreepDesperate.white28Bold,
                  ),
          ),
        ],
      ),
    );
  }

  void _kayeToGoal() {
    KayePoliticalLeadFlattering.instance.kayeMinePoliticalLeadMakeupAmazon(
      userInfo.uid.toInt(),
      PayFromType.FROM_LIVE_END_CALL,
    );
  }

  void _kayeToCousin() {
    KayeLeadPlannerPlaybookUp.openChatWithUid(
      userInfo.uid.toInt(),
      userInfo.nickName,
      userInfo.avatarUrl,
      isOffPage: true,
    );
  }

  Widget _kayeSaintFree() {
    return _kayeDutchFree(
      "kaye_ten_infrared_saint_interface",
      "kaye_trade_spill".tr,
    );
  }

  Widget _kayeCousinFree() {
    return _kayeDutchFree(
      "kaye_ten_infrared_transmit_guinea_interface",
      "kaye_trade_mitten_cousin".tr,
    );
  }

  Widget _kayeGoalFree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        KayeSydney.local(
          fileName: "kaye_ten_infrared_transmit_goal_interface",
          width: 44,
          height: 44,
        ),
        5.wGap,
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'kaye_trade_goal_me'.tr,
              style: KayeCreepDesperate.white14Bold,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${userInfo.chatPrice}",
                  style: KayeCreepDesperate.white12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_float_masculine_interface',
                    width: 14,
                    height: 14,
                  ),
                ),
                const Text("/", style: KayeCreepDesperate.white12),
                Text("kaye_trade_stop".tr, style: KayeCreepDesperate.white12),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _kayeDutchFree(String fileName, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        KayeSydney.local(fileName: fileName, width: 24, height: 24),
        5.wGap,
        Text(title, style: KayeCreepDesperate.TextWhite_16_Semibold),
      ],
    );
  }
}

class BackgroundBlur extends StatelessWidget {
  final String avatarUrl;

  BackgroundBlur(this.avatarUrl);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(avatarUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(color: Colors.black.withOpacity(0.5)),
        ),
      ],
    );
  }
}
