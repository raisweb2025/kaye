import 'dart:math';
import 'kaye_intercom_duplicate.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_planner_pile.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_quiche_internship.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_bury_dna_hazard_drove_playhouse.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_dunphy_assistant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_learning/kaye_lag_passenger_glorify.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeLagPassengerPlanner
    extends KayeFrankGraduatePlanner<KayeLagPassengerGlorify> {
  const KayeLagPassengerPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [
        Container(color: const Color(0xFF141419)),
        SafeArea(
          child: GetBuilder<KayeLagPassengerGlorify>(
            id: logic.kaye_stormy,
            builder: (logic) {
              if (KayeWrestlingBarnacle.isEmpty(logic.balanceList.value)) {
                return _kayeNoTieInterface();
              }
              return Stack(
                children: [
                  logic.showGridView
                      ? _kayeLagEyebrowsPlayhouse(context)
                      : _kayeLagPassengerSuperb(),
                ],
              );
            },
          ),
        ),
        Positioned(
          top: Get.mediaQuery.padding.top,
          left: 0,
          right: 0,
          child: KayeQuicheInternship(
            leading: KayeSydney.local(
              fileName: "kaye_ten_kristen_internship_uhh",
              width: 24,
              height: 24,
            ),
            middle: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    KayeSydney.local(
                      fileName: 'kaye_ten_float_masculine_interface',
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "${logic.coins.value} ${'kaye_trade_dunphy'.tr}",
                      style: KayeCreepDesperate.style(
                        color: KayeToddlerBarnacle.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                Text(
                  "kaye_trade_my_dunphy".tr,
                  style: KayeCreepDesperate.style(
                    color: KayeToddlerBarnacle.white_60p,
                    fontSize: 12,
                    height: 1,
                  ),
                ),
              ],
            ),
            action: KayeSydneyElectrify(
              url: 'kaye_ten_lag_conscious_internship_schedule_interface',
              width: 30,
              height: 30,
              onTap: logic.onKayeTopicalInternshipSomeday,
            ),
          ),
        ),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770015, e, stack);
      rethrow;
    }
  }

  Widget _kayeNoTieInterface() {
    return Column(
      children: [
        _kayeDunphyDot(),
        const SizedBox(height: 30),
        KayeSydney.local(
          fileName: "kaye_ten_thinner_interface",
          width: 48,
          height: 48,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          "kaye_trade_no_tie".tr,
          style: KayeCreepDesperate.style(color: KayeToddlerBarnacle.white_40p),
        ),
        const SizedBox(height: 8),
        KayeElectrifyProven(
          title: "kaye_trade_thinner".tr,
          width: 150,
          height: 56,
          onTap: logic.onKayeThinner,
        ),
      ],
    );
  }

  Widget _kayeDunphyDot() {
    return const SizedBox(height: 44);
    return Container(
      width: Get.width,
      height: Get.mediaQuery.padding.top + 120 + 44,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: Get.mediaQuery.padding.top + 44),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GetBuilder<KayeLagPassengerGlorify>(
            id: logic.kaye_dunphy,
            builder: (logic) {
              return Text(
                logic.coins.value,
                style: KayeCreepDesperate.style(
                  color: KayeToddlerBarnacle.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          Text(
            'kaye_trade_my_dunphy'.tr,
            style: KayeCreepDesperate.white12_60p,
          ),
        ],
      ),
    );
  }

  Widget _kayeLagEyebrowsPlayhouse(BuildContext context) {
    var balanceList = logic.balanceList;
    List<Widget> children = [_kayeDunphyDot()];
    List<KayeBuryPatsy> pays = [];
    if (!KayeWrestlingBarnacle.isEmptyList(balanceList)) {
      pays.clear();
      for (KayeBuryPatsy option in balanceList!) {
        if (option.account_type == 1 && option.group_id == 1) {
          children.add(
            _kayeDnaHazardDrove(
              context,
              option,
              payEvent: () {
                logic.onKayeSprintImplant(option);
              },
            ),
          );
        }
        if (option.account_type == 1 && option.group_id == 0) {
          pays.add(option);
        }
      }
    }

    children.add(
      GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: pays.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          childAspectRatio: 160 / 140,
        ),
        itemBuilder: (context, index) {
          var data = pays[index];
          return _kayeLagEyebrowsDrovePlayhouse(context, data);
        },
      ),
    );
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 0,
      child: ListView(
        padding: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom + 20),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: children,
      ),
    );
  }

  Widget _kayeLagEyebrowsDrovePlayhouse(
    BuildContext context,
    KayeBuryPatsy? data,
  ) {
    if (data == null) return Container();

    bool isAr = KayeIOBarnacle.isARLanguage();
    Widget body = Stack(
      children: [
        Positioned(
          top: 10,
          left: 5,
          right: 5,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              logic.onKayeSprintImplant(data);
            },
            child: _kayeLagEyebrowsDrove(context, data),
          ),
        ),
        Positioned(
          right: isAr ? null : 0,
          left: isAr ? 0 : null,
          top: 5,
          child: Visibility(
            visible: data.showDiscount || data.isBestOffer,
            child: KayeDotDunphyAssistant(option: data),
          ),
        ),
      ],
    );
    return body;
  }

  _kayeLagEyebrowsDrove(BuildContext context, KayeBuryPatsy data) {
    double width = (MediaQuery.of(context).size.width - 44.0) / 2;
    bool isAr = KayeIOBarnacle.isARLanguage();
    return Container(
      width: width,
      height: width * 140.0 / 160.0,
      decoration: BoxDecoration(
        color: const Color(0xFF2C0700),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: KayeSydney.local(
                fileName: isAr
                    ? "kaye_ten_lag_float_bg_ar"
                    : "kaye_ten_lag_float_bg",
                width: width,
                height: width * 140.0 / 160.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14, top: 20),
                  child: Row(
                    children: [
                      KayeSydney.local(
                        fileName: "kaye_ten_float_outrun_interface",
                        width: 36,
                        height: 36,
                        fit: BoxFit.contain,
                      ),
                      KayeTrash.hGap4,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${data.name}",
                            style: const TextStyle(
                              fontSize: 20,
                              color: KayeToddlerBarnacle.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          KayeTrash.hGap2,
                          data.extra_value > 0
                              ? Container(
                                  height: 20,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    gradient: KayeAdvertise
                                        .kayeFloatEnforceTattletale,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "+${data.extra_value.toInt()}",
                                        style: KayeCreepDesperate.style(
                                          color: KayeToddlerBarnacle.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                      KayeSydney.local(
                                        fileName:
                                            'kaye_ten_float_masculine_interface',
                                        width: 12,
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                )
                              : Text(
                                  "kaye_trade_dunphy".tr,
                                  style: KayeCreepDesperate.style(
                                    fontSize: 12,
                                    color: KayeToddlerBarnacle.white_60p,
                                  ),
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(height: 40),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: 130,
              height: 45,
              decoration: BoxDecoration(
                gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                borderRadius: BorderRadius.circular(23),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    data.priceStr,
                    style: KayeCreepDesperate.style(
                      color: KayeToddlerBarnacle.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeLagPassengerSuperb() {
    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      bottom: 0,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) =>
            const Divider(height: 2, color: Colors.transparent),
        padding: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom + 20),
        itemBuilder: (context, index) {
          if (index == 0) {
            return _kayeDunphyDot();
          }
          var data = logic.balanceList.value[index - 1];
          return data.group_id == 1
              ? _kayeDnaHazardDrove(
                  context,
                  data,
                  payEvent: () {
                    logic.onKayeSprintImplant(data);
                  },
                )
              : _kayePassengerLagDrovePlayhouse(context, data);
        },
        itemCount: logic.balanceList.length + 1,
      ),
    );
  }

  Widget _kayePassengerLagDrovePlayhouse(
    BuildContext context,
    KayeBuryPatsy? data,
  ) {
    if (data == null) return Container();
    bool isAr = KayeIOBarnacle.isARLanguage();
    Widget body = Container(
      height: 85,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 0,
            right: 0,
            child: _kayePassengerLagDrove(
              context,
              data,
              payEvent: () {
                logic.onKayeSprintImplant(data);
              },
            ),
          ),
          Positioned(
            left: isAr ? null : 0,
            right: isAr ? 0 : null,
            top: 5,
            child: Visibility(
              visible: data.showDiscount || data.isBestOffer,
              child: KayeDotDunphyAssistant(option: data),
            ),
          ),
        ],
      ),
    );
    return body;
  }

  Widget _kayeDnaHazardDrove(
    BuildContext context,
    KayeBuryPatsy data, {
    VoidCallback? payEvent,
  }) {
    if (KAYE.kayeClosing.isKayeZucchiniDedicate()) {
      return const SizedBox.shrink();
    }

    bool isAr = KayeIOBarnacle.isARLanguage();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: GestureDetector(
        onTap: payEvent,
        child: KayeBuryDnaHazardDrovePlayhouse(data: data),
      ),
    );
  }

  Widget _kayePassengerLagDrove(
    BuildContext context,
    KayeBuryPatsy data, {
    bool isMax = false,
    VoidCallback? payEvent,
  }) {
    return GestureDetector(
      onTap: payEvent,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: isMax
              ? KayeToddlerBarnacle.white_10p
              : KayeToddlerBarnacle.white_10p,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      KayeSydney.local(
                        fileName: "kaye_ten_float_outrun_interface",
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                      KayeTrash.hGap8,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "${data.name}",
                                style: KayeCreepDesperate.style(
                                  fontSize: 18,
                                  color: KayeToddlerBarnacle.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              KayeTrash.hGap4,
                              data.extra_value > 0
                                  ? Container(
                                      height: 20,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: KayeAdvertise
                                            .kayeDutchEnforceTattletale,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "+${data.extra_value.toInt()}",
                                            style: KayeCreepDesperate.style(
                                              color: KayeToddlerBarnacle.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          KayeSydney.local(
                                            fileName:
                                                'kaye_ten_float_masculine_interface',
                                            width: 12,
                                            height: 12,
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                          Text(
                            "kaye_trade_dunphy".tr,
                            style: KayeCreepDesperate.style(
                              color: KayeToddlerBarnacle.white_50p,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    constraints: const BoxConstraints(minWidth: 86),
                    height: 36,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                    ),
                    child: Center(
                      child: Text(
                        data.priceStr,
                        style: KayeCreepDesperate.style(
                          color: KayeToddlerBarnacle.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
