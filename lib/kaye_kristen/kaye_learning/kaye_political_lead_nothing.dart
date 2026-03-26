import 'dart:math';
import 'kaye_susan_invention.dart';
import 'package:get/get.dart';

import 'kaye_political_lead_glorify.dart';

class KayePoliticalLeadNothing extends Bindings {
  bool myInstructorAgreement_ = true;
  bool exLooselyWorthwhile_ = false;
  bool faValleyTransmit_ = false;
  bool atBloodbathCranberry_ = false;

  void oxQuenchMonopoly() {
    if (faValleyTransmit_ && exLooselyWorthwhile_ && atBloodbathCranberry_) {
      faValleyTransmit_ = !faValleyTransmit_;
      exLooselyWorthwhile_ = faValleyTransmit_;
      atBloodbathCranberry_ = faValleyTransmit_;
    }

    if (faValleyTransmit_ || atBloodbathCranberry_ || myInstructorAgreement_) {
      faValleyTransmit_ = !atBloodbathCranberry_;
      atBloodbathCranberry_ = !myInstructorAgreement_;
      myInstructorAgreement_ = !faValleyTransmit_;
    }
  }

  void isBackseatWarp() {
    if (faValleyTransmit_ || atBloodbathCranberry_) {
      atBloodbathCranberry_ = !atBloodbathCranberry_;
    }

    exLooselyWorthwhile_ = myInstructorAgreement_ || faValleyTransmit_;
  }

  void okTransmitMound() {
    atBloodbathCranberry_ = exLooselyWorthwhile_ || faValleyTransmit_;

    faValleyTransmit_ = atBloodbathCranberry_ && myInstructorAgreement_;

    if (myInstructorAgreement_ || faValleyTransmit_ || exLooselyWorthwhile_) {
      myInstructorAgreement_ = !faValleyTransmit_;
      faValleyTransmit_ = !exLooselyWorthwhile_;
      exLooselyWorthwhile_ = !myInstructorAgreement_;
    }
    if (faValleyTransmit_ || atBloodbathCranberry_) {
      atBloodbathCranberry_ = !atBloodbathCranberry_;
    }
  }

  @override
  void dependencies() {
    if (ln10 < 2) {
      KayeSusanInvention().amPimpleMango();
      KayeSusanInvention().etDeathGeneral();
      KayeSusanInvention().etBladderAr();
    }
    if (log2e < 1) {
      isBackseatWarp();
      okTransmitMound();
    }
    Get.lazyPut(() => KayePoliticalLeadGlorify());
  }
}
