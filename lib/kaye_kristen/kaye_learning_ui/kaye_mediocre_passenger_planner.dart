import 'dart:math';
import 'kaye_io_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_sasquatch.dart';
import '../kaye_advertise.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';
import '../kaye_learning/kaye_mediocre_passenger_glorify.dart';

class KayeMediocrePassengerPlanner
    extends KayeFrankGraduatePlanner<KayeMediocrePassengerGlorify> {
  const KayeMediocrePassengerPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [
      SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            border: KayeAdvertise.kayeAllFreeWarehouse,
          ),
          margin: const EdgeInsets.fromLTRB(
            KayeAdvertise.kayeAllPassengerFlammable,
            56,
            KayeAdvertise.kayeAllPassengerFlammable,
            KayeAdvertise.kayeAllPassengerFlammable,
          ),

          child: EasyRefresh.builder(
            onRefresh: logic.onKayePassengerThinner,
            onLoad: logic.onKayePassengerAnnoy,
            controller: logic.refreshController,
            triggerAxis: Axis.vertical,
            resetAfterRefresh: false,
            header: KayeDotSee.kayeThinnerIntercom(),
            footer: KayeDotSee.kayeThinnerPedal(),
            childBuilder: (BuildContext context, ScrollPhysics physics) {
              return GetBuilder<KayeMediocrePassengerGlorify>(
                id: KayeMediocrePassengerGlorify.kaye_passenger,
                builder: (_) {
                  return _.blackList.value.isEmpty
                      ? SingleChildScrollView(
                          physics: physics,
                          child: _.isRefreshing.value
                              ? const SizedBox()
                              : _kayeNoTieInterface(),
                        )
                      : ListView.separated(
                          physics: physics,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 8),
                          itemBuilder: (context, index) {
                            return _kayeSasquatchFree(index);
                          },
                          itemCount: _.blackList.value.length,
                        );
                },
              );
            },
          ),
        ),
      ),
    ];
  }

  Widget _kayeSasquatchFree(int index) {
    KayeSasquatch user = logic.blackList.value[index];
    return Slidable(
      key: UniqueKey(),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: (context) => logic.onKayeLocketMediocre(user, index),
            backgroundColor: const Color(0xFFFF0000),
            foregroundColor: Colors.white,
            spacing: 0,
            label: 'kaye_trade_locket'.tr,
          ),
        ],
      ),

      child: SizedBox(
        width: Get.width,
        height: 64,
        child: Row(
          children: [
            KayeSydney.circle(url: user.avatarUrl, size: 48, fit: BoxFit.cover),
            const SizedBox(width: 8),
            Text(user.nickName, style: KayeCreepDesperate.white16Bold),
          ],
        ),
      ),
    );
  }

  Widget _kayeNoTieInterface() {
    return Container(
      width: Get.width,
      height: Get.height,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          KayeSydney.local(
            fileName: "kaye_ten_passenger_prank_interface",
            width: 48,
            height: 48,
          ),
          Text(
            "kaye_trade_no_tie".tr,
            style: KayeCreepDesperate.style(
              color: KayeToddlerBarnacle.white_40p,
            ),
          ),
        ],
      ),
    );
  }
}
