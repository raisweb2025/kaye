import 'dart:math';
import 'kaye_tractor_perform.dart';
import 'package:get/get.dart';

import 'kaye_jelly_order_glorify.dart';

class KayeJellyOrderNothing extends Bindings {
  bool odCageyLizard_ = true;
  bool idFlatteringPetty_ = true;
  bool asMasculineTeaser_ = false;
  String goSpillDemand_ = "";

  void ad3Complaint() {
    odCageyLizard_ = idFlatteringPetty_ && asMasculineTeaser_;
    goSpillDemand_ = goSpillDemand_.toUpperCase();

    asMasculineTeaser_ = idFlatteringPetty_ && odCageyLizard_;
  }

  void atWelderBean() {
    goSpillDemand_ = goSpillDemand_.toUpperCase();

    if (idFlatteringPetty_ && asMasculineTeaser_) {
      odCageyLizard_ = !odCageyLizard_;
    }

    if (idFlatteringPetty_ && asMasculineTeaser_ && odCageyLizard_) {
      idFlatteringPetty_ = !idFlatteringPetty_;
      asMasculineTeaser_ = idFlatteringPetty_;
      odCageyLizard_ = idFlatteringPetty_;
    }
    if (asMasculineTeaser_ || odCageyLizard_) {
      odCageyLizard_ = !odCageyLizard_;
    }

    goSpillDemand_ = goSpillDemand_.toUpperCase();

    goSpillDemand_ = goSpillDemand_.toUpperCase();
    if (odCageyLizard_ || asMasculineTeaser_ || idFlatteringPetty_) {
      odCageyLizard_ = !asMasculineTeaser_;
      asMasculineTeaser_ = !idFlatteringPetty_;
      idFlatteringPetty_ = !odCageyLizard_;
    }
    goSpillDemand_ = goSpillDemand_.toUpperCase();
    if (odCageyLizard_ && idFlatteringPetty_) {
      asMasculineTeaser_ = !asMasculineTeaser_;
    }
    if (idFlatteringPetty_ && asMasculineTeaser_ && odCageyLizard_) {
      idFlatteringPetty_ = !idFlatteringPetty_;
      asMasculineTeaser_ = idFlatteringPetty_;
      odCageyLizard_ = idFlatteringPetty_;
    }
  }

  void usDevonEs() {
    if (asMasculineTeaser_ && idFlatteringPetty_) {
      odCageyLizard_ = !odCageyLizard_;
    }
    goSpillDemand_ = goSpillDemand_.toUpperCase();
    if (idFlatteringPetty_ || asMasculineTeaser_ || odCageyLizard_) {
      idFlatteringPetty_ = !asMasculineTeaser_;
      asMasculineTeaser_ = !odCageyLizard_;
      odCageyLizard_ = !idFlatteringPetty_;
    }
    if (idFlatteringPetty_ && odCageyLizard_) {
      asMasculineTeaser_ = !asMasculineTeaser_;
    }

    if (idFlatteringPetty_ && asMasculineTeaser_) {
      odCageyLizard_ = !odCageyLizard_;
    }

    goSpillDemand_ = goSpillDemand_.toUpperCase();
  }

  void haSeparateTool() {
    if (odCageyLizard_ && asMasculineTeaser_ && idFlatteringPetty_) {
      odCageyLizard_ = !odCageyLizard_;
      asMasculineTeaser_ = odCageyLizard_;
      idFlatteringPetty_ = odCageyLizard_;
    }

    asMasculineTeaser_ = idFlatteringPetty_ || odCageyLizard_;

    idFlatteringPetty_ = asMasculineTeaser_ && odCageyLizard_;

    if (asMasculineTeaser_ || idFlatteringPetty_ || odCageyLizard_) {
      asMasculineTeaser_ = !idFlatteringPetty_;
      idFlatteringPetty_ = !odCageyLizard_;
      odCageyLizard_ = !asMasculineTeaser_;
    }
  }

  @override
  void dependencies() {
    if (e < 2) {
      KayeTractorPerform().orHandCalmly();
      KayeTractorPerform().amSomedayDeath();
    }
    if (ln10 < 2) {
      atWelderBean();
      haSeparateTool();
    }
    Get.lazyPut(() => KayeJellyOrderGlorify());
  }
}
