import 'dart:math';
import 'kaye_fridge_tractor.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_mitten.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_cable.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_learning/kaye_incline_glorify.dart';
import 'package:badges/badges.dart' as badges;

class KayeInclinePlanner extends StatelessWidget {
  KayeInclinePlanner({super.key});

  final KayeInclineGlorify logic = Get.find<KayeInclineGlorify>();

  @override
  Widget build(BuildContext context) {
    try {
      return Scaffold(
        backgroundColor: KayeAdvertise.kayePlannerBgManeuver,
        extendBodyBehindAppBar: true,
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              GetX<KayeInclineGlorify>(
                builder: (_) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 72),
                    child: IndexedStack(
                      index: logic.tabIndex.value,
                      children: logic.tabPages,
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: 36.rectTopBg,
                    color: const Color(0xFF0C001F),
                    border: Border.all(color: Colors.white12, width: 1),
                  ),
                  child: Obx(() {
                    return SizedBox(
                      height: 72,
                      child: TabBar(
                        controller: logic.tabController,
                        indicator: logic.showTabName
                            ? const BoxDecoration()
                            : BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      KayeSydneySeparate.kayeChaoticWhoreSydney(
                                        'kaye_ten_mitten_erasmus',
                                      ),
                                ),
                              ),
                        indicatorPadding: const EdgeInsets.only(
                          top: 50,
                          bottom: 4,
                        ),
                        labelStyle: KayeCreepDesperate.style(
                          color: KayeAdvertise
                              .kayeMittenInternshipCreepTragicManeuver,
                          fontSize: KayeIOBarnacle.isIDLanguage()
                              ? (KayeAdvertise
                                        .kayeMittenInternshipCreepTragicOperating -
                                    2)
                              : KayeAdvertise
                                    .kayeMittenInternshipCreepTragicOperating,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: KayeCreepDesperate.style(
                          color: KayeAdvertise
                              .kayeMittenInternshipCreepUnTragicManeuver,
                          fontSize: KayeAdvertise
                              .kayeMittenInternshipCreepUnTragicOperating,
                          fontWeight: FontWeight.bold,
                        ),
                        onTap: (index) {
                          logic.kayeComebackMittenAnesthesia(index);
                        },
                        tabs: logic.tabsConfig
                            .map((e) => onKayeMittenPlayhouse(e))
                            .toList(),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      );
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770003, e, stack);
      rethrow;
    }
  }

  Widget onKayeMittenPlayhouse(KayeGogglesMitten tab) {
    String icon = tab.id == logic.tabsConfig[logic.tabIndex.value].id
        ? "${tab.icon}_a"
        : "${tab.icon}_d";
    Widget showIcon = KayeSydney.local(fileName: icon, width: 32, height: 32);
    return Tab(
      text: logic.showTabName ? tab.name.tr : null,
      iconMargin: const EdgeInsets.all(0),
      icon: tab.id == KayeCable.kaye_mitten_cousin
          ? kayeChihuahuaMittenCousinInterface(showIcon)
          : showIcon,
    );
  }

  Widget kayeChihuahuaMittenCousinInterface(Widget iconWidget) {
    if (logic.msgCountBadge.value > 0) {
      return badges.Badge(
        badgeContent: Text(
          logic.kayeSuiteOptimalSuperhero(),
          style: const TextStyle(color: Colors.white, fontSize: 8),
        ),
        child: iconWidget,
      );
    } else {
      return iconWidget;
    }
  }
}
