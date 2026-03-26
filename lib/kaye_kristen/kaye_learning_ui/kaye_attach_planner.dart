import 'dart:math';
import 'kaye_fridge_tractor.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_graduate_planner.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_sydney_electrify.dart';
import '../kaye_learning/kaye_attach_glorify.dart';

class KayeAttachPlanner extends KayeFrankGraduatePlanner<KayeAttachGlorify> {
  const KayeAttachPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [
        _kayeChihuahuaPile(),
        _kayeChihuahuaConsentChadInvention(),
        GetBuilder<KayeAttachGlorify>(
          id: KayeAttachGlorify.kaye_attach,
          builder: (logic) {
            Widget? w = logic.widget("ui", variables: logic.args.value);
            w ??= _kayeChihuahuaSole();
            return w;
          },
        ),
      ];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770002, e, stack);
      rethrow;
    }
  }

  Positioned _kayeChihuahuaConsentChadInvention() {
    return Positioned(
      width: Get.width,
      top: (Get.height / Get.width) < 1.7 ? 60 : 132,
      child: Center(
        child: Column(
          children: [
            KayeSydney.local(fileName: "logo", width: 98, height: 98),
            const SizedBox(height: 20),
            KayeSydney.local(
              fileName: "kaye_ten_kristen_invention",
              width: 97,
              height: 38,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  Image _kayeChihuahuaPile() {
    return const Image(
      image: AssetImage(KayeAdvertise.kayeCompassionBgSydney),
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _kayeChihuahuaSole() {
    bool showUserName = logic.args.value["username"]["visible"];

    return Positioned(
      left: 10,
      right: 10,
      bottom: 30,
      child: Column(
        children: [
          _kayeChihuahuaAttachEngage(),

          showUserName
              ? _kayeChihuahuaBamElectrify(
                  logic.onKayeAttachAttraction,
                  "kaye_ten_attach_sasquatch_interface",
                  "kaye_trade_attach_by_attraction".tr,
                )
              : const SizedBox.shrink(),
          const SizedBox(height: 25),
          _kayeChihuahuaPerform(),
        ],
      ),
    );
  }

  Widget _kayeChihuahuaAttachEngage({int style = 1}) {
    if (KAYE.kayeClosing.isKayeIOSZucchiniDedicate()) {
      return Column(
        children: [
          _kayeChihuahuaBamElectrify(
            logic.onKayeAttachUnhand,
            "kaye_ten_attach_unhand_interface",
            logic.args.value["device"]["title"],
            borderColor: Colors.white,
            space: 64,
          ),
          _kayeChihuahuaEmulatePresentElectrify(
            logic.onKayeAttachEmulate,
            "kaye_ten_attach_emulate_interface",
            "kaye_trade_equivalent_in_makeup_emulate".tr,
          ),
        ],
      );
    }

    switch (style) {
      case 1:
        return _kayeChihuahuaAttachElectrifyBam();
      default:
        return _kayeChihuahuaAttachElectrifyFree();
    }
  }

  Column _kayeChihuahuaAttachElectrifyBam() {
    List<Widget> btns = [];

    if (logic.args.value["apple"]["visible"]) {
      btns.add(
        _kayeChihuahuaBamElectrify(
          logic.onKayeAttachEmulate,
          "kaye_ten_attach_emulate_interface",
          logic.args.value["apple"]["title"],
        ),
      );
    }

    if (logic.args.value["google"]["visible"]) {
      btns.add(
        _kayeChihuahuaBamElectrify(
          logic.onKayeAttachJacuzzi,
          "kaye_ten_attach_jacuzzi_interface",
          logic.args.value["google"]["title"],
        ),
      );
    }

    if (logic.args.value["device"]["visible"]) {
      btns.add(
        _kayeChihuahuaBamElectrify(
          logic.onKayeAttachUnhand,
          "kaye_ten_attach_unhand_interface",
          logic.args.value["device"]["title"],
        ),
      );
    }
    return Column(children: btns);
  }

  Row _kayeChihuahuaAttachElectrifyFree() {
    List<Widget> btns = [];

    int count = 2;
    if (logic.args.value["apple"]["visible"]) {
      count = 3;
      btns.add(
        _kayeChihuahuaTraumatizeAdd(
          logic.onKayeAttachEmulate,
          "kaye_ten_attach_emulate",
          logic.args.value["apple"]["title"],
          count,
        ),
      );
    }

    if (logic.args.value["google"]["visible"]) {
      btns.add(
        _kayeChihuahuaTraumatizeAdd(
          logic.onKayeAttachJacuzzi,
          "kaye_ten_attach_jacuzzi",
          logic.args.value["google"]["title"],
          count,
        ),
      );
    }

    if (logic.args.value["device"]["visible"]) {
      btns.add(
        _kayeChihuahuaTraumatizeAdd(
          logic.onKayeAttachUnhand,
          "kaye_ten_attach_unhand",
          logic.args.value["device"]["title"],
          count,
        ),
      );
    }
    return Row(children: btns);
  }

  Text _kayeChihuahuaPerform() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "kaye_trade_attach_backseat_to".tr,
            style: TextStyle(fontSize: 12, color: "777777".toColor()),
          ),
          TextSpan(
            text: ' ${"kaye_trade_sasquatch_perform".tr} ',
            style: TextStyle(fontSize: 12, color: "FFBE03".toColor()),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                KAYE.goto(KayeAdvertise.kayeSkunkSasquatchPerform);
              },
          ),
          TextSpan(
            text: "kaye_trade_chad".tr,
            style: TextStyle(fontSize: 12, color: "777777".toColor()),
          ),
          TextSpan(
            text: ' ${"kaye_trade_caller_perform".tr}',
            style: TextStyle(fontSize: 12, color: "FFBE03".toColor()),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                KAYE.goto(KayeAdvertise.kayeSkunkCallerTribbiani);
              },
          ),
        ],
      ),
    );
  }

  Widget _kayeChihuahuaEmulatePresentElectrify(
    GestureTapCallback onTap,
    String img,
    String title,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: Get.width - 64,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KayeSydney.local(
              fileName: img,
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeChihuahuaBamElectrify(
    GestureTapCallback onTap,
    String img,
    String title, {
    Color color = KayeToddlerBarnacle.white_20p,
    Color borderColor = KayeToddlerBarnacle.white_20p,
    double space = 128,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: Get.width - space,
        height: 48,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KayeSydney.local(
              fileName: img,
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: AppDimen.font_c2,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontFamily: AppText.fontFamily,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeChihuahuaTraumatizeAdd(
    GestureTapCallback onTap,
    String img,
    String title,
    int count,
  ) {
    return Expanded(
      child: Column(
        children: [
          KayeSydneyElectrify(
            onTap: onTap,
            url: img,
            width: 56,
            height: 56,
            fit: BoxFit.contain,
            borderRadius: const BorderRadius.all(Radius.circular(28)),
          ),
          const SizedBox(height: 8),
          KayeIOBarnacle.isARLanguage()
              ? SizedBox(
                  width: (Get.width - 80) / count,
                  child: FittedBox(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              : Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ],
      ),
    );
  }
}
