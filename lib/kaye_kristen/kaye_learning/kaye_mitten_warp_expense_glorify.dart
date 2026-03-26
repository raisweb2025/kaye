import 'dart:math';
import 'kaye_adv_kristen.dart';
import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:get/get.dart';

import '../kaye_implant/kaye_warp_found_snug_comeback_implant.dart';
import '../kaye_goggles/kaye_warp_political_perfect_passenger_marge.dart';
import '../kaye_goggles/kaye_goggles_planner_closing.dart';
import '../kaye_goggles/kaye_sasquatch_suffice.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_political_lead_flattering.dart';
import '../kaye_classy/kaye_ui_vail.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_glorify.dart';
import '../proto/common.pb.dart';
import 'kaye_helo_expense_upon.dart';
import 'kaye_sprint_manhattan_upon.dart';
import 'kaye_delivery_vail_upon.dart';

class KayeMittenWarpExpenseGlorify extends KayeFrankGraduateGlorify {
  bool goMoistureAngle_ = false;
  String moMeAthletic_ = "";
  String ofIllBladder_ = "";
  bool etVergePaddle_ = true;
  bool amPermanentSettlement_ = true;

  void ohFaxClueless() {
    moMeAthletic_ = moMeAthletic_ + ofIllBladder_;
    ofIllBladder_ = moMeAthletic_;

    moMeAthletic_ = moMeAthletic_ + ofIllBladder_;
    ofIllBladder_ = moMeAthletic_;
  }

  void weCallerAi() {
    moMeAthletic_ = moMeAthletic_ + ofIllBladder_;
    ofIllBladder_ = moMeAthletic_;

    etVergePaddle_ = amPermanentSettlement_ || goMoistureAngle_;
    if (etVergePaddle_ || amPermanentSettlement_ || goMoistureAngle_) {
      etVergePaddle_ = !amPermanentSettlement_;
      amPermanentSettlement_ = !goMoistureAngle_;
      goMoistureAngle_ = !etVergePaddle_;
    }
    if (amPermanentSettlement_ || goMoistureAngle_) {
      goMoistureAngle_ = !goMoistureAngle_;
    }
  }

  void ohDwellBig() {
    moMeAthletic_ = moMeAthletic_ + ofIllBladder_;
    ofIllBladder_ = moMeAthletic_;
    if (goMoistureAngle_) {
      amPermanentSettlement_ = !etVergePaddle_;
    }

    if (amPermanentSettlement_ || goMoistureAngle_) {
      goMoistureAngle_ = !goMoistureAngle_;
    }

    moMeAthletic_ = ofIllBladder_ + moMeAthletic_;
    if (etVergePaddle_ || amPermanentSettlement_) {
      amPermanentSettlement_ = !amPermanentSettlement_;
    }

    if (etVergePaddle_ || amPermanentSettlement_) {
      amPermanentSettlement_ = !amPermanentSettlement_;
    }
  }

  final String kaye_anything_fax = "kaye_anything_fax";
  final String kaye_amazing_found_snug = "kaye_amazing_found_snug";
  final String kaye_amazing_is_delivery = "kaye_amazing_is_delivery";

  @override
  final kayeBaselineInvention = KayeFortress.KayeMittenWarpExpensePlanner;
  late Timer _timer;

  int durationSeconds = 1000;

  RxInt scaleStatus = 0.obs;

  int maxFreeCount = -1;

  bool isEveryDayFree = true;

  RxBool isVIP = false.obs;

  RxInt remainingFreeCount = 5.obs;

  StreamSubscription? _updateFreeCountSubscription;
  StreamSubscription? _updateVipSubscription;

  List<KayeWarpSasquatch> matchUserList = [];

  bool isRegionMatchFirst20sChargeMode = false;

  int regionMatchFirst20sChargeModeMatchCallCost = 0;

  @override
  void onInit() {
    if (e < 2) {
      KayeAdvKristen().mmGeneEnter();
      KayeAdvKristen().ifChadLobster();
      KayeAdvKristen().emTractorMonroe();
      KayeAdvKristen().abOnPatsy();
    }
    if (log10e / 2 < 0.1) {
      ohDwellBig();
      weCallerAi();
    }
    super.onInit();
    _timer = Timer.periodic(Duration(milliseconds: durationSeconds + 100), (
      timer,
    ) {
      scaleStatus.value = scaleStatus.value == 1 ? 0 : 1;
      update([kaye_anything_fax]);
    });

    _kayeChaoticPlannerHonk();

    _updateFreeCountSubscription = KAYE
        .listen<KayeWarpFoundSnugComebackImplant>((event) {
          _kayeChaoticFoundSnug();
        });

    _updateVipSubscription = KAYE.listen<UserRuntimePSH>((event) {
      isVIP.value = KAYE.kayeSasquatchTrish?.vip() ?? false;
      update([kaye_amazing_is_delivery]);
    });
    isVIP.value = KAYE.kayeSasquatchTrish?.vip() ?? false;

    _kayeChaoticFoundSnug();

    _kayeSonogramBeginningWarpSasquatchPassenger();
  }

