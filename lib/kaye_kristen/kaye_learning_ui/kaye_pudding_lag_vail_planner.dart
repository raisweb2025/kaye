import 'dart:math';
import 'kaye_infrared_order.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_learning/kaye_pudding_lag_vail_glorify.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney_electrify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_honk/kaye_dot_dunphy_assistant.dart';

class KayePuddingLagVailPlanner extends StatelessWidget {
  KayePuddingLagVailPlanner({super.key});

  final logic = Get.find<KayePuddingLagVailGlorify>();

  bool isAr = false;

  @override
  Widget build(BuildContext context) {
    isAr = KayeIOBarnacle.isARLanguage();
    return Stack(
      children: [
        Container(color: KayeToddlerBarnacle.black_60p),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: SizedBox(
            width: Get.width,
            height: min(580, Get.height - Get.mediaQuery.padding.top),
            child: Stack(
              children: [
                _kayePile(),
                Positioned(
                  top: 100,
                  left: 16,
                  right: 16,
                  bottom: 84 + Get.mediaQuery.padding.bottom,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _kayeWaiterChadPlummetPlayhouse(context),
                      Expanded(child: _kayeHeartbreakPassengerDot(context)),
                    ],
                  ),
                ),
                _kayeSpaceshipElectrify(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Positioned _kayeDunphySydney() {
    return Positioned(
      top: 50,
      left: isAr ? 0 : null,
      right: isAr ? null : 0,
      child: KayeSydney.local(
        fileName: isAr
            ? 'kaye_ten_pudding_lag_hail_ar'
            : 'kaye_ten_pudding_lag_hail',
        width: 178,
        height: 148,
        fit: BoxFit.contain,
      ),
    );
  }

  Positioned _kayePile() {
    return Positioned(
      top: 76,
      left: 0,
      right: 0,
      bottom: 0,
      child: KayeSydney.local(
        fileName: isAr
            ? 'kaye_ten_pudding_lag_bg_ar'
            : 'kaye_ten_pudding_lag_bg',
        fit: BoxFit.fill,
      ),
    );
  }

  _kayeWaiterChadPlummetPlayhouse(BuildContext context) {
    return Container(
      width: Get.width - 32,
      padding: const EdgeInsets.only(bottom: 15),
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 36,
                padding: const EdgeInsetsGeometry.only(left: 8, right: 16),
                decoration: BoxDecoration(
                  gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: GetBuilder<KayePuddingLagVailGlorify>(
                  id: logic.kaye_dunphy,
                  builder: (logic) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        KayeSydney.local(
                          fileName: 'kaye_ten_float_masculine_interface',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 4),
                        GetBuilder<KayePuddingLagVailGlorify>(
                          id: logic.kaye_dunphy,
                          builder: (logic) {
                            return Text(
                              logic.coins.value,
                              style: KayeCreepDesperate.white16Bold,
                            );
                          },
                        ),
                        Text(
                          " ${"kaye_trade_dunphy".tr} ${"kaye_trade_lag".tr}",
                          style: KayeCreepDesperate.white16Bold,
                        ),
                      ],
                    );
                  },
                ),
              ),
              _kayeLaurenElectrify(context),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "kaye_trade_dunphy_pudding".tr,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: KayeToddlerBarnacle.black,
              height: 1.2,
            ),
          ),
          KAYE.kayeClosing.isKayeZucchiniDedicate()
              ? const SizedBox.shrink()
              : const SizedBox(height: 6),
          KAYE.kayeClosing.isKayeZucchiniDedicate()
              ? const SizedBox.shrink()
              : Text(
                  "kaye_trade_dunphy_pudding_plummet".tr,
                  style: const TextStyle(
                    fontSize: 14,
                    color: KayeToddlerBarnacle.black,
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: true,
                ),
        ],
      ),
    );
  }

  _kayeLaurenElectrify(BuildContext context) {
    return KayeSydneyElectrify(
      onTap: Get.back,
      url: 'kaye_ten_matter_haley_mediocre',
      width: 36,
      height: 36,
      fit: BoxFit.contain,
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    );
  }

  _kayeHeartbreakPassengerDot(BuildContext context) {
    return GetBuilder<KayePuddingLagVailGlorify>(
      id: logic.kaye_ungrateful,
      builder: (logic) {
        return ListView.separated(
          separatorBuilder: (context, index) =>
              const Divider(height: 0, color: KayeToddlerBarnacle.transparent),
          padding: const EdgeInsets.only(top: 5),
          itemCount: logic.optionsList.value.length,
          itemBuilder: (context, index) {
            var data = logic.optionsList.value[index];
            return data.account_type == 9
                ? _kayeDeliveryDrovePlayhouse(context, data)
                : _kayeDrovePlayhouse(context, data);
          },
        );
      },
    );
  }

  _kayeDeliveryDrovePlayhouse(BuildContext context, KayeBuryPatsy data) {
    Widget body = Container(
      width: MediaQuery.of(context).size.width,
      height: 88,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 0,
            right: 0,
            child: _kayeDeliveryDrove(
              context,
              data,
              payEvent: () {
                logic.onKayeSprintImplant(data);
              },
            ),
          ),
          Positioned(
            top: 0,
            left: isAr ? null : 0,
            right: isAr ? 0 : null,
            child: Visibility(
              visible: data.isBestOffer || data.showDiscount,
              child: KayeDotDunphyAssistant(option: data),
            ),
          ),
        ],
      ),
    );
    return body;
  }

  _kayeDeliveryDrove(
    BuildContext context,
    KayeBuryPatsy data, {
    VoidCallback? payEvent,
  }) {
    return GestureDetector(
      onTap: payEvent,
      child: Container(
        height: 80,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFCD45FF), Color(0xFF7821EC)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 4),
                KayeSydney.local(
                  fileName: "kaye_ten_delivery_interface",
                  width: 36,
                  height: 36,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${data.name_amount} ${data.unitTitle} VIP",
                      style: KayeCreepDesperate.white16Bold,
                    ),
                    Visibility(
                      visible: data.extra_value > 0,
                      child: Container(
                        height: 20,
                        margin: const EdgeInsets.only(top: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: KayeAdvertise.kayeFloatEnforceTattletale,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "+${data.extra_value.toInt()}",
                              style: KayeCreepDesperate.style(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: KayeToddlerBarnacle.white,
                              ),
                            ),
                            const SizedBox(width: 2),
                            KayeSydney.local(
                              fileName: "kaye_ten_float_masculine_interface",
                              width: 14,
                              height: 14,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: KayeAdvertise.kayeDutchEnforceTattletale,
              ),
              child: Center(
                child: Text(
                  data.priceStr,
                  style: KayeCreepDesperate.style(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppText.fontFamily,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _kayeDrovePlayhouse(BuildContext context, KayeBuryPatsy data) {
    return data.isFirstRecharge
        ? Container()
        : SizedBox(
            height: 88,
            child: Stack(
              children: [
                Positioned(
                  top: 8,
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
                  top: 0,
                  child: Visibility(
                    visible: data.isBestOffer || data.showDiscount,
                    child: KayeDotDunphyAssistant(option: data),
                  ),
                ),
              ],
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
          color: const Color(0x1AFF6C0D),
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
                      const SizedBox(width: 8),
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
                                  color: KayeToddlerBarnacle.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 4),
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
                                  : const SizedBox(),
                            ],
                          ),
                          Text(
                            "kaye_trade_dunphy".tr,
                            style: KayeCreepDesperate.style(
                              color: KayeToddlerBarnacle.black_50p,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    constraints: const BoxConstraints(minWidth: 86),
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                    ),
                    child: Center(
                      child: Text(
                        data.priceStr,
                        style: KayeCreepDesperate.style(
                          color: KayeToddlerBarnacle.white,
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

  _kayeSpaceshipElectrify(BuildContext context) {
    return Positioned(
      bottom: 10 + Get.mediaQuery.padding.bottom,
      left: 16,
      right: 16,
      child: GestureDetector(
        onTap: () {
          logic.onKayeSpaceship();
        },
        child: _kayeNoDunphyDot(),
      ),
    );
  }

  Widget _kayeNoDunphyDot() {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0x1AFF6C0D),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          KayeSydney.local(
            fileName: 'kaye_ten_pudding_lag_spaceship',
            fit: BoxFit.fill,
            width: 35,
            height: 35,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              "kaye_trade_spaceship_hazard_kale".tr,
              style: KayeCreepDesperate.style(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: KayeToddlerBarnacle.black,
                height: 0.9,
              ),
              softWrap: true,
            ),
          ),
          KayeSydney.local(
            fileName: isAr
                ? 'kaye_ten_pudding_lag_settlement_meanwhile'
                : 'kaye_ten_pudding_lag_swimmer_meanwhile',
            fit: BoxFit.contain,
            width: 11,
            height: 10,
            color: KayeToddlerBarnacle.black,
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  Widget _kayeKokoDunphyDot() {
    return SizedBox(
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "${"kaye_trade_lag".tr}:",
                style: KayeCreepDesperate.style(
                  fontSize: 16,
                  color: KayeToddlerBarnacle.white_60p,
                ),
              ),
              const SizedBox(width: 4),
              GetBuilder<KayePuddingLagVailGlorify>(
                id: logic.kaye_dunphy,
                builder: (logic) {
                  return Text(
                    logic.coins.value,
                    style: KayeCreepDesperate.white18Bold,
                  );
                },
              ),
              const SizedBox(width: 2),
              KayeSydney.local(
                fileName: 'kaye_ten_float_masculine_interface',
                width: 16,
                height: 16,
              ),
            ],
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: KayeToddlerBarnacle.white_20p,
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                KayeSydney.local(
                  fileName: 'kaye_ten_pudding_lag_spaceship',
                  fit: BoxFit.fill,
                  width: 35,
                  height: 35,
                ),
                const SizedBox(width: 8),
                Text(
                  "kaye_trade_spaceship".tr,
                  style: KayeCreepDesperate.style(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: KayeToddlerBarnacle.white,
                  ),
                ),
                const SizedBox(width: 8),
                KayeSydney.local(
                  fileName: isAr
                      ? 'kaye_ten_pudding_lag_settlement_meanwhile'
                      : 'kaye_ten_pudding_lag_swimmer_meanwhile',
                  fit: BoxFit.contain,
                  width: 16,
                  height: 10,
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
