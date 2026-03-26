import 'dart:math';
import 'kaye_craze_tartar.dart';
import 'dart:collection';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_denim.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../kaye_learning/kaye_flush_glorify.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeFlushPlanner extends StatelessWidget {
  final GlobalKey webViewKey = GlobalKey();

  KayeFlushPlanner({super.key});

  final logic = Get.find<KayeFlushGlorify>();

  @override
  Widget build(BuildContext context) {
    if (logic.arguments.showNavbar) {
      return Scaffold(
        backgroundColor: KayeAdvertise.kayePlannerBgManeuver,
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          leading: InkWell(
            onTap: Get.back,
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 18,
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: KayeToddlerBarnacle.white,
          ),
          title: GetBuilder<KayeFlushGlorify>(
            id: KayeFlushGlorify.kaye_conscious,
            builder: (logic) {
              return Text(logic.pageTitle.value);
            },
          ),
        ),
        body: SafeArea(child: _kayeChihuahuaConcernedPlayhouse()),
      );
    } else {
      return _kayeChihuahuaConcernedPlayhouse();
    }
  }

  Widget _kayeChihuahuaConcernedPlayhouse() {
    return KayeConcernedPlayhouse(
      url: logic.arguments.url,
      onTitleChanged: logic.onKayeWaiterNaughty,
    );
  }
}
