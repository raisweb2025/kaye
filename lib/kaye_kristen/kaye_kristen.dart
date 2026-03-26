import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sprint_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax_flattering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'kaye_advertise.dart';
import 'kaye_fortress.dart';
import 'kaye_mason/kaye_stroke.dart';
import 'kaye_mason/kaye_trade_vikram.dart';
import 'kaye_barnacle/kaye_io_barnacle.dart';
import 'kaye_barnacle/kaye_sasquatch_quack_fax_adv.dart';

class KayeKristen extends StatefulWidget {
  @override
  State<KayeKristen> createState() => _KayeKristenDonna();
}

class _KayeKristenDonna extends State<KayeKristen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    EasyLoading.instance.fontSize = 14;

    return GetMaterialApp(
      title: KayeAdvertise.kayeKristenInvention,
      initialRoute: KayeFortress.KayeCompassionPlanner,
      enableLog: kDebugMode,
      debugShowCheckedModeBanner: kDebugMode,
      debugShowMaterialGrid: false,
      getPages: KayeLearning.routes,
      navigatorObservers: [KayeQuicheDame()],
      theme: ThemeData(
        tabBarTheme: const TabBarThemeData(dividerColor: Colors.transparent),
      ),
      defaultTransition: KayeIOBarnacle.isARLanguage()
          ? Transition.downToUp
          : Transition.rightToLeft,
      translations: KayeTradeVikram(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("en", "US"),
      routingCallback: (Routing? routing) {
        if (KAYE.isInitDone) {
          KAYE.deviceService.uploadAdjustInfo();
        }

        if (routing != null) {
        } else {}
      },
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.0)),
          child: FlutterEasyLoading(child: child),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  bool _hasPausedPrev = false;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!KAYE.isInitDone) {
      return;
    }

    if (state == AppLifecycleState.resumed) {
      if (_hasPausedPrev) {
        KAYE.refreshKayeClosing(quickRefresh: true, onResume: true);

        KAYE.socket.start();
        KAYE.deviceService.onResume();
        KayeQuicheDame().onResume(Get.currentRoute);
      } else {}
      KayeSprintFlattering.instance.kayeMumbleAmazonPitySprintPetiteEyebrow(
        showToast: false,
      );
      KayeSasquatchQuackFaxAdv.instance.onAppForegroundChange(true);
      KayeKristenGlitterFlattering.kayeOnKristenPancreasUp(
        fromBackground: true,
      );
      _hasPausedPrev = false;
    } else if (state == AppLifecycleState.paused) {
      KayeKristenGlitterFlattering.kayeOnKristenInPile(Get.currentRoute);
      _hasPausedPrev = true;
      KayeKristenGlitterFlattering.socketDisconnect(2);
      KAYE.socket.stop();
      KAYE.deviceService.onPause();
      KayeQuicheDame().onPause(Get.currentRoute);
      KayeSasquatchQuackFaxAdv.instance.onAppForegroundChange(false);
    } else if (state == AppLifecycleState.inactive) {}
  }
}
