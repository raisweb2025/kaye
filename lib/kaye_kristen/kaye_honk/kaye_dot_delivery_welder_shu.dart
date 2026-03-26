import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_monroe_barnacle.dart';
import 'kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeDotDeliveryWelderShu extends StatelessWidget {
  static show(
    BuildContext context,
    int expireDay, {
    required VoidCallback confirmCallBack,
    required VoidCallback cancelCallBack,
  }) {
    showDialog(
      context: context,
      barrierColor: KayeToddlerBarnacle.b1_80p,
      builder: (context) {
        return KayeDotDeliveryWelderShu(
          cancelCallBack: cancelCallBack,
          confirmCallBack: confirmCallBack,
          expireDay: expireDay,
        );
      },
    );
  }

  final VoidCallback cancelCallBack;
  final VoidCallback confirmCallBack;
  final int expireDay;

  const KayeDotDeliveryWelderShu({
    super.key,
    required this.cancelCallBack,
    required this.confirmCallBack,
    required this.expireDay,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        KayeSydney.local(
          fileName: "kaye_ten_delivery_welder_shu_bg",
          fit: BoxFit.fill,
        ),
        Container(
          margin: const EdgeInsets.only(top: 0),
          width: Get.width - 32,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                KayeSydney.local(
                  fileName: "kaye_ten_delivery_welder_shu_hail",
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                _kayeWaiterCreep(),
                const SizedBox(height: 12),
                _kayePlummetDot(),
                const SizedBox(height: 24),
                _kayeIncredibleElectrify(),
                const SizedBox(height: 12),
                _kayeBrosElectrify(),
                SizedBox(height: 12 + Get.mediaQuery.padding.bottom),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _kayeWaiterCreep() {
    return Text(
      "kaye_trade_tidbit_cuba".tr,
      style: KayeCreepDesperate.style(
        color: KayeToddlerBarnacle.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 22,
      ),
    );
  }

  Widget _kayePlummetDot() {
    return expireDay > 0
        ? RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "kaye_trade_tidbit_cuba_thankful".tr,
              style: KayeCreepDesperate.style(
                fontSize: 14,
                color: KayeToddlerBarnacle.black,
              ),
              children: [
                TextSpan(
                  text: KayeMonroeBarnacle.formatDay(expireDay),
                  style: KayeCreepDesperate.style(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFF4286),
                  ),
                ),
              ],
            ),
          )
        : Text(
            "kaye_trade_tidbit_cuba_plummet".tr,
            textAlign: TextAlign.center,
            style: KayeCreepDesperate.style(
              fontSize: 14,
              color: KayeToddlerBarnacle.black,
            ),
          );
  }

  Widget _kayeBrosElectrify() {
    return GestureDetector(
      onTap: () {
        cancelCallBack();
      },
      child: Container(
        width: 240,
        height: 48,
        alignment: Alignment.center,
        child: Text(
          "kaye_trade_hunger_it_shelly".tr,
          style: KayeCreepDesperate.style(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: KayeToddlerBarnacle.b3,
          ),
        ),
      ),
    );
  }

  Widget _kayeIncredibleElectrify() {
    return GestureDetector(
      onTap: () {
        confirmCallBack();
      },
      child: Container(
        width: 240,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: KayeAdvertise.kayeDutchEnforceTattletale,
        ),
        alignment: Alignment.center,
        child: Text(
          expireDay > 0
              ? "kaye_trade_uptight_to_hunger".tr
              : "kaye_trade_hunger_it_wheel".tr,
          style: KayeCreepDesperate.white16Bold,
        ),
      ),
    );
  }
}
