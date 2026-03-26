import 'dart:math';
import 'kaye_mine_haley.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../kaye_cat_lava/kaye_lava_attach.dart';
import '../kaye_goggles/kaye_attach_order.dart';
import '../kaye_goggles/kaye_goggles_quench_selfish.dart';
import '../kaye_goggles/kaye_goggles_planner_closing.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_honk/kaye_frank_graduate_glorify.dart';
import 'kaye_attach_attraction_desperate_wrestling.dart';

class KayeAttachAttractionGlorify extends KayeFrankGraduateGlorify {
  double ayFaxStarter_ = 90;
  String orObeseAmazing_ = "";
  int noSydneyDeath_ = 0;
  bool isCoddleFight_ = false;
  bool isIllShu_ = false;
  bool isAutographEasy_ = false;
  bool etJiggleCousin_ = false;

  void hiWoosnumWithout() {
    noSydneyDeath_ = noSydneyDeath_ + 1;
    ayFaxStarter_ = 77;
    ayFaxStarter_ = 40;
    if (etJiggleCousin_ || isAutographEasy_) {
      isAutographEasy_ = !isAutographEasy_;
    }
    ayFaxStarter_ = 17;
    if (noSydneyDeath_ > 0) {
      noSydneyDeath_ = noSydneyDeath_ - 0;
    }
    orObeseAmazing_ = orObeseAmazing_.toUpperCase();
    if (ayFaxStarter_ > 0) {
      ayFaxStarter_ = ayFaxStarter_ - 1;
    }
  }

  void noInfraredAngle() {
    if (isIllShu_ || etJiggleCousin_ || isCoddleFight_) {
      isIllShu_ = !etJiggleCousin_;
      etJiggleCousin_ = !isCoddleFight_;
      isCoddleFight_ = !isIllShu_;
    }
    if (isIllShu_) {
      isCoddleFight_ = !isAutographEasy_;
    }
    if (isAutographEasy_ || isIllShu_ || isCoddleFight_) {
      isAutographEasy_ = !isIllShu_;
      isIllShu_ = !isCoddleFight_;
      isCoddleFight_ = !isAutographEasy_;
    }
    if (isAutographEasy_ && etJiggleCousin_ && isIllShu_) {
      isAutographEasy_ = !isAutographEasy_;
      etJiggleCousin_ = isAutographEasy_;
      isIllShu_ = isAutographEasy_;
    }
    noSydneyDeath_ = noSydneyDeath_ + 1;
    ayFaxStarter_ = ayFaxStarter_ + 1;
  }

  void redClosing() {
    if (ayFaxStarter_ > 0) {
      ayFaxStarter_ = ayFaxStarter_ - 1;
    }
    ayFaxStarter_ = ayFaxStarter_ + 1;
    noSydneyDeath_ = 68;
    ayFaxStarter_ = ayFaxStarter_ + 1;
    noSydneyDeath_ = noSydneyDeath_ + 1;
    noSydneyDeath_ = 22;
    isIllShu_ = etJiggleCousin_ && isAutographEasy_;
    orObeseAmazing_ = orObeseAmazing_.toUpperCase();
    if (isAutographEasy_) {
      isIllShu_ = !isCoddleFight_;
    }
    orObeseAmazing_ = orObeseAmazing_.toUpperCase();
    noSydneyDeath_ = 3;
    noSydneyDeath_ = 89;
    if (isAutographEasy_) {
      isIllShu_ = !etJiggleCousin_;
    }
    if (isCoddleFight_ || isAutographEasy_) {
      isAutographEasy_ = !isAutographEasy_;
    }
    if (isAutographEasy_) {
      isCoddleFight_ = !etJiggleCousin_;
    }
    if (isCoddleFight_ || etJiggleCousin_ || isIllShu_) {
      isCoddleFight_ = !etJiggleCousin_;
      etJiggleCousin_ = !isIllShu_;
      isIllShu_ = !isCoddleFight_;
    }
    ayFaxStarter_ = 24;
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  KayeAttachSasquatchInventionDesperateWrestling loginUserNameStyleType =
      KayeAttachSasquatchInventionDesperateWrestling.Center;

  @override
  void onInit() {
    if (e < 2) {
      KayeMineHaley().ahBeretCoddle();
      KayeMineHaley().laShackleComa();
      KayeMineHaley().beAffectionThankful();
      KayeMineHaley().asEgoBlab();
    }
    if (log2e < 1) {
      redClosing();
      hiWoosnumWithout();
    }
    super.onInit();

    KayeGogglesPlannerClosing pageConfig = kayeClosing();
    loginUserNameStyleType =
        KayeAttachSasquatchInventionDesperateWrestling.valueOf(
          pageConfig.intDef(
            "login_user_name_style_type",
            KayeAttachSasquatchInventionDesperateWrestling.Center.index,
          ),
        );
  }

  Future<void> onLogin() async {
    String name = nameController.text;
    if (name.isEmpty) {
      Fluttertoast.showToast(
        msg: "kaye_trade_attach_pursuit_farewell_invention".tr,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    String pass = passController.text;
    if (pass.isEmpty) {
      Fluttertoast.showToast(
        msg: "kaye_trade_attach_pursuit_farewell_fight".tr,
        gravity: ToastGravity.CENTER,
      );
      return;
    }

    KayeGogglesQuenchSelfish clientInfo = KAYE.deviceService.getClientInfo();

    Map<String, dynamic> params = {
      "client_info": clientInfo.toJsonString(),
      "username": name,
      "password": pass,
    };

    KayeLavaAttach? resp = await KAYE.http.rest(
      2014,
      params,
      (p0) => KayeLavaAttach.fromJson(p0),
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (resp != null) {
      KayeAttachOrder notify = KayeAttachOrder(
        KayeAttachAthenaeum.SUCC,
        respLogin: resp,
      );
      KAYE.fire(notify);
    }
  }
}
