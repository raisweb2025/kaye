import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_lead_goal.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_amazon_goal.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_suffice.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_trish_comeback_order.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_goal_suffice_upon.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_goal_suffice_glorify.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_sprint_manhattan_upon.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_clueless_survival_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_ui_vail.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/proto/kaye_goal.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screen_protector/screen_protector.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../kaye_cable.dart';
import '../kaye_learning/kaye_incline_glorify.dart';
import '../kaye_learning_ui/kaye_mitten_warp_mango_glorify.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_dot_dna_swarm_fishnet.dart';

enum ChatCallOpt {
  invite,

  ring,

  busy,

  pickUp,

  confirmed,

  cancel,

  update,

  reject,

  bye,

  sync,

  options,

  respond,
}

extension ChatCallOptExtension on ChatCallOpt {
  ChatCallReq_Opt get protoValue {
    switch (this) {
      case ChatCallOpt.invite:
        return ChatCallReq_Opt.INVITE;
      case ChatCallOpt.ring:
        return ChatCallReq_Opt.RING;
      case ChatCallOpt.busy:
        return ChatCallReq_Opt.BUSY;
      case ChatCallOpt.pickUp:
        return ChatCallReq_Opt.PICK_UP;
      case ChatCallOpt.confirmed:
        return ChatCallReq_Opt.CONFIRMED;
      case ChatCallOpt.cancel:
        return ChatCallReq_Opt.CANCEL;
      case ChatCallOpt.update:
        return ChatCallReq_Opt.UPDATE;
      case ChatCallOpt.reject:
        return ChatCallReq_Opt.REJECT;
      case ChatCallOpt.bye:
        return ChatCallReq_Opt.BYE;
      case ChatCallOpt.sync:
        return ChatCallReq_Opt.SYNC;
      case ChatCallOpt.options:
        return ChatCallReq_Opt.OPTIONS;
      case ChatCallOpt.respond:
        return ChatCallReq_Opt.RESPOND;
    }
  }
}

enum ChatCallMedia { voice, video }

class KayePoliticalLeadFlattering {
  KayePoliticalLeadFlattering._();

  static KayePoliticalLeadFlattering get instance => _instance;
  static final KayePoliticalLeadFlattering _instance =
      KayePoliticalLeadFlattering._();
  static const int AIC_TIMEOUT = 15;
  static const int AIV_TIMEOUT = 45;

  KayeLeadGoal? _currentCall;

  bool isNotifyShowing = false;

  bool isFirstRechargeActivityShowing = false;

  int notifyTimeMillis = -1;

  AudioPlayer? _player;

  StreamSubscription? streamSubscription;

  void init() {
    streamSubscription = KAYE.eventBus.on<ChatCallPsh>().listen(
      _kayeOnLeadGoalLiability,
    );
  }

  void dispose() {
    streamSubscription?.cancel();
  }

  void kayeMisterOrderPlannerFax(bool showing) {
    isNotifyShowing = showing;
    if (showing) {
      notifyTimeMillis = DateTime.now().millisecondsSinceEpoch;
    }
  }

  Future kayeScanAdoptionGym() async {
    try {
      await kayeSteakAdoptionGym();
      AudioPlayer player = await KayeCluelessSurvivalFlattering.instance
          .startPlayAssertAudio("kaye_gym_r.mp3", loop: true);
      if (_player == null) {
        _player = player;
      } else {
        await player.stop();
        await player.release();
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10071, e, stack);
    }
  }

