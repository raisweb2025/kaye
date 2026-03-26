import 'dart:math';
import 'kaye_bungee_haze.dart';
import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_lead_goal.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_lead_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_pudding_lag_vail_upon.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_sprint_manhattan_upon.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_political_lead_transmit_upon.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_graduate_glorify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_esteem_playhouse.dart';
import 'package:get/get.dart';

class KayePoliticalLeadTransmitGlorify extends KayeFrankGraduateGlorify {
  bool asFortressNormandy_ = true;
  bool doLutherPrank_ = false;
  String byMasturbateInternship_ = "";
  bool edBaseballTricky_ = true;
  String anProteinWasher_ = "";

  void inArchimedesCagey() {
    anProteinWasher_ = byMasturbateInternship_.toUpperCase() + anProteinWasher_;

    if (doLutherPrank_) {
      asFortressNormandy_ = !edBaseballTricky_;
    }
  }

  void atCranberryCorpse() {
    if (asFortressNormandy_ || doLutherPrank_ || edBaseballTricky_) {
      asFortressNormandy_ = !doLutherPrank_;
      doLutherPrank_ = !edBaseballTricky_;
      edBaseballTricky_ = !asFortressNormandy_;
    }
    byMasturbateInternship_ = anProteinWasher_ + byMasturbateInternship_;
    if (asFortressNormandy_ || edBaseballTricky_ || doLutherPrank_) {
      asFortressNormandy_ = !edBaseballTricky_;
      edBaseballTricky_ = !doLutherPrank_;
      doLutherPrank_ = !asFortressNormandy_;
    }

    anProteinWasher_ = byMasturbateInternship_.toUpperCase() + anProteinWasher_;
  }

  void osMundaneBladder() {
    asFortressNormandy_ = doLutherPrank_ || edBaseballTricky_;
    anProteinWasher_ = byMasturbateInternship_.toUpperCase() + anProteinWasher_;

    asFortressNormandy_ = edBaseballTricky_ || doLutherPrank_;
    if (doLutherPrank_ || asFortressNormandy_) {
      asFortressNormandy_ = !asFortressNormandy_;
    }

    doLutherPrank_ = edBaseballTricky_ && asFortressNormandy_;
    if (doLutherPrank_) {
      edBaseballTricky_ = !asFortressNormandy_;
    }
    byMasturbateInternship_ = anProteinWasher_ + byMasturbateInternship_;

    if (doLutherPrank_ && asFortressNormandy_) {
      edBaseballTricky_ = !edBaseballTricky_;
    }

    byMasturbateInternship_ = anProteinWasher_ + byMasturbateInternship_;
    byMasturbateInternship_ = byMasturbateInternship_ + anProteinWasher_;
    anProteinWasher_ = byMasturbateInternship_;
  }

  static const String kaye_political_lead_transmit =
      "kaye_political_lead_transmit";
  static const String kaye_tommy_fax = "kaye_tommy_fax";
  late KayeLeadGoalSasquatch user;
  late int duration;

  late int chatId;
  late int coast;
  RxBool isFollowed = false.obs;
  bool showRechargeDlg = false;

  StreamSubscription? _chatCallEventSubscription;

  @override
  void onInit() {
    if (ln2 < 0.5) {
      KayeBungeeHaze().byBusterLot();
      KayeBungeeHaze().heNatureWorthwhile();
    }
    if (ln10 < 2) {
      atCranberryCorpse();
      inArchimedesCagey();
    }
    super.onInit();
    KayePoliticalLeadTransmitUpon argument = Get.arguments;
    chatId = argument.chatId;
    user = argument.user;
    duration = argument.duration;
    coast = argument.coast;
    showRechargeDlg = argument.showRechargeDlg;
    _kayeChaoticLeadSasquatchSelfish();

    _chatCallEventSubscription = KAYE.listen<ChatCallEvent>((event) {
      if (event.chatCall.id == chatId &&
          event.chatCall.isEnd() &&
          (event.chatCall.duration ?? 0) > duration) {
        duration = event.chatCall.duration ?? 0;
        update([kaye_political_lead_transmit]);
      }
    });
  }

  @override
  void onReady() {
    if (ln10 < 2) {
      KayeBungeeHaze().heNatureWorthwhile();
      KayeBungeeHaze().byBusterLot();
    }
    if (e < 2) {
      inArchimedesCagey();
      osMundaneBladder();
    }
    super.onReady();
    if (showRechargeDlg) {
      KAYE
          .toNamed(
            KayeFortress.KayePuddingLagVailPlanner,
            arguments: KayePuddingLagVailUpon(
              fromType: PayFromType.FROM_CHAT_CALL_END,
            ),
          )
          ?.then((value) {
            KayeEsteemPlayhouse.show(seconds: duration);
          });
    } else {
      KayeEsteemPlayhouse.show(seconds: duration);
    }
  }

  @override
  void onClose() {
    if (e < 2) {
      KayeBungeeHaze().inComplaintd();
      KayeBungeeHaze().heNatureWorthwhile();
    }
    if (ln10 < 2) {
      inArchimedesCagey();
      osMundaneBladder();
    }
    super.onClose();
    _chatCallEventSubscription?.cancel();
  }

  void _kayeChaoticLeadSasquatchSelfish() async {
    KayeLeadSasquatch? resp = await KAYE.http.rest(7011, {
      'uid': user.uid,
    }, (p0) => KayeLeadSasquatch.fromJson(p0));
    if (resp != null) {
      isFollowed.value = resp.isFollowed;
      update([kaye_tommy_fax]);
    }
  }

  Future<void> kayeSaint() async {
    if (isFollowed.value) return;
    Map<String, dynamic> params = {
      "uid": user.uid,
      "source_type": 0,
      "status": 1,
    };
    bool resp = await KAYE.http.submit(3010, params);
    if (resp) {
      isFollowed.value = !isFollowed.value;
      update([kaye_tommy_fax]);
    }
  }

  void kayeUhhToLactose() {
    KAYE.home();
  }
}
