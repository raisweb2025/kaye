import 'dart:math';
import 'kaye_look_hand.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_attach_attraction_desperate_wrestling.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_enforce_creep.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney_electrify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_learning/kaye_attach_attraction_glorify.dart';

class KayeAttachAttractionPlanner extends StatelessWidget {
  KayeAttachAttractionPlanner({Key? key}) : super(key: key);

  final KayeAttachAttractionGlorify logic =
      Get.find<KayeAttachAttractionGlorify>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.75),
      body:
          logic.loginUserNameStyleType ==
              KayeAttachSasquatchInventionDesperateWrestling.Center
          ? _kayePedestrianAllen(context)
          : _kayeBlankAllen(context),
    );
  }

  Widget _kayePedestrianAllen(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          SizedBox(height: (Get.height > 500 ? (Get.height - 500) / 2 : 30)),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: kayeAllenBam(true),
          ),
        ],
      ),
    );
  }

  Widget _kayeBlankAllen(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(color: Colors.transparent),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: kayeAllenBam(false),
          ),
        ),
      ],
    );
  }

  Widget kayeAllenBam(bool isCenter) {
    return Column(
      children: [
        _title(),
        _form([
          _input(
            logic.nameController,
            "kaye_trade_attach_pursuit_swallow_invention".tr,
          ),
          const SizedBox(height: 16),
          _input(
            logic.passController,
            "kaye_trade_attach_pursuit_swallow_fight".tr,
          ),
          const SizedBox(height: 30),
          _btnLogin(logic.onLogin),
        ], radius: isCenter ? 36 : 0),
        isCenter ? const SizedBox(height: 15) : const SizedBox(),
        isCenter ? _btnClose() : const SizedBox(),
      ],
    );
  }

  Container _form(List<Widget> form, {double radius = 36}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        ),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, bottom: 40),
        child: Column(children: form),
      ),
    );
  }

  KayeSydneyElectrify _btnClose() {
    return KayeSydneyElectrify(
      onTap: Get.back,
      url: "kaye_ten_matter_haley_monopoly",
      width: 36,
      height: 36,
      borderRadius: const BorderRadius.all(Radius.circular(18)),
      fit: BoxFit.contain,
    );
  }

  Widget _btnLogin(GestureTapCallback onTap) {
    return KayeElectrifyProven(
      title: 'kaye_trade_attach_pursuit_enforce_attach'.tr,
      onTap: onTap,
      width: 240,
      height: 56,
    );
  }

  Widget _input(TextEditingController? controller, String hintText) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: KayeToddlerBarnacle.black_03p,
        border: Border.all(color: KayeToddlerBarnacle.black_10p, width: 1),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: KayeToddlerBarnacle.black_20p,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Container _title() {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFBCA9), Color.fromRGBO(255, 255, 255, 1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
      ),
      height: 148,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 50),
          KayeSydneySeparate.kayeChaoticTouchdownSydney(
            "logo",
            width: 69,
            height: 69,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),
                KayeSydneySeparate.kayeChaoticTouchdownSydney(
                  "kaye_ten_kristen_invention_mediocre",
                  width: 72,
                  height: 28,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 6),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "kaye_trade_attach_by_attraction".tr,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}
