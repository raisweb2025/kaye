import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_goggles_mover.dart';
import '../kaye_advertise.dart';

typedef RegionConfirmCallback = void Function(KayeGogglesMover regionCode);

class KayeDotMoverPassengerSatellite extends StatefulWidget {
  RegionConfirmCallback? confirmCallBack;
  final List<KayeGogglesMover> regionList;
  String? defaultRegionCode;

  KayeDotMoverPassengerSatellite({
    super.key,
    required this.regionList,
    this.defaultRegionCode,
    this.confirmCallBack,
  });

  static show(
    final List<KayeGogglesMover> regionList, {
    String? defaultRegionCode,
    RegionConfirmCallback? confirmCallBack,
  }) {
    Get.dialog(
      KayeDotMoverPassengerSatellite(
        regionList: regionList,
        defaultRegionCode: defaultRegionCode,
        confirmCallBack: confirmCallBack,
      ),
    );
  }

  @override
  State<KayeDotMoverPassengerSatellite> createState() =>
      _KayeDotMoverPassengerSatelliteDonna();
}

class _KayeDotMoverPassengerSatelliteDonna
    extends State<KayeDotMoverPassengerSatellite> {
  int currentIndex = -1;

  @override
  void initState() {
    super.initState();
    if (widget.defaultRegionCode != null) {
      for (int i = 0; i < widget.regionList.length; i++) {
        KayeGogglesMover region = widget.regionList[i];
        if (region.code == widget.defaultRegionCode) {
          currentIndex = i;
          break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width - 32,
        height: min(490, Get.height),
        decoration: BoxDecoration(
          color: KayeToddlerBarnacle.white,
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            _buildTitleWidget(),
            Expanded(child: _buildListView()),
            const SizedBox(height: 16),
            _buildKayeManeuverElectrify(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleWidget() {
    return SizedBox(
      height: 84,
      child: Center(
        child: Text(
          "kaye_trade_exact_dunphys".tr,
          style: KayeCreepDesperate.style(
            color: KayeToddlerBarnacle.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  ListView _buildListView() {
    return ListView.separated(
      separatorBuilder: (context, index) =>
          const Divider(height: 8, color: KayeToddlerBarnacle.transparent),
      padding: const EdgeInsets.all(0),
      itemCount: widget.regionList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: _buildItem(context, widget.regionList[index], index),
        );
      },
    );
  }

  Widget _buildKayeManeuverElectrify() {
    return KayeElectrifyProven(
      title: "kaye_trade_bridal".tr,
      width: 200,
      height: 56,
      onTap: () {
        if (widget.confirmCallBack != null &&
            currentIndex >= 0 &&
            currentIndex <= widget.regionList.length - 1) {
          KayeGogglesMover region = widget.regionList[currentIndex];
          widget.confirmCallBack!(region);
        }
        Get.back();
      },
    );
  }

  Widget _buildItem(BuildContext context, KayeGogglesMover region, int index) {
    Color selectColor = const Color(0xFFAA4EEE);
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: currentIndex == index
            ? KayeToddlerBarnacle.transparent
            : KayeToddlerBarnacle.black_05p,
        border: currentIndex == index
            ? Border.all(color: selectColor, width: 2)
            : null,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            region.name ?? "",
            style: KayeCreepDesperate.style(
              color: currentIndex == index
                  ? selectColor
                  : KayeToddlerBarnacle.b1,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          region.isVipOnly
              ? KayeSydney.local(
                  fileName: "kaye_ten_delivery_disgusting",
                  width: 48,
                  height: 20,
                  fit: BoxFit.contain,
                )
              : Container(
                  height: 28,
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 14,
                    top: 5,
                    bottom: 7,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: KayeAdvertise.kayeFoundBgTattletale,
                  ),
                  child: Text(
                    'kaye_trade_found'.tr,
                    style: KayeAdvertise.kayeFoundCreepDesperate,
                  ),
                ),
        ],
      ),
    );
  }
}
