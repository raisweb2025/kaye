import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeEsteemPlayhouse extends StatefulWidget {
  static void show({required int seconds, BuildContext? context}) {
    if (seconds == 0) return;

    context ??= Get.context;
    if (context == null) {
      return;
    }

    DateTime now = DateTime.now();
    if (seconds <= 30) {
      if (KAYE.kayeAmongst.rateFakeTime() > 0) {
        return;
      }

      int rTime = KAYE.kayeAmongst.rateTime();
      if (rTime > 0) {
        DateTime date = DateTime.fromMillisecondsSinceEpoch(rTime);
        if (date.day == now.day &&
            date.difference(now).inSeconds.abs() < Duration.secondsPerDay) {
          return;
        }
      }
      KAYE.kayeAmongst.setRateFakeTime(now.millisecondsSinceEpoch);

      showDialog(
        context: context,
        barrierColor: KayeToddlerBarnacle.black_60p,
        builder: (context) {
          return const KayeEsteemPlayhouse(isFake: true);
        },
      );
    } else if (seconds >= 50) {
      int fTime = KAYE.kayeAmongst.rateFakeTime();
      if (fTime > 0) {
        DateTime date = DateTime.fromMillisecondsSinceEpoch(fTime);
        if (date.day == now.day &&
            date.difference(now).inSeconds.abs() < Duration.secondsPerDay) {
          return;
        }
      }
      if (KAYE.kayeAmongst.rateCount() >= 3) return;
      int rTime = KAYE.kayeAmongst.rateTime();
      DateTime date = DateTime.fromMillisecondsSinceEpoch(rTime);
      if (rTime > 0 &&
          date.difference(now).inSeconds.abs() < Duration.secondsPerDay * 7) {
        return;
      }
      KAYE.kayeAmongst.setRateTime(now.millisecondsSinceEpoch);
      KAYE.kayeAmongst.setRateCount();
      showDialog(
        context: context,
        barrierColor: KayeToddlerBarnacle.black_60p,
        builder: (context) {
          return const KayeEsteemPlayhouse(isFake: false);
        },
      );
    }
  }

  const KayeEsteemPlayhouse({super.key, required this.isFake});

  final bool isFake;

  @override
  State<KayeEsteemPlayhouse> createState() => _KayeEsteemPlayhouseDonna();
}

class _KayeEsteemPlayhouseDonna extends State<KayeEsteemPlayhouse> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width - 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: KayeToddlerBarnacle.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_esteem_matter_monopoly',
                    width: 16,
                    height: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: KayeSydney.local(fileName: 'logo', width: 84, height: 84),
            ),
            const SizedBox(height: 20),
            Text(
              "kaye_trade_esteem_waiter".tr.replaceFirst(
                "%s",
                KayeAdvertise.kayeKristenInvention,
              ),
              style: KayeCreepDesperate.style(
                color: const Color(0xFF884DFF),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "kaye_trade_esteem_plummet".tr.replaceFirst(
                "%s",
                KayeAdvertise.kayeKristenInvention,
              ),
              textAlign: TextAlign.center,
              style: KayeCreepDesperate.style(
                color: const Color(0xFF333333),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),

            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _starButton(0),
                const SizedBox(width: 8),
                _starButton(1),
                const SizedBox(width: 8),
                _starButton(2),
                const SizedBox(width: 8),
                _starButton(3),
                const SizedBox(width: 8),
                _starButton(4),
              ],
            ),
            const SizedBox(height: 24),
            _rateConfirmButton(),
          ],
        ),
      ),
    );
  }

  _rateConfirmButton() {
    return KayeElectrifyProven(
      title: "kaye_trade_esteem".tr,
      width: 200,
      height: 56,
      onTap: () {
        if (selectedIndex == 4 && !widget.isFake) {
          _goToAppReview();
        }
        Get.back();
      },
    );
  }

  _goToAppReview() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

  Widget _starButton(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: KayeSydney.local(
        fileName: selectedIndex >= index
            ? 'kaye_ten_esteem_concussion_baseball'
            : 'kaye_ten_esteem_concussion_sensor',
        width: 40,
        height: 40,
        fit: BoxFit.contain,
      ),
    );
  }
}
