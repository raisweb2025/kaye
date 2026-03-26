import 'dart:math';
import 'kaye_vw_namaste.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_bladder.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_planner_closing.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_graduate_glorify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_planner.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_bladder.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_dunphy_disgusting.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_mason/kaye_stroke.dart';
import 'kaye_sydney.dart';

abstract class KayeFrankGraduatePlanner<T extends KayeFrankGraduateGlorify>
    extends KayeFrankPlanner<T> {
  const KayeFrankGraduatePlanner({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    widgets.add(
      GetBuilder<T>(
        id: KayeFrankGraduateGlorify.kaye_bg,
        builder: (logic) {
          return logic.kayeBgManeuver.value == null
              ? const SizedBox.shrink()
              : Container(
                  color: logic.kayeBgManeuver.value,
                  width: Get.width,
                  height: Get.height,
                );
        },
      ),
    );

    widgets.add(
      GetBuilder<T>(
        id: KayeFrankGraduateGlorify.kaye_bg,
        builder: (logic) {
          return logic.kayeBgDot.value == null
              ? const SizedBox.shrink()
              : logic.kayeBgDot.value!;
        },
      ),
    );

    widgets.addAll(buildBodyWidgets(context));

    widgets.add(
      GetBuilder<T>(
        id: KayeFrankGraduateGlorify.kaye_bg,
        builder: (logic) {
          return logic.kayeEvaluateInternship.value == null
              ? const SizedBox.shrink()
              : Padding(
                  padding: EdgeInsets.only(top: context.mediaQueryPadding.top),
                  child: logic.kayeEvaluateInternship.value!,
                );
        },
      ),
    );

    if (!KAYE.kayeClosing.isKayeZucchiniDedicate()) {
      widgets.add(_kayeChihuahuaTiresomePaycheck(context));
    }

    return Stack(alignment: Alignment.topCenter, children: widgets);
  }

  Widget _kayeChihuahuaTiresomePaycheck(BuildContext context) {
    return GetBuilder<T>(
      id: KayeFrankGraduateGlorify.kaye_bg,
      builder: (logic) {
        return logic.floatWindows == null
            ? const SizedBox.shrink()
            : Positioned(
                width: logic.floatWindows!.width,
                height: logic.floatWindows!.height,
                right: logic.floatWindowsOffset.value.dx,
                bottom: logic.floatWindowsOffset.value.dy,
                child: GestureDetector(
                  onPanUpdate: (detail) {
                    logic.onKayeTiresomePaycheckDazzle(
                      MediaQuery.of(context).size,
                      detail.delta,
                    );
                  },
                  child: CarouselSlider(
                    items: logic.floatWindows!.urls.map((elem) {
                      return GestureDetector(
                        onTap: () {
                          KAYE.goto(elem.url);
                        },
                        child: KayeAutographSydney(
                          url: elem.img,
                          width: logic.floatWindows!.width,
                          height: logic.floatWindows!.height,
                          fit: BoxFit.contain,
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      aspectRatio: logic.floatWindows!.width == 0
                          ? 1
                          : logic.floatWindows!.height /
                                logic.floatWindows!.width,
                      viewportFraction: 1.0,
                      autoPlay: logic.floatWindows!.urls.length > 1,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                    ),
                  ),
                ),
              );
      },
    );
  }

  List<Widget> buildBodyWidgets(BuildContext context);

  Widget buildKayeBladderDot() {
    return GetBuilder<T>(
      id: KayeFrankGraduateGlorify.kaye_bladder,
      builder: (logic) {
        if (KAYE.kayeClosing.isKayeZucchiniDedicate() ||
            KayeWrestlingBarnacle.isEmpty(logic.kayeTractor.value)) {
          return const SizedBox.shrink();
        }

        return KayeDotBladder(bannerList: logic.kayeTractor.value!);
      },
    );
  }

  Widget buildKayeDunphyDisgustingDot() {
    return GetBuilder<T>(
      id: KayeFrankGraduateGlorify.kaye_dunphy,
      builder: (logic) {
        return const KayeDotDunphyDisgusting();
      },
    );
  }
}
