import 'dart:math';
import 'kaye_passenger_magic.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_denim.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_honk/kaye_dot_barnacle.dart';
import '../kaye_learning/kaye_pity_sprint_concerned_glorify.dart';

class KayePitySprintConcernedPlanner extends StatelessWidget {
  KayePitySprintConcernedPlanner({super.key});

  final logic = Get.find<KayePitySprintConcernedGlorify>();

  final GlobalKey webViewKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    try {
      if (logic.arguments.showNavbar) {
        return Scaffold(
          extendBodyBehindAppBar: false,
          appBar: KayeDotSee.kayeKristenInternship(
            Obx(() {
              return Text(logic.pageTitle.value);
            }),
          ),
          body: SafeArea(child: _kayeChihuahuaConcernedPlayhouse()),
        );
      } else {
        return _kayeChihuahuaConcernedPlayhouse();
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770012, e, stack);
      rethrow;
    }
  }

  Widget _kayeChihuahuaConcernedPlayhouse() {
    return KayeConcernedPlayhouse(
      url: logic.arguments.url,
      onTitleChanged: logic.onKayeWaiterNaughty,
      onNativeClose: logic.onKayeShermanLauren,
      onLoadResult: logic.onKayeChaoticAthenaeum,
      userAgent: KAYE.deviceService.getClientInfo().kayeSprintSasquatchErotic,
    );
  }
}
