import 'dart:math';
import 'kaye_towards_plummet.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_learning/kaye_delivery_dry_wrestling.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_honk/kaye_dot_dunphy_assistant.dart';
import '../kaye_honk/kaye_dot_delivery_assistant.dart';
import '../kaye_honk/kaye_dot_delivery_dry.dart';
import '../kaye_learning/kaye_delivery_vail_glorify.dart';

class KayeDeliveryVailPlanner
    extends KayeFrankGraduatePlanner<KayeDeliveryVailGlorify> {
  KayeDeliveryVailPlanner({super.key});

  double _vipFunctionHeight = 240;

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [
        GestureDetector(
          onTap: logic.onKayeGoUhh,
          child: Container(color: KayeToddlerBarnacle.black_60p),
        ),
        GetBuilder<KayeDeliveryVailGlorify>(
          id: logic.kaye_delivery_passenger,
          builder: (logic) {
            return _kayeConundrumDot(context);
          },
        ),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770017, e, stack);
      rethrow;
    }
  }

  Widget _kayeConundrumDot(BuildContext context) {
    _vipFunctionHeight =
        (logic.showFunctionType == KayeDeliveryDryWrestling.NORMAL ||
            logic.showFunctionType == KayeDeliveryDryWrestling.CARD_BIG)
        ? 240
        : 140;
    if (logic.showUserVipInfo) {
      _vipFunctionHeight += 100;
    }

    double top = 0;
    Widget body = const SizedBox.shrink();
    switch (logic.showGridView) {
      case 0:
        body = _kayeDeliveryPassengerSuperb(context);
        top =
            Get.height -
            logic.vipItems.value.length * 86 -
            _vipFunctionHeight -
            100;
        break;
      case 1:
        body = _kayeDeliveryEyebrowsSuperb(context);
        top =
            Get.height -
            (logic.vipItems.value.length / 2.0).ceil() * (160.0 + 16) -
            _vipFunctionHeight -
            60;
        break;
      case 2:
        body = _kayeDeliveryTrustPassengerSuperb(context);
        top = Get.height - 180 - _vipFunctionHeight - 100;
        break;
    }

    return Positioned(
      top: max(top, Get.mediaQuery.padding.top),
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: Get.height - Get.mediaQuery.padding.top,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          gradient: RadialGradient(
            center: Alignment(0, -1),
            colors: [Color(0xFFDD8DFF), Colors.white],
            radius: 0.4,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
        ),
        child: Stack(children: [body, _kayeVista(0)]),
      ),
    );
  }

  _kayeVista(double top) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: Column(
        children: [
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'kaye_trade_delivery'.tr,
                  style: KayeCreepDesperate.style(
                    color: const Color(0xFF7821EC),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: logic.onKayeGoUhh,
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_matter_haley_mediocre',
                    width: 36,
                    height: 36,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeDeliveryEyebrowsSuperb(BuildContext context) {
    double itemWidth = (Get.width - 48) / 2;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 0),
            child: KayeDotDeliveryDry(
              type: logic.showFunctionType,
              showUserInfo: logic.showUserVipInfo,
            ),
          ),
        ),

        SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 16,
            childAspectRatio: itemWidth / 160.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            var data = logic.vipItems[index];
            return Padding(
              padding: EdgeInsets.only(left: index % 2 == 0 ? 16 : 0),
              child: _vipGridItemView(context, data, index),
            );
          },
          itemCount: logic.vipItems.length,
        ),
      ],
    );
  }

  _vipGridItemView(BuildContext context, KayeBuryPatsy data, int index) {
    payCallback() {
      logic.onKayeSprintPatsy(data);
    }

    double width = (MediaQuery.of(context).size.width - 48.0) / 2;
    Widget body = Container(
      width: width,
      height: 160,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            child: _kayeDeliveryEclipseDrove(
              context,
              data,
              payEvent: payCallback,
            ),
          ),
          Positioned(
            left: KayeIOBarnacle.isARLanguage() ? null : 0,
            right: KayeIOBarnacle.isARLanguage() ? 0 : null,
            top: 0,
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

  _kayeDeliveryEclipseDrove(
    BuildContext context,
    KayeBuryPatsy data, {
    VoidCallback? payEvent,
  }) {
    double width = (MediaQuery.of(context).size.width - 48.0) / 2;
    bool isAr = KayeIOBarnacle.isARLanguage();
    return GestureDetector(
      onTap: payEvent,
      child: Container(
        width: width,
        height: 160,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: data.isLifetime
              ? const Color(0xFF6900BE)
              : KayeToddlerBarnacle.white_20p,
          border: data.isLifetime
              ? Border.all(color: const Color(0xFFFFBF44), width: 2)
              : null,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                data.isLifetime
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: data.isLifetime ? 56 : 48,
                                alignment: Alignment.center,
                                child: data.isLifetime
                                    ? KayeSydney.local(
                                        fileName: "kaye_ten_delivery_interface",
                                        width: 42,
                                        height: 42,
                                        fit: BoxFit.contain,
                                      )
                                    : Text(
                                        "${data.name_amount}",
                                        style: KayeCreepDesperate.style(
                                          color: const Color(0xFFFFC34F),
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                              Expanded(
                                child: Text(
                                  data.isLifetime
                                      ? "kaye_trade_yip".tr
                                      : data.unitTitle,
                                  maxLines: 2,
                                  style: KayeCreepDesperate.style(
                                    color: KayeToddlerBarnacle.white,
                                    fontFamily: AppText.fontFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Text(
                              "${data.name_amount}",
                              style: KayeCreepDesperate.style(
                                color: const Color(0xFFFFC34F),
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              data.unitTitle,
                              style: KayeCreepDesperate.style(
                                color: KayeToddlerBarnacle.white,
                                fontFamily: AppText.fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _kayeVirginElectrify(data),
                ),
              ],
            ),
            Positioned(
              top: 6,
              left: isAr ? 0 : null,
              right: isAr ? null : 0,
              child: Visibility(
                visible: data.extra_value > 0,
                child: Container(
                  height: 20,
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFF8321FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "+${data.extra_value.toStringAsFixed(0)}",
                        style: KayeCreepDesperate.style(
                          color: KayeToddlerBarnacle.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 2),
                      KayeSydney.local(
                        fileName: "kaye_ten_float_masculine_interface",
                        width: 12,
                        height: 12,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeDeliveryPassengerSuperb(BuildContext context) {
    Widget body;
    if (KayeWrestlingBarnacle.isEmpty(logic.vipItems)) {
      body = Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        child: KayeDotDeliveryDry(
          type: logic.showFunctionType,
          showUserInfo: logic.showUserVipInfo,
        ),
      );
    } else {
      body = ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 0),
              child: KayeDotDeliveryDry(
                type: logic.showFunctionType,
                showUserInfo: logic.showUserVipInfo,
              ),
            );
          }
          var data = logic.vipItems[index - 1];
          return _kayeDeliveryDrovePlayhouse(context, data);
        },
        itemCount: logic.vipItems.length + 1,
        padding: const EdgeInsets.symmetric(vertical: 12),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 6, color: Colors.transparent);
        },
      );
    }

    return SizedBox(width: MediaQuery.of(context).size.width, child: body);
  }

  _kayeDeliveryDrovePlayhouse(BuildContext context, KayeBuryPatsy data) {
    payCallback() {
      logic.onKayeSprintPatsy(data);
    }

    Widget body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 80,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 4,
            left: 0,
            right: 0,
            child: _kayeDeliveryDrove(context, data, payEvent: payCallback),
          ),
          Positioned(
            left: 16,
            right: 16,
            child: Container(height: 1, color: KayeToddlerBarnacle.black_10p),
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
        height: 76,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: data.isLifetime
              ? const LinearGradient(
                  colors: [Color(0xFFCD45FF), Color(0xFF7821EC)],
                  begin: AlignmentGeometry.topRight,
                  end: AlignmentGeometry.bottomCenter,
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: data.isLifetime ? 50 : 44,
                    alignment: Alignment.center,
                    child: data.isLifetime
                        ? KayeSydney.local(
                            fileName: "kaye_ten_yip_delivery_interface",
                            width: 42,
                            height: 42,
                            fit: BoxFit.contain,
                          )
                        : Text(
                            "${data.name_amount}",
                            style: KayeCreepDesperate.style(
                              color: const Color(0xFFCD45FF),
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                  data.isLifetime
                      ? const SizedBox(width: 8)
                      : const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.isLifetime
                              ? "kaye_trade_yip".tr
                              : data.unitTitle,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: KayeCreepDesperate.style(
                            color: data.isLifetime
                                ? Colors.white
                                : KayeToddlerBarnacle.black,
                            fontFamily: AppText.fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Visibility(
                          visible: data.extra_value > 0,
                          child: Container(
                            height: 20,
                            padding: const EdgeInsets.only(left: 6, right: 6),
                            decoration: BoxDecoration(
                              gradient:
                                  KayeAdvertise.kayeFloatEnforceTattletale,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "+${data.extra_value.toStringAsFixed(0)}",
                                  style: KayeCreepDesperate.style(
                                    color: KayeToddlerBarnacle.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(width: 2),
                                KayeSydney.local(
                                  fileName:
                                      "kaye_ten_float_masculine_interface",
                                  width: 12,
                                  height: 12,
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: data.isBestOffer || data.showDiscount,
              child: KayeDotDeliveryAssistant(option: data),
            ),
            _kayeVirginElectrify(data),
          ],
        ),
      ),
    );
  }

  Widget _kayeVirginElectrify(KayeBuryPatsy data) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        gradient: data.isLifetime
            ? null
            : const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFCD45FF), Color(0xFF7821EC)],
              ),
      ),
      child: Center(
        child: Text(
          data.priceStr,
          style: KayeCreepDesperate.style(
            color: data.isLifetime ? const Color(0xFFB52FFF) : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _kayeDeliveryTrustPassengerSuperb(BuildContext context) {
    Widget body = GetBuilder<KayeDeliveryVailGlorify>(
      id: logic.kaye_delivery_passenger,
      builder: (logic) {
        return CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 0),
                child: KayeDotDeliveryDry(
                  type: logic.showFunctionType,
                  showUserInfo: logic.showUserVipInfo,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                height: 160.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: logic.vipItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    var data = logic.vipItems[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? 16 : 5,
                        right: 5,
                      ),
                      child: _kayeDeliveryTrustPassengerDrovePlayhouse(
                        context,
                        data,
                        index,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );

    return SizedBox(width: MediaQuery.of(context).size.width, child: body);
  }

  Widget _kayeDeliveryTrustPassengerDrovePlayhouse(
    BuildContext context,
    KayeBuryPatsy data,
    int index,
  ) {
    payCallback() {
      logic.onKayeSprintPatsy(data);
    }

    double width = (MediaQuery.of(context).size.width - 70.0) / 3;
    Widget body = Container(
      width: width,
      height: 160,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: _kayeDeliveryTrustPassengerDrove(
              context,
              data,
              payEvent: payCallback,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Visibility(
              visible: data.isBestOffer || data.showDiscount,
              child: _kayeDeliveryTrustPassengerDunphyAssistant(data),
            ),
          ),
        ],
      ),
    );
    return body;
  }

  Widget _kayeDeliveryTrustPassengerDrove(
    BuildContext context,
    KayeBuryPatsy data, {
    VoidCallback? payEvent,
  }) {
    double width = (MediaQuery.of(context).size.width - 48.0) / 2;
    bool isAr = KayeIOBarnacle.isARLanguage();
    return GestureDetector(
      onTap: payEvent,
      child: Container(
        width: width,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: data.isLifetime
              ? const Color(0xFF6900BE)
              : KayeToddlerBarnacle.white_20p,
          border: data.isLifetime
              ? Border.all(color: const Color(0xFFFFBF44), width: 2)
              : null,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                data.isLifetime
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: data.isLifetime ? 56 : 48,
                                alignment: Alignment.center,
                                child: data.isLifetime
                                    ? KayeSydney.local(
                                        fileName: "kaye_ten_delivery_interface",
                                        width: 42,
                                        height: 42,
                                        fit: BoxFit.contain,
                                      )
                                    : Text(
                                        "${data.name_amount}",
                                        style: KayeCreepDesperate.style(
                                          color: const Color(0xFFFFC34F),
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                              Text(
                                data.isLifetime
                                    ? "kaye_trade_yip".tr
                                    : data.unitTitle,
                                style: KayeCreepDesperate.style(
                                  color: KayeToddlerBarnacle.white,
                                  fontFamily: AppText.fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(height: 25),
                            Text(
                              "${data.name_amount}",
                              style: KayeCreepDesperate.style(
                                color: const Color(0xFFFFC34F),
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              data.unitTitle,
                              style: KayeCreepDesperate.style(
                                color: KayeToddlerBarnacle.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                _kayeDeliveryTrustPassengerVirginElectrify(data),
              ],
            ),
            Positioned(
              bottom: 48,
              child: Visibility(
                visible: data.extra_value > 0,
                child: Container(
                  height: 20,
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFF8321FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "+${data.extra_value.toStringAsFixed(0)}",
                        style: KayeCreepDesperate.style(
                          color: KayeToddlerBarnacle.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 2),
                      KayeSydney.local(
                        fileName: "kaye_ten_float_masculine_interface",
                        width: 12,
                        height: 12,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeDeliveryTrustPassengerDunphyAssistant(KayeBuryPatsy option) {
    String title = "";
    if (option.isBestOffer) {
      title = "kaye_trade_artificial_finalist".tr;
    } else if (option.showDiscount) {
      title = "${option.discountStr} ${'kaye_trade_boom'.tr}";
    }
    return Container(
      height: 24,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        gradient: LinearGradient(
          colors: [Color(0xFFFFED4D), Color(0xFF3DFFA2)],
          begin: Alignment.bottomRight,
          end: Alignment.center,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: KayeCreepDesperate.style(
            fontSize: 12,
            color: KayeToddlerBarnacle.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _kayeDeliveryTrustPassengerVirginElectrify(KayeBuryPatsy data) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        color: KayeToddlerBarnacle.white_10p,
      ),
      child: Center(
        child: Text(
          data.priceStr,
          style: KayeCreepDesperate.style(
            color: data.isLifetime
                ? KayeToddlerBarnacle.white
                : KayeToddlerBarnacle.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
