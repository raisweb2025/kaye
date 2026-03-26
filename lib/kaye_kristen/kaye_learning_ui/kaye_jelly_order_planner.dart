import 'dart:math';
import 'kaye_h3_welder.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_jelly_order_passenger_below.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_learning/kaye_jelly_order_glorify.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeJellyOrderPlanner
    extends KayeFrankGraduatePlanner<KayeJellyOrderGlorify> {
  const KayeJellyOrderPlanner({Key? key}) : super(key: key);

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [_notifyWidget(context)];
  }

  Widget _notifyWidget(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: KayeToddlerBarnacle.color110022,
      navigationBar: CupertinoNavigationBar(
        border: null,
        backgroundColor: KayeToddlerBarnacle.color110022,
        padding: const EdgeInsetsDirectional.only(start: 0, end: 0),
        leading: CupertinoButton(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          onPressed: () => Get.back(),
          child: KayeDotSee.kayeUhhInterface(),
        ),
        middle: Text(
          "kaye_trade_jelly_order".tr,
          style: KayeCreepDesperate.style(
            color: KayeToddlerBarnacle.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      child: Container(
        color: KayeToddlerBarnacle.transparent,
        child: notifyCell(context),
      ),
    );
  }

  Widget notifyCell(BuildContext context) {
    return GetBuilder<KayeJellyOrderGlorify>(
      id: logic.kaye_jelly_order_passenger,
      builder: (logic) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return KayeJellyOrderPassengerBelow(item: logic.chatList[index]);
          },
          padding: EdgeInsets.only(
            bottom: 15.0 + MediaQuery.of(context).viewPadding.bottom,
          ),
          itemCount: logic.chatList.length,
        );
      },
    );
  }
}
