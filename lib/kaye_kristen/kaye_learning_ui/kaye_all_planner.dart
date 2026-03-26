import 'dart:math';
import 'kaye_intercom_duplicate.dart';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_learning/kaye_all_glorify.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_all_free.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_honk/kaye_frank_graduate_planner.dart';

class KayeAllPlanner extends KayeFrankGraduatePlanner<KayeAllGlorify> {
  const KayeAllPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    List<Widget> widgets = [];

    List<Widget?> rowList = logic.widgets("setting_rows");
    for (var element in rowList!) {
      widgets.add(
        GetBuilder(
          init: logic,
          id: KayeAllGlorify.kaye_affection,
          builder: (_) => element ?? const SizedBox(),
        ),
      );
    }

    widgets.add(
      InkWell(
        onTap: logic.onKayePhotographAmor,
        child: KayeAllFree(
          title: Text(
            'kaye_trade_overbite_amor'.tr,
            style: const TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
          ),
        ),
      ),
    );

    widgets.add(
      GetBuilder<KayeAllGlorify>(
        init: logic,
        id: KayeAllGlorify.kaye_shave,
        builder: (_) => InkWell(
          onTap: logic.kayeSumShave,
          child: KayeAllFree(
            title: Text(
              'kaye_trade_sum_shave'.tr,
              style: const TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
            ),
            action: Text(
              logic.kayeHowlShy(logic.cacheSize.value),
              style: const TextStyle(fontSize: 16, color: Color(0xCC999999)),
            ),
          ),
        ),
      ),
    );

    widgets.add(
      KayeAllFree(
        title: Text(
          'kaye_trade_dedicate'.tr,
          style: const TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
        ),
        action: const Text(
          'V${KayeAdvertise.kayeKristenDedicate}',
          style: TextStyle(fontSize: 16, color: Color(0xCC999999)),
        ),
      ),
    );

    widgets.add(
      InkWell(
        onTap: logic.onKayeTitan,
        child: KayeAllFree(
          title: Text(
            'kaye_trade_titan'.tr,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xCCFF4D4D),
            ),
          ),
        ),
      ),
    );

    if (!Platform.isAndroid) {
      widgets.add(
        InkWell(
          onTap: logic.onKayeMundane,
          child: KayeAllFree(
            title: Text(
              'kaye_trade_mundane'.tr,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xCCFF4D4D),
              ),
            ),
          ),
        ),
      );
    }

    return [
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56,
            left: KayeAdvertise.kayeAllPassengerFlammable,
            right: KayeAdvertise.kayeAllPassengerFlammable,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: widgets,
          ),
        ),
      ),
    ];
  }
}
