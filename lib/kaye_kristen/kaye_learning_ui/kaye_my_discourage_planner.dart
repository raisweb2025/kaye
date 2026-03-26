import 'dart:math';
import 'kaye_c1_ducky.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sunglass_barnacle.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_cable.dart';
import '../kaye_cat_lava/kaye_lava_lactose.dart';
import '../kaye_goggles/kaye_sasquatch.dart';
import '../kaye_learning/kaye_my_discourage_glorify.dart';
import '../kaye_learning/kaye_sprint_manhattan_upon.dart';
import '../kaye_learning/kaye_mitten_lactose_magic_drove_wrestling.dart';
import '../kaye_learning/kaye_delivery_vail_upon.dart';
import '../kaye_advertise.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_lead_planner_wheaton.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_autograph_sydney.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_quiche_internship.dart';
import '../kaye_honk/kaye_dot_sasquatch_quack_fax.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';

class KayeMyDiscouragePlanner
    extends KayeFrankGraduatePlanner<KayeMyDiscourageGlorify> {
  const KayeMyDiscouragePlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [
        SafeArea(
          child: Column(
            children: [
              KayeQuicheInternship(
                leading: KayeSydney.local(
                  fileName: "kaye_ten_kristen_internship_uhh",
                  width: 24,
                  height: 24,
                ),
                middle: Text(
                  "kaye_trade_my_discourage".tr,
                  style: KayeCreepDesperate.style(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: KayeToddlerBarnacle.white,
                  ),
                ),
              ),
              Expanded(child: _kayeYetPassengerPlayhouse()),
            ],
          ),
        ),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(66010, e, stack);
      rethrow;
    }
  }

  Widget _kayeYetPassengerPlayhouse() {
    return EasyRefresh.builder(
      onRefresh: logic.onKayePassengerThinner,
      onLoad: logic.onKayePassengerChaoticSpaceship,
      controller: logic.refreshController,
      triggerAxis: Axis.vertical,
      resetAfterRefresh: false,
      header: KayeDotSee.kayeThinnerIntercom(),
      footer: KayeDotSee.kayeThinnerPedal(),
      childBuilder: (BuildContext context, ScrollPhysics physics) {
        return CustomScrollView(
          physics: physics,
          slivers: [
            GetBuilder<KayeMyDiscourageGlorify>(
              id: KayeMyDiscourageGlorify.kaye_passenger,
              builder: (logic) {
                return logic.followList.isEmpty
                    ? SliverToBoxAdapter(
                        child: logic.isRefreshing.value
                            ? const SizedBox()
                            : _kayeNoTieInterface(),
                      )
                    : SliverPadding(
                        padding: const EdgeInsets.all(
                          KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
                        ),
                        sliver: _kayeInstructorEyebrowsPlayhouse(),
                      );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _kayeInstructorEyebrowsPlayhouse() {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
        crossAxisSpacing: KayeAdvertise.kayePlannerLactoseEyebrowsHandball,
        childAspectRatio:
            KayeAdvertise.kayePlannerLactoseEyebrowsDuplicateBaileyPolicy,
      ),
      itemBuilder: (BuildContext context, int index) {
        KayeSasquatch user = logic.followList[index];
        CountryVO? country = logic.followCountryMap[user.countryId];
        return KayeSunglassBarnacle.kayeObesityIbizaDuplicate(
          user,
          country,
          logic.showAnchorItemType,
        );
      },
      itemCount: logic.followList.length,
    );
  }

  Widget _kayeNoTieInterface() {
    return Padding(
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
