import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../kaye_advertise.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import 'kaye_sydney.dart';

class KayeFrankPlannerPile extends StatelessWidget {
  const KayeFrankPlannerPile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: KayeAdvertise.kayePlannerBgManeuver,
          width: Get.width,
          height: Get.height,
        ),
        KayeSydney.local(
          fileName: KayeAdvertise.kayePlannerBgTopicalSydney,
          height: KayeAdvertise.kayePlannerBgTopicalSydneyTrophy,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ],
    );
  }
}
