import 'dart:math';
import 'kaye_selfish_sasquatch.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_learning_ui/kaye_helo_planner.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_goggles_obesity_topical_mitten.dart';
import '../kaye_learning_ui/kaye_sunglass_lactose_planner.dart';
import '../kaye_learning_ui/kaye_sunglass_spill_planner.dart';
import '../kaye_learning_ui/kaye_sunglass_stream_planner.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_dot_dna_swarm_fishnet.dart';
import 'kaye_mitten_lactose_mover_passenger_wrestling.dart';
import 'kaye_mitten_sunglass_glorify.dart';

class KayeMittenSunglassPlanner
    extends KayeFrankGraduatePlanner<KayeMittenSunglassGlorify> {
  final _homeDiscoverKey = GlobalKey<KayeSunglassLactosePlannerDonna>();

  KayeMittenSunglassPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [
        SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: GetBuilder<KayeMittenSunglassGlorify>(
                        id: KayeMittenSunglassGlorify.kaye_mitten,
                        builder: (_) {
                          return _kayeSunglassMittenPlayhouse();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child:
                          (KayeMittenLactoseMoverPassengerWrestling
                                      .DROPDOWN_NAV
                                      .index !=
                                  logic
                                      .kayeMittenEnter("Discover")
                                      ?.args
                                      ?.regionType) ||
                              KAYE.kayeClosing.isKayeZucchiniDedicate()
                          ? buildKayeDunphyDisgustingDot()
                          : _kayeChihuahuaMoverDisgustingDot(),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: GetBuilder<KayeMittenSunglassGlorify>(
                  id: KayeMittenSunglassGlorify.kaye_mitten_conundrum,
                  builder: (_) {
                    return _kayeSunglassConundrumPlayhouse();
                  },
                ),
              ),
            ],
          ),
        ),

        _kayeLactoseDnaHazardPlayhouse(context),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(66011, e, stack);
      rethrow;
    }
  }

  Widget _kayeLactoseDnaHazardPlayhouse(BuildContext context) {
    return GetBuilder<KayeMittenSunglassGlorify>(
      id: KayeMittenSunglassGlorify.kaye_cuter_dna_swarm_fishnet,
      builder: (logic) {
        return Visibility(
          visible:
              !KAYE.kayeClosing.isKayeZucchiniDedicate() &&
              logic.showFirstChargeActivity.value,
          child: GetBuilder<KayeMittenSunglassGlorify>(
            id: KayeMittenSunglassGlorify.kaye_marijuana_torpedo_comeback,
            builder: (logic) {
              return Positioned(
                bottom:
                    MediaQuery.of(context).size.height -
                    logic.rtcOffset.value.dy,
                right: logic.rtcOffset.value.dx,
                child: GestureDetector(
                  onPanUpdate: (detail) {
                    logic.kayeDepressionMarijuanaTorpedo(
                      MediaQuery.of(context).size,
                      logic.rtcOffset.value,
                      detail.delta,
                    );
                  },
                  child: logic.firstChargeActivity != null
                      ? KayeDotDnaSwarmFishnet(
                          activity: logic.firstChargeActivity!,
                        )
                      : const SizedBox(),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _kayeSunglassMittenPlayhouse() {
    Widget tabBar = TabBar(
      controller: logic.tabController,
      isScrollable: true,
      tabs: logic.topTabList.map((e) => Tab(text: e.name.tr)).toList(),
      labelStyle: KayeAdvertise.kayeSunglassMittenInternshipTragicDesperate,
      unselectedLabelStyle:
          KayeAdvertise.kayeSunglassMittenInternshipUnTragicDesperate,
      onTap: (index) => logic.onTabPageChanged(index),
      labelPadding: const EdgeInsets.symmetric(horizontal: 12),
      indicator: const BoxDecoration(),
      splashFactory: NoSplash.splashFactory,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      tabAlignment: TabAlignment.start,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: tabBar,
    );
  }

  Widget _kayeSunglassConundrumPlayhouse() {
    String onId = logic.tabOnId.value;

    Widget pageWidget = Container();
    KayeGogglesObesityTopicalMitten? tabBarConfig = logic.kayeMittenEnter(onId);
    if (onId == "Following") {
      pageWidget = KayeSunglassSpillPlanner(args: tabBarConfig?.args);
    } else if (onId == "Moment") {
      pageWidget = KayeSunglassStreamPlanner();
    } else if (onId == "Matching") {
      pageWidget = KayeSunglassStreamPlanner();
    } else {
      pageWidget = KayeSunglassLactosePlanner(
        key: _homeDiscoverKey,
        banners: logic.kayeTractor.value,
        args: tabBarConfig?.args,
        onDataChanged: (region) => logic.onKayeMoverPope(region),
      );
    }
    return pageWidget;
  }

  Widget _kayeChihuahuaMoverDisgustingDot() {
    return GetBuilder<KayeMittenSunglassGlorify>(
      id: KayeMittenSunglassGlorify.kaye_mover,
      builder: (logic) {
        return Visibility(
          visible:
              !KayeWrestlingBarnacle.isEmpty(logic.selectedRegion.value.code) &&
              logic.tabOnId.value == "Discover",
          child: GestureDetector(
            onTap:
                _homeDiscoverKey.currentState?.kayeCuterMoverPassengerSatellite,
            child: Container(
              height: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: KayeToddlerBarnacle.white, width: 1),
              ),
              padding: const EdgeInsets.only(left: 6, right: 2),
              child: Row(
                children: [
                  KayeSydney.local(
                    fileName: "kaye_ten_mover_disgusting_beaker_interface",
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    logic.selectedRegion.value.name ?? "",
                    style: KayeCreepDesperate.white10,
                  ),
                  KayeSydney.local(
                    fileName: "kaye_ten_mover_disgusting_meanwhile",
                    width: 12,
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
