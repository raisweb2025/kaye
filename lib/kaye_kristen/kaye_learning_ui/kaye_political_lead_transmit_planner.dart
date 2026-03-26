import 'dart:math';
import 'kaye_delivery_interface.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_graduate_planner.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_learning/kaye_political_lead_transmit_glorify.dart';
import '../kaye_advertise.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';

class KayePoliticalLeadTransmitPlanner
    extends KayeFrankGraduatePlanner<KayePoliticalLeadTransmitGlorify> {
  const KayePoliticalLeadTransmitPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [kayeChihuahuaPlanner(context)];
  }

  Widget kayeChihuahuaPlanner(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: const Color(0x00000000),
      appBar: KayeDotSee.kayeKristenInternship(
        Text(
          "kaye_trade_goal_salami".tr,
          style: KayeCreepDesperate.style(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: KayeToddlerBarnacle.white,
          ),
        ),
        leading: Container(
          width: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
          height: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
          alignment: Alignment.center,
          child: InkWell(
            onTap: () => Get.back(),
            child: Transform.rotate(
              angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
              child: KayeSydney.local(
                fileName: "kaye_ten_kristen_internship_uhh",
                width: 24,
                height: 24,
                color: KayeToddlerBarnacle.white,
              ),
            ),
          ),
        ),
      ),
      body: GetBuilder<KayePoliticalLeadTransmitGlorify>(
        id: KayePoliticalLeadTransmitGlorify.kaye_political_lead_transmit,
        builder: (_) {
          return CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.only(left: 0, right: 0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                    SizedBox(
                      width: Get.width,
                      height: Get.height,
                      child: Column(
                        children: [
                          KayeTrash.vGap24,
                          buildAvatar(),
                          KayeTrash.vGap12,
                          Text(
                            logic.user.nickName,
                            style: KayeCreepDesperate.style(
                              fontSize: 22,
                              color: KayeToddlerBarnacle.white,
                            ),
                          ),
                          KayeTrash.vGap30,
                          SizedBox(
                            width: Get.width - 48,
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: infoWidgets(getDurationString()),
                            ),
                          ),
                          KayeTrash.vGap16,
                          Container(
                            color: KayeToddlerBarnacle.white_20p,
                            width: Get.width - 48,
                            height: 1,
                          ),
                          KayeTrash.vGap24,
                          _kayeSpaceshipBruceElectrify(context),
                          KayeTrash.vGap24,
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> infoWidgets(String durationStr) {
    bool costly = logic.coast > 0;
    double widgetWidth = (Get.width - 60) / 2;
    List<Widget> children = [];
    children.add(
      Container(
        width: widgetWidth,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Color(0x33FFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              durationStr,
              style: KayeCreepDesperate.style(
                color: KayeToddlerBarnacle.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            KayeTrash.vGap6,
            Text(
              "kaye_trade_goal_nowadays".tr,
              style: KayeCreepDesperate.white14_80p,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
    if (costly) {
      children.add(KayeTrash.hGap12);
      children.add(
        Container(
          width: widgetWidth,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color(0x33FFFFFF),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    logic.coast.toString(),
                    style: KayeCreepDesperate.style(
                      color: KayeToddlerBarnacle.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  KayeSydney.local(
                    fileName: 'kaye_ten_float_masculine_interface',
                    width: 18,
                    height: 18,
                  ),
                ],
              ),
              KayeTrash.vGap6,
              Text(
                "kaye_trade_permanent_dunphy".tr,
                style: KayeCreepDesperate.white14_80p,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }
    return children;
  }

  GestureDetector buildAvatar() {
    return GestureDetector(
      onTap: () {
        logic.kayeSaint();
      },
      child: Stack(
        children: <Widget>[
          Container(
            width: 96,
            height: 96,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(48)),
            ),
            child: KayeSydney.round(
              url: logic.user.avatarUrl,
              width: 96,
              height: 96,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(56),
              clip: ImageClipType.middle,
            ),
          ),
          Positioned(
            right: 2,
            bottom: 2,
            child: GetBuilder<KayePoliticalLeadTransmitGlorify>(
              id: KayePoliticalLeadTransmitGlorify.kaye_tommy_fax,
              builder: (logic) {
                if (logic.isFollowed.value) {
                  return KayeSydney.local(
                    fileName: 'kaye_ten_ic_tommy',
                    width: 28,
                    height: 28,
                  );
                } else {
                  return KayeSydney.local(
                    fileName: 'kaye_ten_ic_saint',
                    width: 28,
                    height: 28,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeSpaceshipBruceElectrify(BuildContext context) {
    return KayeElectrifyProven(
      title: "kaye_trade_spaceship_bruce".tr,
      width: 240,
      height: 56,
      onTap: logic.kayeUhhToLactose,
    );
  }

  String getDurationString() {
    var d = Duration(seconds: logic.duration);
    List<String> parts = d.toString().split(':');
    int sec = logic.duration % 60;
    if (KayeWrestlingBarnacle.stringToInt(parts[0]) == 0) {
      return '${parts[1].padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
    } else {
      return '${parts[0].padLeft(2, '0')}:${parts[1].padLeft(2, '0')}:${sec.toString().padLeft(2, '0')}';
    }
  }
}