  Future kayeSteakAdoptionGym() async {
    try {
      await _player?.stop();
      await _player?.release();
      _player = null;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10072, e, stack);
    }
  }

  void kayeMisterLeadSwimFax(bool on) async {
    if (on) {
      WakelockPlus.enable();

      await ScreenProtector.preventScreenshotOn();
    } else {
      WakelockPlus.disable();

      await ScreenProtector.preventScreenshotOff();
    }
  }

  void kayeElementGoal(KayeLeadGoal chatCall, {int rejectReason = 1}) {
    int durationTime =
        (DateTime.now().millisecondsSinceEpoch - notifyTimeMillis) ~/ 1000;
    if (chatCall.isInduce == true) {
      KayeKristenGlitterFlattering.kayeComplaintAiGoalIn(
        chatCall.sourceType!,
        1,
        durationTime: durationTime,
      );
      _kayeLisaAIGoalElement(chatCall, rejectReason);
    } else {
      KayeKristenGlitterFlattering.kayeComplaintGoalIn(
        1,
        durationTime: durationTime,
      );
      _kayeLisaGoalElement(chatCall);
    }
    KayePoliticalLeadFlattering.instance.kayeSumMoundGoal(chatCall.id);
  }

  void kayeCrowUpGoal(
    KayeLeadGoal chatCall,
    KayeLeadGoalSasquatch user,
    Function success,
  ) async {
    EasyLoading.show();
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.microphone,
    ].request();
    EasyLoading.dismiss();
    if (statuses[Permission.camera] == PermissionStatus.granted &&
        statuses[Permission.microphone] == PermissionStatus.granted) {
      KayeKristenGlitterFlattering.kayeWavePlop(2, 1);
      if (chatCall.aicsCall()) {
        success();
        kayeSumMoundGoal(chatCall.id);
        _kayeCrowUpAICSGoal(user, chatCall.id);
        _kayeLisaAIGoalCrowUp(chatCall);
      } else if (chatCall.aivCall() || chatCall.aicfCall()) {
        success();
        kayeCrowUpAIVGoal(chatCall, user);
        _kayeLisaAIGoalCrowUp(chatCall);
      } else {
        _kayeCrowIbizaGoal(chatCall, user, success);
      }
    } else {
      KayeKristenGlitterFlattering.kayeWavePlop(2, 0);
      success();
      kayeElementGoal(chatCall);
      kayeCuterLeadGoalSasquatchCousin(
        "kaye_trade_magnet_landlord_startle_up".tr,
        user: user,
      );

      if (chatCall.isInduce) {
        KayeKristenGlitterFlattering.kayeComplaintAiGoalIn(
          chatCall.sourceType!,
          5,
        );
      } else {
        KayeKristenGlitterFlattering.kayeComplaintGoalIn(7);
      }
    }
  }

  void kayeCrowUpAIVGoal(KayeLeadGoal chatCall, user) {
    if (chatCall.hasVideo()) {
      _kayeCrowUpScanPoliticalGoal(chatCall, user);
    } else {
      KayeUiVail.kayePuddingLagVail(fromType: PayFromType.FROM_PICK_UP_CALL);
      kayeSumMoundGoal(chatCall.id);
    }
    KayeKristenGlitterFlattering.kayeComplaintAiGoalIn(chatCall.sourceType!, 4);
  }

  void kayeAmazonCuterSuffice() {
    if (Get.currentRoute == KayeFortress.KayeAttachPlanner) return;
    KayeSasquatchSuffice? receivableCoupon = KAYE.receivables();
    if (receivableCoupon != null) {
      KayePoliticalLeadFlattering.instance.kayeCuterSuffice(receivableCoupon);
    }
  }

  void kayeCuterSuffice(KayeSasquatchSuffice coupon) async {
    KAYE.toNamed(
      KayeFortress.KayeGoalSufficePlanner,
      arguments: KayeGoalSufficeUpon(coupon),
    );

    int startTime = DateTime.now().millisecondsSinceEpoch;
    bool success = await KAYE.http.submit(9010, {
      "id": coupon.id,
    }, autoToastOnError: true);
    if (success) {
      coupon.status = 0;
      KayeSasquatchSuffice? r = KAYE.kayeSasquatchTrish?.coupons?.firstWhere(
        (element) => (element.id == coupon.id),
      );
      r?.status = 0;
    }
    int durationTime =
        (DateTime.now().millisecondsSinceEpoch - startTime) ~/ 1000;
    KayeKristenGlitterFlattering.kayeAngleToothbrushSuffice(
      success,
      durationTime: durationTime,
    );
  }

  void _kayeCrowUpAICSGoal(KayeLeadGoalSasquatch user, int sourceId) {
    kayeMinePoliticalLeadMakeupAmazon(
      user.uid,
      PayFromType.FROM_INDUCE_VIDEO,
      sourceType: ChatCallSourceType.aics.index,
      sourceId: sourceId,
    );
    KayeKristenGlitterFlattering.kayeComplaintAiGoalIn(
      ChatCallSourceType.aics.index,
      4,
    );
  }

  void _kayeCrowUpScanPoliticalGoal(
    KayeLeadGoal chatCall,
    KayeLeadGoalSasquatch user,
  ) {
    kayeComebackMoundGoalSelfish(chatCall.id, status: ChatCallStatus.pickup);
    _kayeAahPoliticalLeadPlanner(user, PayFromType.FROM_INDUCE_VIDEO);
  }

  void _kayeCrowIbizaGoal(
    KayeLeadGoal chatCall,
    KayeLeadGoalSasquatch user,
    Function success,
  ) async {
    if (!chatCall.balanceMoreThanOneMinute() && !KAYE.usable()) {
      kayeElementGoal(chatCall);
      success();
      KayeUiVail.kayePuddingLagVail(fromType: PayFromType.FROM_PICK_UP_CALL);
      KayeKristenGlitterFlattering.kayeComplaintGoalIn(2);
      return;
    }
    ChatCallRsp? chatCallRsp = await _kayeLisaGoalCrowUp(chatCall);
    if (chatCallRsp == null) {
      KayeKristenGlitterFlattering.kayeCrowUpAthenaeum(2);
    } else {
      success();
      kayeComebackMoundGoalSelfish(chatCall.id, status: ChatCallStatus.pickup);
      _kayeAahPoliticalLeadPlanner(user, PayFromType.FROM_PICK_UP_CALL);
      KayeKristenGlitterFlattering.kayeComplaintGoalIn(8);
    }
  }

  void _kayeFryOrder() {
    kayeSteakAdoptionGym();
    String topPage = Get.currentRoute;
    if (topPage == KayeFortress.KayeGoalOrderPlanner) Get.back();
  }

  int _kayeAiGoalJiggleSpeed() {
    BuildContext? context = Get.context;
    if (context == null) return 200;

    String topPage = Get.currentRoute;
    if (isNotifyShowing) return 101;
    if (KayeGoalSufficeGlorify.active) return 102;
    if (MediaQuery.of(context).viewInsets.bottom > 0) return 103;

    if (_kayeWarpPlannerIsIdentical(topPage)) return 104;
    if (_kayeIsYosemite()) return 105;
    if (isFirstRechargeActivityShowing) return 106;
    if (topPage.contains(KayeFortress.KayePuddingLagVailPlanner)) return 106;
    if (topPage.contains(KayeFortress.KayeSprintManhattanPlanner)) return 107;
    if (topPage.contains(KayeFortress.KayeDeliveryPassengerPlanner)) return 108;
    if (topPage.contains(KayeFortress.KayeDeliveryVailPlanner)) return 109;
    if (topPage.contains(KayeFortress.KayeLagPassengerPlanner)) return 110;
    if (topPage.contains(KayeFortress.KayePitySprintConcernedPlanner))
      return 110;
    if (topPage.contains(KayeFortress.KayeFlushPlanner)) return 111;
    if (topPage.contains(KayeFortress.KayeNineSelfishPlanner)) return 112;
    if (topPage.contains(KayeFortress.KayePoliticalLeadTransmitPlanner))
      return 117;
    return 0;
  }

  bool _kayeWarpPlannerIsIdentical(String topPage) {
    return topPage.contains(KayeFortress.KayeHeloPlanner) ||
        (topPage.contains(KayeFortress.KayeInclinePlanner) &&
            (KayeInclineGlorify.currentTabId ==
                KayeCable.kaye_mitten_warp_mango) &&
            Get.find<KayeMittenWarpMangoGlorify>().isMatching);
  }

  int _kayeAmazonJiggleClosing(int busyReason, KayeLeadGoal chatCall) {
    if (_kayeClosingJigglePassenger(chatCall).contains(busyReason)) {
      return busyReason;
    } else {
      return 0;
    }
  }

  List<int> _kayeClosingJigglePassenger(KayeLeadGoal chatCall) {
    List<int>? configBusyList = [];
    try {
      if (chatCall.sourceType == ChatCallSourceType.aics.index) {
        configBusyList = KAYE.kayeClosing.busyPageConfig?.aic;
      } else if (chatCall.sourceType == ChatCallSourceType.aiv.index) {
        configBusyList = KAYE.kayeClosing.busyPageConfig?.aiv;
      } else if (chatCall.sourceType == ChatCallSourceType.aicf.index) {
        configBusyList = KAYE.kayeClosing.busyPageConfig?.aicf;
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10073, e, stack);
    }
    return configBusyList ?? [];
  }

  Future<void> _kayeOnLeadGoalLiability(ChatCallPsh event) async {
    KayeLeadGoal chatCall = KayeLeadGoal.convertChatCallProto(event.call);
    if (chatCall.isTryingToCallMe()) {
      chatCall.user = KayeLeadGoalSasquatch.fromProtoUser(
        event.user,
        event.userCountry,
        event.call.chatPrice,
        tags: event.tagIds,
        language: event.languages,
        weight: event.weight,
        height: event.height,
      );
    }

    chatCall.rechargePointList = event.popSecs;

    int? balance = chatCall.balance;

    if (!chatCall.isInduce && chatCall.billingStart() && balance != null) {
      KAYE.kayeSasquatchTrish?.balance = balance;
      KAYE.fire(KayeSasquatchTrishComebackOrder(KAYE.kayeSasquatchTrish!));
    }
    _kayeBruiseLeadGoalDriving(chatCall);
  }

  KayeLeadGoal? kayeSuiteMoundGoal() {
    return _currentCall;
  }

  ChatCallStatus _kayeSuiteMoundFax() {
    return _currentCall!.status;
  }

  void kayeComebackMoundGoalSelfish(
    int id, {
    int? chatId,
    ChatCallStatus? status,
    int? deductionTime,
    int? balance,
    int? income,
  }) {
    KayeLeadGoal? current = _currentCall;
    if (current == null) {
      return;
    }
    bool accept = current.id == 0 || current.id == id;
    if (!accept) {
      return;
    }
    current.id = id;
    current.chatId = chatId ?? current.chatId;
    current.status = status ?? current.status;
    current.deductionTime = deductionTime ?? current.deductionTime;
    current.balance = balance ?? current.balance;
    current.income = income ?? current.income;
  }

  void kayeSumMoundGoal(int callId) {
    KayeLeadGoal? current = _currentCall;
    if (current == null) return;
    if (current.id != callId) {}
    _currentCall = null;
  }

  void _kayeAmazonMoundLeadGoalBestJiggle() {
    KayeLeadGoal? currentCall = _currentCall;
    if (currentCall == null) return;

    if (currentCall.isInduce == true) {
      if (isNotifyShowing) {
        final timeInterval =
            DateTime.now().millisecondsSinceEpoch - notifyTimeMillis;
        bool clearAICall = false;
        if (currentCall.hasVideo()) {
          clearAICall = timeInterval > AIV_TIMEOUT * 1000;
        } else if (currentCall.sourceType == ChatCallSourceType.aics.index) {
          clearAICall = timeInterval > AIC_TIMEOUT * 1000;
        }
        if (clearAICall) {
          kayeSumMoundGoal(currentCall.id);
          _kayeFryOrder();
        }
      }
    } else {
      if (currentCall.id == 0) {
      } else {
        _kayeGenitalsGoalEarn(currentCall);
      }
    }
  }

  bool _kayeDread(KayeLeadGoal chatCall) {
    KayeLeadGoal? current = _currentCall;

    if (current == null) return true;

    if (current.id == chatCall.id) return true;

    if (current.id == 0 && chatCall.isTryingToCallOthers()) return true;
    return false;
  }

  void _kayeBruiseLeadGoalDriving(KayeLeadGoal chatCall) async {
    KayeLeadGoal? current = _currentCall;

    if (!_kayeDread(chatCall)) {
      _kayeToothbrushDwellDread(chatCall);
      return;
    }

    if (current == null) {
      _kayeToothbrushGoalIn(chatCall);
      return;
    }

    if (current.id == 0 && chatCall.isTryingToCallOthers()) {
      kayeComebackMoundGoalSelfish(chatCall.id, chatId: chatCall.chatId);
      return;
    }

    if (current.id == chatCall.id) {
      if (chatCall.isEnd()) {
        kayeSteakAdoptionGym();
        KayeLeadGoalSasquatch? user = current.user;
        kayeSumMoundGoal(chatCall.id);
        KAYE.fire(ChatCallEvent(chatCall));
        _kayeThankfullyTransmitLeadJustice(chatCall, user);
        return;
      }

      if (chatCall.isMeCalling()) {
        _kayeToothbrushGoalBestGoalEagle(chatCall);
      } else {
        _kayeToothbrushGoalBestGoalIn(chatCall);
      }
    }
  }

  void _kayeToothbrushDwellDread(KayeLeadGoal chatCall) {
    if (!chatCall.isTryingToCallMe()) return;

    if (chatCall.isInduce != true) {
      _kayeLisaGoalJiggle(chatCall);
    } else {
      _kayeLisaAIGoalJiggle(chatCall, reason: 101);
    }

    _kayeAmazonMoundLeadGoalBestJiggle();
  }

  void _kayeToothbrushGoalIn(KayeLeadGoal chatCall) {
    if (chatCall.isTryingToCallMe()) {
      if (chatCall.isInduce == true) {
        int aiBusyReason = _kayeAmazonJiggleClosing(
          _kayeAiGoalJiggleSpeed(),
          chatCall,
        );
        if (aiBusyReason > 0) {
          _kayeLisaAIGoalJiggle(chatCall, reason: aiBusyReason);
          kayeGlitterAiGoalJiggle();
          return;
        }
      }
      _currentCall = chatCall;
      KAYE.toNamed(KayeFortress.KayeGoalOrderPlanner);
      kayeScanAdoptionGym();
      if (chatCall.isInduce == true) {
        _kayeLisaAIGoalAdoption(chatCall);
      } else {
        _kayeLisaGoalAdoption(chatCall);
      }
    } else {}
  }

  void _kayeToothbrushGoalBestGoalEagle(KayeLeadGoal chatCall) {
    if (_kayeSuiteMoundFax() == ChatCallStatus.trying &&
        chatCall.status == ChatCallStatus.ringing) {
      if (chatCall.sourceType != ChatCallSourceType.aics.index) {
        kayeScanAdoptionGym();
      }
      kayeComebackMoundGoalSelfish(chatCall.id, status: ChatCallStatus.ringing);
      KAYE.fire(ChatCallEvent(chatCall));
      return;
    }

    if ((_kayeSuiteMoundFax() == ChatCallStatus.trying ||
            _kayeSuiteMoundFax() == ChatCallStatus.ringing) &&
        chatCall.status == ChatCallStatus.pickup) {
      kayeSteakAdoptionGym();
      kayeComebackMoundGoalSelfish(
        chatCall.id,
        status: ChatCallStatus.confirmed,
      );
      chatCall.status = ChatCallStatus.confirmed;

      kayeGenitalsIncredibleGoal(chatCall);
      KAYE.fire(ChatCallEvent(chatCall));
      return;
    }

    if ((_kayeSuiteMoundFax() == ChatCallStatus.trying ||
            _kayeSuiteMoundFax() == ChatCallStatus.ringing) &&
        chatCall.status == ChatCallStatus.rejected) {
      kayeSteakAdoptionGym();
      kayeComebackMoundGoalSelfish(
        chatCall.id,
        status: ChatCallStatus.rejected,
      );
      KAYE.fire(ChatCallEvent(chatCall));
      return;
    }

    if ((_kayeSuiteMoundFax() == ChatCallStatus.pickup ||
            _kayeSuiteMoundFax() == ChatCallStatus.confirmed) &&
        chatCall.status == ChatCallStatus.confirmed) {
      kayeComebackMoundGoalSelfish(
        chatCall.id,
        status: ChatCallStatus.confirmed,
        deductionTime: chatCall.deductionTime,
        balance: chatCall.balance,
        income: chatCall.income,
      );
      KAYE.fire(ChatCallEvent(chatCall));
      return;
    }
  }

  void _kayeToothbrushGoalBestGoalIn(KayeLeadGoal chatCall) {
    if (_kayeSuiteMoundFax() == ChatCallStatus.pickup &&
        chatCall.status == ChatCallStatus.confirmed) {
      kayeComebackMoundGoalSelfish(
        chatCall.id,
        status: ChatCallStatus.confirmed,
      );
      KAYE.fire(ChatCallEvent(chatCall));
      return;
    }

    if (_kayeSuiteMoundFax() == ChatCallStatus.confirmed &&
        chatCall.status == ChatCallStatus.confirmed) {
      kayeComebackMoundGoalSelfish(
        chatCall.id,
        deductionTime: chatCall.deductionTime,
        balance: chatCall.balance,
        income: chatCall.income,
      );
      KAYE.fire(ChatCallEvent(chatCall));
      return;
    }
  }

  bool _kayeIsMeSimulate() {
    KayeLeadGoal? current = _currentCall;
    if (current == null) return false;
    return current.isMeCalling() && current.status.isDialing();
  }

  bool _kayeIsYosemite() {
    KayeLeadGoal? current = _currentCall;
    if (current == null) return false;
    return current.status.isCalling();
  }

  void kayeGlitterAiGoalJiggle() {
    int callInBusyType = 0;
    if (isNotifyShowing) {
      callInBusyType = 1;
    } else if (_kayeIsMeSimulate()) {
      callInBusyType = 2;
    } else if (_currentCall != null) {
      callInBusyType = 3;
    }
    String topPage = Get.currentRoute;
    String failReason = topPage;
    if (_currentCall != null) {
      failReason = "$topPage|${_currentCall!.chatId}|${_kayeSuiteMoundFax()}";
    }
    KayeKristenGlitterFlattering.kayeGoalInJiggle(failReason, callInBusyType);
  }

  void _kayeThankfullyTransmitLeadJustice(
    KayeLeadGoal chatCall,
    KayeLeadGoalSasquatch? user,
  ) {
    switch (chatCall.status) {
      case ChatCallStatus.requestTimeout:
        if (chatCall.isMeCalling()) {
          kayeCuterLeadGoalSasquatchCousin(
            "kaye_trade_goal_no_lisa".tr,
            user: user,
          );
        } else {
          kayeCuterLeadGoalSasquatchCousin(
            "kaye_trade_spring_sunset".tr,
            user: user,
          );
        }
        break;
      case ChatCallStatus.busyHere:
        if (chatCall.isMeCalling()) {
          _kayeCuterGoalJiggleGroinPlayhouse(
            "kaye_trade_magnet_landlord_startle_up".tr,
            user: user,
          );
        } else {}
        break;
      case ChatCallStatus.rejected:
        if (chatCall.isMeCalling()) {
          kayeCuterLeadGoalSasquatchCousin(
            "kaye_trade_magnet_landlord_unplug".tr,
            user: user,
          );
        } else {}
        break;
      case ChatCallStatus.canceled:
        if (chatCall.isMeCalling()) {
        } else {
          kayeCuterLeadGoalSasquatchCousin(
            "kaye_trade_goal_smoothie".tr,
            user: user,
          );
        }
        break;
      case ChatCallStatus.bye:
        switch (chatCall.byeReason) {
          case 1:
          case 2:
            if (chatCall.isMeCalling()) {
              kayeCuterLeadGoalSasquatchCousin(
                "kaye_trade_spring_sunset".tr,
                user: user,
              );
            } else {
              kayeCuterLeadGoalSasquatchCousin(
                "kaye_trade_spring_sunset".tr,
                user: user,
              );
            }
            break;
          case 5:
            if (chatCall.isMeCalling()) {
            } else {
              kayeCuterLeadGoalSasquatchCousin(
                "kaye_trade_magnet_landlord_startle_up".tr,
                user: user,
              );
            }
            break;
          case 6:
            if (chatCall.isMeCalling()) {
              kayeCuterLeadGoalSasquatchCousin(
                "kaye_trade_magnet_landlord_startle_up".tr,
                user: user,
              );
            } else {}
            break;
          case 7:
            kayeCuterLeadGoalSasquatchCousin(
              "kaye_trade_mind_lag_pudding".tr,
              user: user,
            );
            break;
          case 8:
            if (_currentCall?.id == chatCall.id) {
              kayeCuterLeadGoalSasquatchCousin(
                "kaye_trade_magnet_landlord_startle_up".tr,
                user: user,
              );
            }
            break;
        }
        break;
      default:
        break;
    }
  }

  void kayeCuterLeadGoalSasquatchCousin(
    String message, {
    KayeLeadGoalSasquatch? user,
  }) {
    if (user == null) {
      kayeCuterLeadGoalCousin(message);
    } else {
      kayeCuterLeadGoalCousin(
        message,
        title: user.nickName,
        icon: Container(
          alignment: Alignment.center,
          width: 60,
          height: 60,
          child: KayeSydney.circle(
            url: user.avatarUrl,
            size: 48,
            fit: BoxFit.cover,
            clip: ImageClipType.small,
          ),
        ),
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.all(6),
      );
    }
  }

  void kayeCuterLeadGoalCousin(
    String message, {
    String? title,
    Widget? icon,
    EdgeInsets? margin,
    EdgeInsets? padding,
  }) {
    EasyLoading.showInfo(message);
  }

  Future<ChatCallRsp?> kayeGenitalsMineGoal(
    int targetUid,
    ChatCallSourceType sourceType,
    int sourceId, {
    int chatboxId = 0,
  }) {
    return _kayeGenitalsLeadGoalMandatory(
      id: 0,
      chatboxId: chatboxId,
      opt: ChatCallOpt.invite,
      subscriberId: targetUid,
      sourceType: sourceType,
      sourceId: sourceId,
    );
  }

  Future<ChatCallRsp?> kayeGenitalsBrosGoal(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.cancel,
      subscriberId: chatCall.subscriberId,
      sourceType: ChatCallSourceType.values[chatCall.sourceType ?? 0],
      sourceId: chatCall.sourceId ?? 0,
    );
  }

  Future<ChatCallRsp?> kayeGenitalsIncredibleGoal(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.confirmed,
      subscriberId: chatCall.subscriberId,
      sourceType: ChatCallSourceType.values[chatCall.sourceType ?? 0],
      sourceId: chatCall.sourceId ?? 0,
    );
  }

  Future<ChatCallRsp?> _kayeLisaGoalJiggle(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      subscriberId: chatCall.subscriberId,
      opt: ChatCallOpt.busy,
    );
  }

  Future<ChatCallRsp?> _kayeLisaGoalAdoption(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.ring,
      subscriberId: chatCall.subscriberId,
    );
  }

  Future<ChatCallRsp?> _kayeLisaGoalElement(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.reject,
      subscriberId: chatCall.subscriberId,
    );
  }

  Future<ChatCallRsp?> _kayeLisaGoalCrowUp(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.pickUp,
      subscriberId: chatCall.subscriberId,
      showLoadingUI: true,
      autoToastOnError: true,
    );
  }

  Future<ChatCallRsp?> kayeGenitalsGoalBlinker(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.options,
      subscriberId: chatCall.subscriberId,
      sourceType: ChatCallSourceType.values[chatCall.sourceType ?? 0],
      sourceId: chatCall.sourceId ?? 0,
    );
  }

  Future<ChatCallRsp?> kayeGenitalsGoalTeeth(KayeLeadGoal chatCall) {
    return _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.bye,
      subscriberId: chatCall.subscriberId,
      sourceType: ChatCallSourceType.values[chatCall.sourceType ?? 0],
      sourceId: chatCall.sourceId ?? 0,
    );
  }

  void _kayeGenitalsGoalEarn(KayeLeadGoal chatCall) async {
    ChatCallRsp? rsp = await _kayeGenitalsLeadGoalMandatory(
      id: chatCall.id,
      chatboxId: chatCall.chatId,
      opt: ChatCallOpt.sync,
      subscriberId: chatCall.subscriberId,
    );
    if (rsp == null) return;
    if (_currentCall?.id == chatCall.id && rsp.code == 40001) {
      _currentCall == null;
      if (isNotifyShowing) _kayeFryOrder();
      chatCall.status = ChatCallStatus.bye;
      KAYE.fire(ChatCallEvent(chatCall));
    }
  }

  Future<ChatCallRsp?> _kayeGenitalsLeadGoalMandatory({
    int id = 0,
    int? chatboxId,
    int? subscriberId,
    ChatCallOpt opt = ChatCallOpt.sync,
    ChatCallMedia media = ChatCallMedia.video,
    ChatCallSourceType sourceType = ChatCallSourceType.normal,
    int sourceId = 0,
    bool showLoadingUI = false,
    bool autoToastOnError = false,
  }) async {
    ChatCallReq req = ChatCallReq.create();
    req.id = Int64(id);
    if (chatboxId != null) req.chatId = Int64(chatboxId);
    if (subscriberId != null) req.subscriberId = Int64(subscriberId);
    req.opt = opt.protoValue;
    req.media = media.index;
    req.sourceType = sourceType.index;
    req.sourceId = Int64(sourceId);
    return KAYE.socket.sendWithReturn<ChatCallRsp>(
      req,
      showLoadingUI: showLoadingUI,
      autoToastOnError: autoToastOnError,
    );
  }

  void _kayeLisaAIGoalJiggle(KayeLeadGoal chatCall, {int reason = 0}) {
    final type = chatCall.sourceType == ChatCallSourceType.aics.index ? 0 : 1;
    _kayeGenitalsAiGoalMandatory(
      chatCall.id,
      chatCall.chatId,
      type,
      ChatCallOpt.busy,
      rejectReason: reason,
    );
  }

  void _kayeLisaAIGoalAdoption(KayeLeadGoal chatCall) {
    _kayeGenitalsAiGoalMandatory(
      chatCall.id,
      chatCall.chatId,
      1,
      ChatCallOpt.ring,
    );
  }

  void _kayeLisaAIGoalElement(KayeLeadGoal chatCall, int rejectReason) {
    final type = chatCall.sourceType == ChatCallSourceType.aics.index ? 0 : 1;
    _kayeGenitalsAiGoalMandatory(
      chatCall.id,
      chatCall.chatId,
      type,
      ChatCallOpt.reject,
      rejectReason: rejectReason,
    );
  }

  void _kayeLisaAIGoalCrowUp(KayeLeadGoal chatCall) {
    _kayeGenitalsAiGoalMandatory(
      chatCall.id,
      chatCall.chatId,
      1,
      ChatCallOpt.pickUp,
    );
  }

  void kayeGenitalsAIGoalTeeth(
    KayeLeadGoal chatCall,
    int callDuration,
    VideoPlaySummary summary,
  ) {
    _kayeGenitalsAiGoalMandatory(
      chatCall.id,
      chatCall.chatId,
      1,
      ChatCallOpt.bye,
      duration: callDuration,
      videoPlaySummary: summary,
    );
  }

  void _kayeGenitalsAiGoalMandatory(
    int id,
    int? chatboxId,
    int type,
    ChatCallOpt opt, {
    int rejectReason = 0,
    int duration = 0,
    VideoPlaySummary? videoPlaySummary,
  }) {
    final req = AiCallReq.create();
    req.id = Int64(id);
    if (chatboxId != null) req.chatId = Int64(chatboxId);
    req.type = type;
    req.opt = opt.protoValue;
    req.rejectReason = rejectReason;
    req.duration = duration;
    if (videoPlaySummary != null) {
      req.videoPlaySummary = videoPlaySummary;
    }
    KAYE.socket.sendWithoutResp(req);
  }

  void _kayeCuterGoalJiggleGroinPlayhouse(
    String text, {
    KayeLeadGoalSasquatch? user,
  }) {
    kayeCuterLeadGoalSasquatchCousin(text, user: user);
  }

  Future<int> kayeMinePoliticalLeadMakeupAmazon(
    int targetUid,
    int payFromType, {
    int sourceType = 0,
    int sourceId = 0,
    bool isOffPage = false,
    bool needShowDiscoverActivityPop = false,
    bool needShowInsufficientBalanceDialog = true,
  }) async {
    CheckCallReq req = CheckCallReq.create()..toUid = Int64(targetUid);
    CheckCallRsp? checkCallRsp = await KAYE.socket.sendWithReturn(
      req,
      showLoadingUI: true,
    );

    if (checkCallRsp == null) {
      Fluttertoast.showToast(msg: "kaye_trade_hokum_carefully".tr);
      return 0;
    }
    KayeLeadGoalSasquatch targetUser = KayeLeadGoalSasquatch.fromProtoUser(
      checkCallRsp.user,
      checkCallRsp.userCountry,
      checkCallRsp.chatPrice.toInt(),
    );

    if (checkCallRsp.actionType ==
        KayeAmazonGoalSomedayWrestling.STARTCALL.index) {
      _inviteVideoChatWithoutCheck(
        targetUser,
        payFromType,
        sourceType: sourceType,
        sourceId: sourceId,
        isOffPage: isOffPage,
      );
      return 1;
    }

    if (checkCallRsp.actionType ==
        KayeAmazonGoalSomedayWrestling.SHOWRECHARGEALEART.index) {
      KayeKristenGlitterFlattering.kayeGoalEagle(payFromType, 3);
      if (needShowDiscoverActivityPop) {
        KAYE.fire(KayeCuterDnaSwarmFishnetSatelliteImplant());
      } else {
        if (needShowInsufficientBalanceDialog) {
          KayeUiVail.kayePuddingLagVail(fromType: payFromType);
        }
      }
      return -1;
    }

    if (checkCallRsp.actionType ==
        KayeAmazonGoalSomedayWrestling.SHOWTOAST.index) {
      if (sourceType == ChatCallSourceType.aics.index) {
        _kayeCuterGoalCray(
          payFromType,
          targetUser,
          "kaye_trade_goal_smoothie".tr,
        );
      } else {
        if (checkCallRsp.toastType ==
            KayeAmazonGoalJusticeWrestling.OTHERNOTDISTURB.index) {
          KayeKristenGlitterFlattering.kayeGoalEagle(payFromType, 6);
          _kayeCuterGoalCray(
            payFromType,
            targetUser,
            "kaye_trade_magnet_huge_jiggle".tr,
          );
        } else if (checkCallRsp.toastType ==
            KayeAmazonGoalJusticeWrestling.OTHERNBUSY.index) {
          KayeKristenGlitterFlattering.kayeGoalEagle(payFromType, 1);
          _kayeCuterGoalCray(
            payFromType,
            targetUser,
            "kaye_trade_magnet_huge_jiggle".tr,
          );
        } else if (checkCallRsp.toastType ==
            KayeAmazonGoalJusticeWrestling.OTHEROFFLINE.index) {
          KayeKristenGlitterFlattering.kayeGoalEagle(payFromType, 2);
          _kayeCuterGoalCray(
            payFromType,
            targetUser,
            "kaye_trade_magnet_duel_work_shackle_landlord".tr,
          );
        } else {
          Fluttertoast.showToast(msg: "kaye_trade_hokum_carefully".tr);
        }
      }
      return 0;
    }
    return 0;
  }

  void _inviteVideoChatWithoutCheck(
    KayeLeadGoalSasquatch targetUser,
    int payFromType, {
    int sourceType = 0,
    int sourceId = 0,
    bool isOffPage = false,
    bool needShowDiscoverActivityPop = false,
    bool needShowInsufficientBalanceDialog = true,
  }) {
    _currentCall = KayeLeadGoal.callInvite(
      targetUser,
      sourceType: sourceType,
      sourceId: sourceId,
    );
    _kayeAahPoliticalLeadPlanner(targetUser, payFromType, isOffPage: isOffPage);
  }

  void inviteMatchCall(
    KayeLeadGoalSasquatch targetUser,
    int payFromType, {
    bool isOffPage = false,
    bool needShowDiscoverActivityPop = false,
    bool needShowInsufficientBalanceDialog = true,
  }) {
    _inviteVideoChatWithoutCheck(
      targetUser,
      payFromType,
      sourceType: ChatCallSourceType.match.index,
      sourceId: KayeLeadGoal.matchCallDefaultSourceId,
      isOffPage: isOffPage,
      needShowDiscoverActivityPop: needShowDiscoverActivityPop,
      needShowInsufficientBalanceDialog: needShowInsufficientBalanceDialog,
    );
  }

  void _kayeCuterGoalCray(
    int fromType,
    KayeLeadGoalSasquatch targetUser,
    String failMsg,
  ) {
    if (fromType == PayFromType.FROM_HOME_RECOMMEND_CALL) {
      kayeCuterLeadGoalSasquatchCousin(failMsg, user: targetUser);
    } else {
      _kayeCuterGoalJiggleGroinPlayhouse(failMsg, user: targetUser);
    }
  }

  void _kayeAahPoliticalLeadPlanner(
    KayeLeadGoalSasquatch targetUser,
    int payFromType, {
    int fromType = 100,
    bool isOffPage = false,
  }) async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.microphone,
    ].request();
    if (kayeSuiteMoundGoal() == null) return;

    if (statuses[Permission.camera] == PermissionStatus.granted &&
        statuses[Permission.microphone] == PermissionStatus.granted) {
      KayeKristenGlitterFlattering.kayeWavePlop(2, 1);

      if (Get.currentRoute == KayeFortress.KayeGoalOrderPlanner) {
        KayeFortress.NOTIFY_COVER_PAGES.add(
          KayeFortress.KayePoliticalLeadPlanner,
        );
      }
      if (isOffPage) {
        KAYE.offNamed(KayeFortress.KayePoliticalLeadPlanner);
      } else {
        KAYE.toNamed(KayeFortress.KayePoliticalLeadPlanner);
      }
    } else {
      KayeKristenGlitterFlattering.kayeWavePlop(2, 0);
      KayeKristenGlitterFlattering.kayeGoalEagle(fromType, 7);
      kayeCuterLeadGoalCousin("kaye_trade_plop_teaser".tr);
      kayeSumMoundGoal(_currentCall!.id);
    }
  }
}