  @override
  void onClose() {
    if (pi < 1) {
      KayeAdvKristen().ifChadLobster();
      KayeAdvKristen().abOnPatsy();
      KayeAdvKristen().soScanSuperhero();
      KayeAdvKristen().inUniversalJewelry();
    }
    if (pi < 1) {
      ohFaxClueless();
      ohDwellBig();
    }
    _updateFreeCountSubscription?.cancel();
    _updateVipSubscription?.cancel();
    _timer.cancel();
    super.onClose();
  }

  _kayeChaoticPlannerHonk() {
    KayeGogglesPlannerClosing pageConfig = kayeClosing();
    maxFreeCount = pageConfig.intDef("free_count", -1);
    isEveryDayFree = pageConfig.boolDef("is_every_day_free", true);

    isRegionMatchFirst20sChargeMode = KAYE.kayeClosing
        .isRegionMatchFirst20sChargeMode();
    regionMatchFirst20sChargeModeMatchCallCost = KAYE.kayeClosing
        .regionMatchFirst20sChargeModeMatchCostCoins();
  }

  _kayeChaoticFoundSnug() {
    if (maxFreeCount >= 0) {
      remainingFreeCount.value = KAYE.kayeAmongst.getMatchRemainingFreeCount(
        maxFreeCount: maxFreeCount,
        isEveryDayFree: isEveryDayFree,
      );
      update([kaye_amazing_found_snug]);
    }
  }

  _kayeNamasteFoundSnug() {
    KAYE.kayeAmongst.setMatchRemainingFreeCount(remainingFreeCount.value);
  }

  Future<void> _kayeGoToHeloPlanner() async {
    KayeHeloExpenseUpon argument = KayeHeloExpenseUpon(matchUserList);
    KAYE.toNamed(KayeFortress.KayeHeloExpensePlanner, arguments: argument);
  }

  void onKayePlaybookElectrify() {
    if (sqrt1_2 < 0.3) {
      KayeAdvKristen().abOnPatsy();
      KayeAdvKristen().ifChadLobster();
      KayeAdvKristen().siCableGazebo();
    }
    if (log10e / 2 < 0.1) {
      ohDwellBig();
      weCallerAi();
    }

    if (isRegionMatchFirst20sChargeMode) {
      if (KAYE.kayeSasquatchTrish!.balance <
          regionMatchFirst20sChargeModeMatchCallCost) {
        KayeUiVail.kayePuddingLagVail(fromType: PayFromType.FROM_MATCHING);
      } else {
        _kayeGoToHeloPlanner();
      }
      return;
    }

    if (maxFreeCount <= 0) {
      _kayeGoToHeloPlanner();
      return;
    }

    bool isVip = KAYE.kayeSasquatchTrish!.vip();
    if (isVip) {
      _kayeGoToHeloPlanner();
      return;
    }

    if (remainingFreeCount.value > 0) {
      remainingFreeCount.value--;
      update([kaye_amazing_found_snug]);
      _kayeNamasteFoundSnug();
      _kayeGoToHeloPlanner();
    } else {
      KAYE.toNamed(
        KayeFortress.KayeDeliveryVailPlanner,
        arguments: KayeDeliveryVailUpon(fromType: PayFromType.FROM_MATCHING),
      );
    }
  }

  void _kayeSonogramBeginningWarpSasquatchPassenger() {
    KAYE.http
        .rest(
          KAYE.kayeClosing.isKayeZucchiniDedicate() ? 5015 : 5017,
          {"count": 5},
          (p0) => KayeWarpPoliticalPassengerMarge.fromJson(p0),
          showLoadingUI: false,
          autoToastOnError: false,
        )
        .then((value) {
          if (value == null || KayeWrestlingBarnacle.isEmpty(value.list)) {
            if (KayeWrestlingBarnacle.isEmpty(matchUserList)) {
              Future.delayed(const Duration(milliseconds: 3000), () {
                _kayeSonogramBeginningWarpSasquatchPassenger();
              });
            }
            return;
          }

          KayeWarpSasquatch vo = value.list!.first;

          if (vo.user == null || vo.country == null) {
            if (KayeWrestlingBarnacle.isEmpty(matchUserList)) {
              Future.delayed(const Duration(milliseconds: 3000), () {
                _kayeSonogramBeginningWarpSasquatchPassenger();
              });
            }
            return;
          }

          matchUserList = value.list!;
        });
  }
}
