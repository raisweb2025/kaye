import 'dart:math';
import 'kaye_passenger_magic.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_advertise.dart';
import '../kaye_learning/kaye_compassion_glorify.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';

class KayeCompassionPlanner extends StatelessWidget {
  KayeCompassionPlanner({super.key});

  final logic = Get.find<KayeCompassionGlorify>();

  @override
  Widget build(BuildContext context) {
    try {
      return Stack(
        children: [
          const Image(
            image: AssetImage(KayeAdvertise.kayeCompassionBgSydney),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            width: Get.width,
            top: 132,
            child: Center(
              child: Column(
                children: [
                  KayeSydney.local(fileName: "logo", width: 98, height: 98),
                  const SizedBox(height: 20),
                  KayeSydney.local(
                    fileName: "kaye_ten_kristen_invention",
                    width: 97,
                    height: 38,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            width: Get.width,
            child: const Center(
              child: Column(
                children: [SpinKitThreeBounce(color: Colors.white, size: 15)],
              ),
            ),
          ),
        ],
      );
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770013, e, stack);
      rethrow;
    }
  }
}
