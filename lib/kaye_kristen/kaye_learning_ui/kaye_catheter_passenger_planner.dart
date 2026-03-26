import 'dart:math';
import 'kaye_baseball_wheaton.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_monroe_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_quiche_internship.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_goggles_sasquatch_universal_wendy.dart';
import '../kaye_learning/kaye_catheter_passenger_glorify.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';

class KayeCatheterPassengerPlanner extends StatelessWidget {
  KayeCatheterPassengerPlanner({super.key});

  final logic = Get.find<KayeCatheterPassengerGlorify>();

  late FixedExtentScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: KayeAdvertise.kayePlannerBgManeuver),
        Positioned(
          left: 0,
          right: 0,
          top: Get.mediaQuery.padding.top + 44,
          bottom: 0,
          child: EasyRefresh.builder(
            onRefresh: logic.onKayePassengerThinner,
            onLoad: logic.onKayePassengerAnnoy,
            controller: logic.refreshController,
            triggerAxis: Axis.vertical,
            header: KayeDotSee.kayeThinnerIntercom(),
            footer: KayeDotSee.kayeThinnerPedal(),
            childBuilder: (BuildContext context, ScrollPhysics physics) {
              return GetBuilder<KayeCatheterPassengerGlorify>(
                id: logic.kaye_whim,
                builder: (_) {
                  return _kayeChickPassengerAdios();
                },
              );
            },
          ),
        ),
        _kayeEvaluateInternship(context),
      ],
    );
  }

  _kayeEvaluateInternship(BuildContext context) {
    return Positioned(
      top: Get.context!.mediaQueryPadding.top,
      left: 0,
      right: 0,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          KayeQuicheInternship(
            leading: KayeSydney.local(
              fileName: "kaye_ten_kristen_internship_uhh",
              width: 24,
              height: 24,
            ),
            middle: Text(
              "kaye_trade_tingle".tr,
              style: KayeCreepDesperate.style(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: KayeToddlerBarnacle.white,
              ),
            ),
          ),
          Positioned(
            left: KayeIOBarnacle.isARLanguage() ? 16 : null,
            right: KayeIOBarnacle.isARLanguage() ? null : 16,
            child: GetBuilder<KayeCatheterPassengerGlorify>(
              id: logic.kaye_circumcise,
              builder: (logic) {
                return GestureDetector(
                  onTap: () {
                    _kayeCuterCircumciseCopulate(logic.month.value);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        logic.month.value,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: KayeToddlerBarnacle.white,
                        ),
                      ),
                      const SizedBox(width: 4),
                      KayeSydney.local(
                        fileName: 'kaye_ten_me_chick_meanwhile',
                        width: 12,
                        height: 12,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeChickPassengerAdios() {
    if (!logic.isRefreshing.value &&
        KayeWrestlingBarnacle.isEmpty(logic.dataList.value)) {
      return SizedBox(
        width: Get.width,
        height: Get.height,
        child: Center(
          child: Text(
            "kaye_trade_no_tie".tr,
            style: const TextStyle(
              height: 1.3,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: KayeToddlerBarnacle.white,
            ),
          ),
        ),
      );
    }
    return GetBuilder<KayeCatheterPassengerGlorify>(
      id: logic.kaye_passenger,
      builder: (_) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return _kayeChickDrovePlayhouse(logic.dataList.value[index], index);
          },
          itemCount: logic.dataList.value.length,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 24);
          },
        );
      },
    );
  }

  Widget _kayeChickDrovePlayhouse(
    KayeGogglesSasquatchUniversalWendy data,
    index,
  ) {
    String createTime = KayeMonroeBarnacle.getFormatDateTime(
      DateTime.fromMillisecondsSinceEpoch(data.create_time ?? 0),
      formats: KayeMonroeBarnacle.FORMAT_YYYY_MM_DD_HH_MM_SS,
    );
    Widget child = const SizedBox();
    if (data.extend != null &&
        !KayeWrestlingBarnacle.isEmpty(data.extend?.gift_icon)) {
      child = KayeSydney.small(
        url: data.extend?.gift_icon ?? "",
        width: 20,
        height: 20,
      );
    }
    if (data.extend != null &&
        data.extend!.duration != null &&
        data.extend!.duration! > 0) {
      child = Text(
        "${"kaye_trade_nowadays".tr} ${KayeMonroeBarnacle.getFormatTimer(data.extend?.duration ?? 0)}",
        style: const TextStyle(
          fontSize: 12,
          color: KayeToddlerBarnacle.white_80p,
        ),
      );
    }

    String title = logic.typeDescMap[data.type.toString()] ?? "";
    if (KayeWrestlingBarnacle.isEmpty(title)) {
      title = data.type_desc ?? '';
    } else {
      title = title.tr;
    }
    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width - 100,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: KayeToddlerBarnacle.white,
                ),
              ),
            ),
            Text(
              data.amount! >= 0 ? '+${data.amount}' : data.amount.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: data.amount! >= 0
                    ? const Color(0xFF2BFF9B)
                    : KayeToddlerBarnacle.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              createTime,
              style: const TextStyle(
                fontSize: 12,
                color: KayeToddlerBarnacle.white_80p,
              ),
            ),
            child,
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: Get.width - 32,
          height: 1,
          color: KayeToddlerBarnacle.white_20p,
        ),
      ],
    );
  }

  void _kayeCuterCircumciseCopulate(String birthday) {
    logic.pickerSelectedIndex = logic.monthList.indexOf(logic.month.value);
    if (logic.pickerSelectedIndex < 0) {
      logic.pickerSelectedIndex = 0;
    }
    _controller = FixedExtentScrollController(
      initialItem: logic.pickerSelectedIndex,
    );

    var mainWidget = Container(
      decoration: const BoxDecoration(
        color: KayeToddlerBarnacle.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_kayeBrosElectrify(), _kayeIncredibleEnforce()],
            ),
          ),
          Container(
            height: 200,
            color: KayeToddlerBarnacle.white,
            margin: const EdgeInsets.only(top: 20),
            child: CupertinoPicker(
              scrollController: _controller,
              itemExtent: 40,
              onSelectedItemChanged: (index) {
                logic.pickerSelectedIndex = index;
              },
              children: logic.monthList.map((data) {
                return Center(
                  child: Text(data, style: KayeCreepDesperate.black16_bold),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
    Get.bottomSheet(mainWidget);
  }

  Widget _kayeIncredibleEnforce() {
    return GestureDetector(
      onTap: () {
        Get.back();
        logic.onKayeCircumciseIncredible();
      },
      child: Text(
        "kaye_trade_incredible".tr,
        style: KayeCreepDesperate.style(
          color: Color(0xFF8266F4),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _kayeBrosElectrify() {
    return GestureDetector(
      onTap: Get.back,
      child: Text(
        "kaye_trade_bros".tr,
        style: KayeCreepDesperate.style(
          color: KayeToddlerBarnacle.b1,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
