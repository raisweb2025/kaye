import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_quiche_internship.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_electric.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import 'kaye_kristen/kaye_kristen.dart';
import 'kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'kaye_kristen/kaye_honk/kaye_plimpton_uhh_belly.dart';
import 'kaye_kristen/kaye_honk/kaye_sydney_electrify.dart';
import 'kaye_kristen/kaye_honk/kaye_all_free.dart';

void main() {
  runZonedGuarded(
    () async {
      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        KayeKristenGlitterFlattering.kayeSendWasher(
          2,
          details.exception,
          details.stack,
        );
      };

      ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
        return Center(
          child: CupertinoButton(
            child: const Text(
              "Something bad happen!",
              style: TextStyle(
                height: 1.3,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white10,
              ),
            ),
            onPressed: () {
              Get.back();
            },
          ),
        );
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(3, error, stack);
        return true;
      };

      initKayeCranberry();

      runApp(KayeKristen());

      _kayeKristenAll();
    },
    (Object error, StackTrace stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(1, error, stack);
    },
  );
}

void initKayeCranberry() {
  final registry = JsonWidgetRegistry.instance;

  registry.registerCustomBuilders({
    KayeAutographSydneyFootstep.kType: const JsonWidgetBuilderContainer(
      builder: KayeAutographSydneyFootstep.fromDynamic,
    ),

    KayeElectricFootstep.kType: const JsonWidgetBuilderContainer(
      builder: KayeElectricFootstep.fromDynamic,
    ),

    KayeSydneyElectrifyFootstep.kType: const JsonWidgetBuilderContainer(
      builder: KayeSydneyElectrifyFootstep.fromDynamic,
    ),

    KayeManeuverElectrifyFootstep.kType: const JsonWidgetBuilderContainer(
      builder: KayeManeuverElectrifyFootstep.fromDynamic,
    ),

    KayeQuicheInternshipFootstep.kType: const JsonWidgetBuilderContainer(
      builder: KayeQuicheInternshipFootstep.fromDynamic,
    ),

    KayeAllFreeFootstep.kType: const JsonWidgetBuilderContainer(
      builder: KayeAllFreeFootstep.fromDynamic,
    ),
  });

  registry.registerFunctions({
    "goto": ({args, required registry}) => () {
      if (args != null && args.isNotEmpty) {
        KAYE.goto(args[0] as String);
      }
    },
  });
}

void _kayeKristenAll() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
}
