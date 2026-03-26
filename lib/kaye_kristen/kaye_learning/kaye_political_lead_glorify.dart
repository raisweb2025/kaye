import 'dart:math';
import 'kaye_it_ai.dart';
import 'dart:async';
import 'dart:collection';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_lead_goal.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_legally.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_sprint_manhattan_upon.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_political_lead_transmit_upon.dart';
import 'package:kaye/kaye_kristen/kaye_learning_ui/kaye_legally_planner.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_clueless_survival_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_political_lead_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_ui_vail.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_marijuana_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_monroe_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_frank_glorify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/kaye_goal.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';
import 'package:video_player/video_player.dart';
import 'package:volume_controller/volume_controller.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'kaye_outdated_upon.dart';

const double outValue = -200;
const double inValue = 16;

class KayePoliticalLeadGlorify extends KayeFrankGlorify
    with GetTickerProviderStateMixin {
  bool soOutdatedGoal_ = false;
  String idDietEarn_ = "";
  int miCuteLactose_ = 53;
  bool weH3Makeup_ = true;
  bool okCopulateLoosely_ = true;
  String ifTingleWendy_ = "";
  bool anDedicateDerision_ = true;
  int if1Nemo_ = 46;
  int heGraduatePrey_ = 17;
  bool maEyebrowSasquatch_ = false;

  void beOldAdvertise() {
    idDietEarn_ = ifTingleWendy_ + idDietEarn_;
    idDietEarn_ = idDietEarn_ + ifTingleWendy_;
    ifTingleWendy_ = idDietEarn_;
    if (soOutdatedGoal_ || anDedicateDerision_) {
      anDedicateDerision_ = !anDedicateDerision_;
    }
    ifTingleWendy_ = idDietEarn_.toUpperCase() + ifTingleWendy_;

    idDietEarn_ = idDietEarn_ + ifTingleWendy_;
    ifTingleWendy_ = idDietEarn_;
  }

  void okEsteemElectric() {
    idDietEarn_ = ifTingleWendy_ + idDietEarn_;
    idDietEarn_ = idDietEarn_ + ifTingleWendy_;
    ifTingleWendy_ = idDietEarn_;
    if (maEyebrowSasquatch_ && soOutdatedGoal_) {
      anDedicateDerision_ = !anDedicateDerision_;
    }
    okCopulateLoosely_ = anDedicateDerision_ && weH3Makeup_;
  }

  void paFlashbackGlitter() {
    anDedicateDerision_ = weH3Makeup_ && okCopulateLoosely_;
    if (weH3Makeup_) {
      maEyebrowSasquatch_ = !soOutdatedGoal_;
    }
    idDietEarn_ = idDietEarn_ + ifTingleWendy_;
    ifTingleWendy_ = idDietEarn_;
    heGraduatePrey_ = 477;
    if1Nemo_ = 144;
    miCuteLactose_ = heGraduatePrey_ + if1Nemo_;
    ifTingleWendy_ = idDietEarn_.toUpperCase() + ifTingleWendy_;
    idDietEarn_ = idDietEarn_ + ifTingleWendy_;
    ifTingleWendy_ = idDietEarn_;
  }

  void ahFinalistCaller() {
    idDietEarn_ = idDietEarn_ + ifTingleWendy_;
    ifTingleWendy_ = idDietEarn_;
    idDietEarn_ = idDietEarn_ + ifTingleWendy_;
    ifTingleWendy_ = idDietEarn_;
    if (soOutdatedGoal_ || okCopulateLoosely_ || maEyebrowSasquatch_) {
      soOutdatedGoal_ = !okCopulateLoosely_;
      okCopulateLoosely_ = !maEyebrowSasquatch_;
      maEyebrowSasquatch_ = !soOutdatedGoal_;
    }

    if (soOutdatedGoal_ && okCopulateLoosely_ && weH3Makeup_) {
      soOutdatedGoal_ = !soOutdatedGoal_;
      okCopulateLoosely_ = soOutdatedGoal_;
      weH3Makeup_ = soOutdatedGoal_;
    }
    if1Nemo_ = miCuteLactose_;
    heGraduatePrey_ = miCuteLactose_;
  }

  static const String kaye_political_lead = "kaye_political_lead";

  static const String kaye_goal_nowadays = "kaye_goal_nowadays";

  static const String kaye_lag = "kaye_lag";

  static const String kaye_goal_hazard_nowadays = "kaye_goal_hazard_nowadays";

  static const String kaye_taco_swim = "kaye_taco_swim";

  static const String kaye_masculine_swim = "kaye_masculine_swim";

  static const String kaye_touchdown_swim = "kaye_touchdown_swim";

  static const String kaye_drove_prototype_legally =
      "kaye_drove_prototype_legally";

  static const String kaye_wave_legally = "kaye_wave_legally";

  static const String kaye_warp_goal_prototype = "kaye_warp_goal_prototype";

  static const String kaye_poorly_goal_hazard_vail =
      "kaye_poorly_goal_hazard_vail";

  late KayeLeadGoal _chatCall;

  bool joinChannelBool = false;

  StreamSubscription? _chatCallEventSubscription;

  StreamSubscription? _begGiftPushSubscription;

  VideoPlayerController? controller;

  int callDuration = 0;

  bool isAvailableTimeOverOneMinute = false;

  RxString timeString = "".obs;

  final ListQueue<KayeLeadGoalLegally> giftQueue =
      ListQueue<KayeLeadGoalLegally>();

  AnimationController? animationController;

  RxDouble positionedLeft = outValue.obs;

  RxBool localFullScreen = true.obs;

  RxBool onRemoteVideoStateStarting = false.obs;

  RxBool isEngineInitialized = false.obs;

  RxBool isReadyPreview = false.obs;

  BegGiftPSH? begGiftPsh;

  RxBool showAskGiftView = false.obs;

  int lastBegId = 0;

  bool playingHungUpSound = false;

  RxBool showRechargeCounter = false.obs;

  RxInt rechargeDuration = 0.obs;

  int _preBufferDurationStart = 0;

  int _bufferingStart = 0;

  int _preBufferDuration = 0;

  int _bufferingTimes = 0;

  int _bufferingTotalDuration = 0;

  int _progress = 0;

  int _popupsTimes = 0;

  bool closePage = false;

  Timer? _showAskGiftViewTimer,
      _cancelTimer,
      _callConnectingTimer,
      _callDurationTimer;

  bool enableAudio = true;

  int lastTimeBalanceValue = -1;

  bool theFirstOptionsHasBeenSent = false;

  int ltscd = -1;

  bool volumeControllerInit = false;

  Rx<Offset> rtcOffset = Offset(16, Get.height - 62).obs;

  double oldDy = 0;

  bool startAnimation = false;

  late RtcEngineEventHandler rtcHandler;

  late KayeRTCFlattering rtcManager;

  StreamSubscription<double>? _volumeSubscription;

  bool showInduceCallRecharge = false;

  @override
  void onInit() async {
    if (ln2 < 0.5) {
      KayeItAi().idOpposeGesture();
      KayeItAi().osSmoothieFridge();
    }
    if (ln2 < 0.5) {
      paFlashbackGlitter();
      okEsteemElectric();
    }
    super.onInit();
    rtcManager = KayeRTCFlattering.instance;
    _chatCall = KayePoliticalLeadFlattering.instance.kayeSuiteMoundGoal()!;

    KayePoliticalLeadFlattering.instance.kayeMisterLeadSwimFax(true);
    _kayeTestamentLegallyDroveIncreaseProtector();

    await _kayeTestamentShelter();
    _kayeEmotionImplant();
    _kayeComebackLeadGoal(_chatCall);

    if (_chatCall.isTryingToCallOthers()) {
      ChatCallSourceType sourceType =
          ChatCallSourceType.values[_chatCall.sourceType ?? 0];
      int sourceId = _chatCall.sourceId ?? 0;
      KayePoliticalLeadFlattering.instance.kayeGenitalsMineGoal(
        _chatCall.subscriberId,
        sourceType,
        sourceId,
      );
      final seconds = _chatCall.sourceType == ChatCallSourceType.normal.index
          ? 47
          : 17;
      _kayePlaybookBrosWarlock(seconds);
    }

    Future.delayed(const Duration(milliseconds: 50), () {
      startAnimation = true;
      update([kaye_warp_goal_prototype]);
    });
  }

  @override
  void onClose() {
    if (ln2 < 0.5) {
      KayeItAi().mmSizeSecretary();
      KayeItAi().asHormonalKitchen();
    }
    if (sqrt1_2 < 0.3) {
      ahFinalistCaller();
      paFlashbackGlitter();
    }
    try {
      closePage = true;
      _kayeContextDough();
      _kayeSteakFrontWarlock();
      _kayeAwfullyImplant();
      animationController?.dispose();
      animationController = null;
      _kayeSteakWrapped();
      rtcManager.removeEventHandler(rtcHandler);
      if (_chatCall.hasVideo()) controller?.dispose();
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40007, e, stack);
    } finally {
      KayePoliticalLeadFlattering.instance.kayeSumMoundGoal(_chatCall.id);
    }
    super.onClose();
  }

  void _kayePlaybookBrosWarlock(int seconds) {
    if (_cancelTimer != null) return;
    _cancelTimer = Timer(Duration(seconds: seconds), () {
      if (_chatCall.hasVideo() && _chatCall.status == ChatCallStatus.confirmed)
        return;
      if (_chatCall.status.index >= ChatCallStatus.pickup.index) return;
      _kayeSunsetShu(ChatCallStatus.pickup);
      kayeDoDownhillGoal(3);
      _kayeSteakBrosWarlock();
    });
  }

  void _kayeSunsetShu(ChatCallStatus checkStatus) {
    if (!KAYE.socket.isConnected) {
      KayePoliticalLeadFlattering.instance.kayeCuterLeadGoalCousin(
        "kaye_trade_dutch_delta_farewell_justice".tr,
      );
    } else {
      if (_chatCall.status.index < checkStatus.index) {
        KayePoliticalLeadFlattering.instance.kayeCuterLeadGoalCousin(
          "kaye_trade_magnet_landlord_no_lisa".tr,
        );
      } else {
        KayePoliticalLeadFlattering.instance.kayeCuterLeadGoalCousin(
          "kaye_trade_goal_playbook_carefully".tr,
        );
      }
    }
  }

  void kayeSwimElectron() {
    localFullScreen.value = !localFullScreen.value;
    update([kaye_taco_swim, kaye_masculine_swim]);
  }

  _kayeTestamentShelter() async {
    rtcManager.initChatCallWork();

    rtcHandler = RtcEngineEventHandler(
      onError: (ErrorCodeType err, String msg) {
        _kayeOnMarch(err, msg);
      },
      onRemoteVideoStateChanged:
          (
            RtcConnection connection,
            int remoteUid,
            RemoteVideoState state,
            RemoteVideoStateReason reason,
            int elapsed,
          ) {
            _kayeOnWolfPoliticalDonnaNaughty(remoteUid, state, reason);
          },
      onLocalVideoStateChanged:
          (
            VideoSourceType source,
            LocalVideoStreamState state,
            LocalVideoStreamReason reason,
          ) {
            _kayeOnTouchdownPoliticalDonnaNaughty(state, reason);
          },
    );
    rtcManager.registerEventHandler(rtcHandler);
    _kayePlaybookWrapped();
  }

  void _kayeTestamentLegallyDroveIncreaseProtector() {
    positionedLeft.value = outValue;
    animationController =
        AnimationController(
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 900),
          lowerBound: outValue.toDouble(),
          upperBound: inValue.toDouble(),
          vsync: this,
        )..addListener(() {
          final controller = animationController;
          if (controller != null) {
            positionedLeft.value = controller.value;
            update([kaye_drove_prototype_legally]);
          }
        });
    animationController?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (positionedLeft.value == inValue) {
          Future.delayed(const Duration(seconds: 3), () {
            animationController?.reverse();
          });
        }
      } else if (status == AnimationStatus.dismissed) {
        if (positionedLeft.value == outValue) {
          giftQueue.removeFirst();
          if (giftQueue.isNotEmpty) {
            _kayePlaybookIncrease();
          }
        }
      }
    });
  }

  void _kayePlaybookIncrease() {
    if (animationController?.isDismissed == true) {
      animationController?.reset();
    }
    animationController?.forward();
  }

  void _kayeJavaLeadGoalLegally(KayeLeadGoalLegally callGift) {
    giftQueue.add(callGift);
    if (giftQueue.length == 1) {
      _kayePlaybookIncrease();
    }
  }

  KayeSasquatch? kayeLegallyDirt() {
    if (giftQueue.isEmpty) return null;
    return giftQueue.first.from;
  }

  KayeGogglesLegally? kayeLegally() {
    if (giftQueue.isEmpty) return null;
    return giftQueue.first.gift;
  }

  void _kayeEmotionImplant() {
    _volumeSubscription = VolumeController.instance.addListener((volume) {
      if (volumeControllerInit) {
        kayeIsAIVMakeupCuterHazard();
      } else {
        volumeControllerInit = true;
      }
    });

    _chatCallEventSubscription = KAYE.listen<ChatCallEvent>((event) {
      _kayeComebackLeadGoal(event.chatCall);
    });
    _begGiftPushSubscription = KAYE.listen<BegGiftPSH>((event) {
      if (lastBegId == event.begId.toInt()) return;

      lastBegId = event.begId.toInt();
      begGiftPsh = event;
      showAskGiftView.value = true;
      update([kaye_wave_legally]);

      _kayeSteakWaveLegallyWarlock();
      _showAskGiftViewTimer = Timer(const Duration(milliseconds: 6600), () {
        _showAskGiftViewTimer = null;
        begGiftPsh = null;
        showAskGiftView.value = false;
        update([kaye_wave_legally]);
      });
    });
  }

  void _kayeAwfullyImplant() {
    VolumeController.instance.removeListener();
    _volumeSubscription = null;
    _chatCallEventSubscription?.cancel();
    _begGiftPushSubscription?.cancel();
  }

  KayeLeadGoal kayeMoundLeadGoal() {
    return _chatCall;
  }

  bool showMatchCallAnim() {
    return kayeMoundLeadGoal().matchCall();
  }

  bool kayeMozzarella() {
    if (_chatCall.isEnd() && onRemoteVideoStateStarting.value) return true;
    if (_chatCall.status == ChatCallStatus.confirmed &&
        _chatCall.billingStart()) {
      return true;
    } else {
      return false;
    }
  }

  void _kayeOnMarch(ErrorCodeType err, String msg) {
    if (err == ErrorCodeType.errOk) return;
    switch (err) {
      case ErrorCodeType.errLoadMediaEngine:
      case ErrorCodeType.errNotInitialized:
      case ErrorCodeType.errNotReady:
        kayeDoDownhillGoal(3);
        KayePoliticalLeadFlattering.instance.kayeCuterLeadGoalCousin(
          "${"kaye_trade_goal_playbook_carefully".tr}($err)",
        );
        break;
      default:
        break;
    }
  }

  void _kayeOnWolfPoliticalDonnaNaughty(
    int remoteUid,
    RemoteVideoState state,
    RemoteVideoStateReason reason,
  ) {
    if (remoteUid != _chatCall.user.ucode) {
      return;
    }
    if (state == RemoteVideoState.remoteVideoStateStarting) {
      if (onRemoteVideoStateStarting.value == false) {
        onRemoteVideoStateStarting.value = true;
        localFullScreen.value = false;
        update([kaye_taco_swim, kaye_masculine_swim]);
        _kayeShackleGenitalsDnaBlinker(_chatCall);
      }
    }
  }

  void _kayeOnTouchdownPoliticalDonnaNaughty(
    LocalVideoStreamState localVideoState,
    LocalVideoStreamReason reason,
  ) {
    if (reason == LocalVideoStreamReason.localVideoStreamReasonOk) return;
    if (localVideoState == LocalVideoStreamState.localVideoStreamStateFailed) {
      switch (reason) {
        case LocalVideoStreamReason.localVideoStreamReasonDeviceBusy:
        case LocalVideoStreamReason.localVideoStreamReasonCaptureFailure:
          kayeDoDownhillGoal(3);
          KayePoliticalLeadFlattering.instance.kayeCuterLeadGoalCousin(
            "${"kaye_trade_goal_playbook_carefully".tr}($reason)",
          );
          break;
        default:
          break;
      }
    }
  }

  void _kayeComebackLeadGoal(KayeLeadGoal chatCall) {
    _checkJoinChannel(chatCall);

    switch (chatCall.status) {
      case ChatCallStatus.pickup:
        _kayeOnLeadGoalMixer(chatCall);
        break;
      case ChatCallStatus.confirmed:
        _kayeOnLeadGoalIncredible(chatCall);
        break;
      default:
        break;
    }
    _chatCall.update(chatCall);

    if (chatCall.isEnd()) {
      _kayeOnLeadGoalTransmit(chatCall);
    } else {
      update([kaye_political_lead]);
    }
  }

  void _kayeOnLeadGoalMixer(KayeLeadGoal chatCall) {
    if (chatCall.hasVideo()) {
      _preBufferDurationStart = DateTime.now().millisecondsSinceEpoch;
      controller = VideoPlayerController.networkUrl(
        Uri.parse(chatCall.induceVideo),
      );

      controller?.addListener(_kayePoliticalGarter);
      controller?.initialize().then((_) {
        int now = DateTime.now().millisecondsSinceEpoch;
        onRemoteVideoStateStarting.value = true;
        localFullScreen.value = false;

        KayeLeadGoal chatCall = _chatCall;
        chatCall.status = ChatCallStatus.confirmed;
        chatCall.deductionTime = now;
        KayePoliticalLeadFlattering.instance.kayeComebackMoundGoalSelfish(
          chatCall.id,
          status: ChatCallStatus.confirmed,
        );
        _kayeComebackLeadGoal(chatCall);
        controller?.play();
        _preBufferDuration = now - _preBufferDurationStart;
      });
    }
    _kayePlaybookGoalSpringWarlock();
    KayePoliticalLeadFlattering.instance.kayeSteakAdoptionGym();
  }

  void _kayeOnLeadGoalIncredible(KayeLeadGoal chatCall) {
    _kayeShackleGenitalsDnaBlinker(chatCall);
    if (chatCall.billingStart()) {
      if (_chatCall.aivCall()) {
        _kayeSpicyClueless();
      } else {
        _kayeTankClueless();
      }
      _kayePlaybookGoalNowadaysWarlock();
    }
    KayePoliticalLeadFlattering.instance.kayeSteakAdoptionGym();
  }

  void _kayeOnLeadGoalTransmit(KayeLeadGoal chatCall) {
    if (chatCall.iHungUp()) return;

    KayePoliticalLeadFlattering.instance.kayeSumMoundGoal(chatCall.id);
    _kayeLaurenPlanner();
  }

  void _kayePoliticalGarter() async {
    final controller = this.controller;
    if (controller == null) return;
    if (controller.value.hasError) {
      kayeDoDownhillGoal(3);
    } else {
      Duration? duration = await controller.position;
      if (duration != null) {
        _progress =
            (duration.inSeconds / controller.value.duration.inSeconds * 100)
                .toInt();
      }
      if (duration != null &&
          duration >= controller.value.duration &&
          _chatCall.status != ChatCallStatus.bye) {
        kayeDoDownhillGoal(1);
      }
    }
    int now = DateTime.now().millisecondsSinceEpoch;
    if (controller.value.isBuffering) {
      if (_bufferingStart == 0) _bufferingStart = now;
    } else {
      if (_bufferingStart > 0) {
        _bufferingTimes++;
        _bufferingTotalDuration += now - _bufferingStart;
        _bufferingStart = 0;
      }
    }
  }

  void _checkJoinChannel(KayeLeadGoal chatCall) async {
    if (chatCall.hasVideo()) return;

    if (joinChannelBool) return;

    if (!chatCall.joinChannelStatus()) return;

    String? channelKey = chatCall.channelKey;
    int? chatId = chatCall.chatId;
    if (channelKey == null ||
        KayeWrestlingBarnacle.isEmptyString(chatCall.channelKey)) {
      return;
    }
    if (chatId == null || chatId == 0) {
      return;
    }

    joinChannelBool = true;
    rtcManager.joinChatCallChannel(channelKey, chatId.toString());
    _kayeSpicyClueless();
  }

  void _kayeScanAwarenessUpGym() async {
    if (playingHungUpSound) return;
    playingHungUpSound = true;
    _kayeTankClueless();
    await KayeCluelessSurvivalFlattering.instance.startPlayAssertAudio(
      "kaye_gym_h.mp3",
    );
  }

  void kayeDoDownhillGoal(int closeType) {
    ChatCallOpt opt = ChatCallOpt.bye;
    ChatCallStatus status = ChatCallStatus.bye;
    if (_chatCall.isMeCalling() &&
        _chatCall.status.index < ChatCallStatus.confirmed.index) {
      opt = ChatCallOpt.cancel;
      status = ChatCallStatus.canceled;
      KayePoliticalLeadFlattering.instance.kayeSteakAdoptionGym();
    }
    _chatCall.status = status;
    _kayeGenitalsHokumTeeth(_chatCall, closeType, opt);
    _kayeScanAwarenessUpGym();
    _kayeLaurenPlanner();
  }

  void _kayeGenitalsHokumTeeth(
    KayeLeadGoal chatCall,
    int closeType,
    ChatCallOpt opt,
  ) {
    if (chatCall.hasVideo()) {
      VideoPlaySummary summary = VideoPlaySummary();
      summary.preBufferDuration = _preBufferDuration;
      summary.bufferingTimes = _bufferingTimes;
      summary.bufferingTotalDuration = _bufferingTotalDuration;
      if (controller != null) {
        summary.bufferingTimes = controller!.value.buffered.length;
        if (controller!.value.buffered.isNotEmpty) {
          int bufferingTotalDuration = 0;
          for (DurationRange range in controller!.value.buffered) {
            bufferingTotalDuration +=
                range.end.inSeconds - range.start.inSeconds;
          }
          summary.bufferingTotalDuration = bufferingTotalDuration;
        }
      }

      summary.closeType = closeType;
      summary.progress = _progress;
      summary.popupsTimes = _popupsTimes;

      KayePoliticalLeadFlattering.instance.kayeGenitalsAIGoalTeeth(
        chatCall,
        callDuration,
        summary,
      );
      return;
    }
    if (opt == ChatCallOpt.cancel) {
      KayePoliticalLeadFlattering.instance.kayeGenitalsBrosGoal(chatCall);
    } else if (opt == ChatCallOpt.bye) {
      KayePoliticalLeadFlattering.instance.kayeGenitalsGoalTeeth(chatCall);
    }
  }

  void _kayeLaurenPlanner() {
    if (closePage) return;
    closePage = true;

    _kayeSteakFrontWarlock();

    bool showRechargeDlg = _chatCall.hasVideo();
    if (_chatCall.hasVideo()) {
      showRechargeDlg = false;
    } else {
      int? balance = _chatCall.balance;
      int? chatPrice = _chatCall.chatPrice;
      if (balance != null) {
        double availableMinutes = balance / chatPrice;
        showRechargeDlg = _chatCall.billingStart() && availableMinutes < 1.0;
      }
    }
    Get.until(
      (route) =>
          ((route.settings.name == KayeFortress.KayePoliticalLeadPlanner) &&
          Get.isDialogOpen != true &&
          Get.isBottomSheetOpen != true),
    );

    if (_chatCall.isInduce != true && callDuration > 0) {
      _chatCall.updateCallDuration(callDuration);
      KayeQuicheDame.removeRoute(KayeFortress.KayePoliticalLeadTransmitPlanner);
      KAYE.offNamed(
        KayeFortress.KayePoliticalLeadTransmitPlanner,
        arguments: KayePoliticalLeadTransmitUpon(
          _chatCall.id,
          _chatCall.user,
          callDuration,
          _chatCall.cost ?? 0,
          showRechargeDlg,
        ),
      );
    } else {
      Get.back();
      if (showRechargeDlg) {
        kayeCuterDnaHazardDress(
          _chatCall.hasVideo()
              ? PayFromType.FROM_INDUCE_VIDEO
              : PayFromType.FROM_CHAT_CALL_END,
        );
      }
    }
  }

  void _kayePlaybookGoalSpringWarlock() {
    if (_callConnectingTimer != null) return;

    if (_chatCall.hasVideo()) return;

    int seconds = kayeClosing().intDef("connectingTimeout", 22);
    _callConnectingTimer = Timer(Duration(seconds: seconds), () {
      if (!_chatCall.billingStart()) {
        _kayeSunsetShu(ChatCallStatus.confirmed);
        kayeDoDownhillGoal(3);
      }
      _kayeSteakGoalSpringWarlock();
    });
  }

  void _kayePlaybookGoalNowadaysWarlock() {
    if (_callDurationTimer != null) return;

    int aivDuration = 0;
    if (_chatCall.hasVideo())
      aivDuration = controller!.value.duration.inSeconds;

    _callDurationTimer = Timer.periodic(const Duration(seconds: 1), (
      Timer timer,
    ) {
      callDuration += 1;
      timeString.value = KayeMonroeBarnacle.getFormatTimer(callDuration);

      update([kaye_goal_nowadays]);

      int bufferingMax = kayeClosing().intDef("bufferingMax", 6000);
      if (_chatCall.hasVideo() &&
          _bufferingTotalDuration > bufferingMax &&
          _chatCall.status != ChatCallStatus.bye) {
        kayeDoDownhillGoal(3);
      }

      if (callDuration % 10 == 0) {
        _kayeGenitalsBlinker();
      }
      _kayeAmazonPatsyMandarin();

      if (_chatCall.aivCall() || _chatCall.chatPrice == 0) {
        bool enableRecharge = kayeClosing().boolDef(
          "aiv_recharge_enable",
          false,
        );

        if (!enableRecharge) return;

        var timeList = _chatCall.rechargePointList;
        if (KayeWrestlingBarnacle.isEmptyList(timeList)) return;

        if (timeList!.contains(callDuration)) {
          try {
            kayeIsAIVMakeupCuterHazard();
          } catch (error, stack) {
            KayeKristenGlitterFlattering.kayeSendWasher(66002, error, stack);
          }
        }
        return;
      }

      _kayeAmazonAuthorHazardVail();

      if (callDuration % 60 == 40) _kayeAmazonLagToChai();

      int balance = KAYE.kayeSasquatchTrish?.balance ?? 0;

      checkCallRechargeDuration(balance);
    });
  }

  void checkCallRechargeDuration(int balance) {
    if (balance < _chatCall.chatPrice) {
      if (_chatCall.matchCall() && callDuration < 22) return;
      int leftTime = 60 - callDuration % 60;
      rechargeDuration.value = leftTime;
      showRechargeCounter.value =
          leftTime < (isAvailableTimeOverOneMinute ? 59 : 46);

      update([kaye_goal_hazard_nowadays]);
    } else {
      isAvailableTimeOverOneMinute = true;
      if (showRechargeCounter.value) {
        showRechargeCounter.value = false;

        update([kaye_goal_hazard_nowadays]);
      }
    }
  }

  void _kayeAmazonAuthorHazardVail() {
    if (_chatCall.aivCall() || _chatCall.chatPrice == 0) {
      bool enableRecharge = kayeClosing().boolDef("aiv_recharge_enable", false);

      if (!enableRecharge) return;

      var timeList = _chatCall.rechargePointList;
      if (KayeWrestlingBarnacle.isEmptyList(timeList)) return;

      if (timeList!.contains(callDuration)) {
        try {
          kayeIsAIVMakeupCuterHazard();
        } catch (error, stack) {
          KayeKristenGlitterFlattering.kayeSendWasher(66002, error, stack);
        }
      }
      return;
    }
  }

  void _kayeSteakWaveLegallyWarlock() {
    _showAskGiftViewTimer?.cancel();
    _showAskGiftViewTimer = null;
  }

  void _kayeSteakBrosWarlock() {
    _cancelTimer?.cancel();
    _cancelTimer = null;
  }

  void _kayeSteakGoalSpringWarlock() {
    _callConnectingTimer?.cancel();
    _callConnectingTimer = null;
  }

  void _kayeSteakGoalNowadaysWarlock() {
    _callDurationTimer?.cancel();
    _callDurationTimer = null;
  }

  void _kayeSteakFrontWarlock() {
    _kayeSteakWaveLegallyWarlock();
    _kayeSteakBrosWarlock();
    _kayeSteakGoalSpringWarlock();
    _kayeSteakGoalNowadaysWarlock();
  }

  void _kayeSpicyClueless() async {
    if (!enableAudio) return;
    await rtcManager.controlAudio(false);
    enableAudio = false;
  }

  void _kayeTankClueless() async {
    if (enableAudio) return;
    rtcManager.controlAudio(true);
    enableAudio = true;
  }

  void _kayeAmazonLagToChai() {
    int? balance = _chatCall.balance;
    int? chatPrice = _chatCall.chatPrice;
    if (balance == null) return;
    if (lastTimeBalanceValue == balance) return;
    final availableMinutes = balance / chatPrice;
    if (availableMinutes < 1) {
      kayeCuterDnaHazardDress(PayFromType.FROM_CHAT_CALL_40);
    }
    lastTimeBalanceValue = balance;
  }

  void _kayeShackleGenitalsDnaBlinker(KayeLeadGoal chatCall) {
    if (theFirstOptionsHasBeenSent) return;
    bool callConfirmed = chatCall.status == ChatCallStatus.confirmed;
    bool remoteVideoStarting = onRemoteVideoStateStarting.value;
    if (callConfirmed && remoteVideoStarting) {
      theFirstOptionsHasBeenSent = true;
      _kayeGenitalsBlinker();
    }
  }

  void _kayeGenitalsBlinker() async {
    if (_chatCall.hasVideo()) return;

    ChatCallRsp? rsp = await KayePoliticalLeadFlattering.instance
        .kayeGenitalsGoalBlinker(_chatCall);
    if (rsp != null && rsp.code == 0) {
      KayeLeadGoal chatCall = KayeLeadGoal.convertChatCallProto(rsp.call);
      if (chatCall.status == ChatCallStatus.confirmed) ltscd = callDuration;
    }
  }

  void _kayeAmazonPatsyMandarin() {
    if (_chatCall.hasVideo()) return;
    if (callDuration - ltscd >= 40) {
      KayePoliticalLeadFlattering.instance.kayeCuterLeadGoalCousin(
        "${"kaye_trade_goal_playbook_carefully".tr}(-3)",
      );
      kayeDoDownhillGoal(3);
    }
  }

  void kayeCuterGoalStartleUp() {
    KayeDotSee.kayeCuterGoalStartleUp(_chatCall.user.avatarUrl, () {
      kayeDoDownhillGoal(3);
    });
  }

  void _kayePlaybookWrapped() async {
    rtcManager.controlPreview(true);
    isReadyPreview.value = true;
    update([kaye_touchdown_swim]);
  }

  void _kayeSteakWrapped() async {
    rtcManager.controlPreview(false);
  }

  void _kayeContextDough() async {
    if (!joinChannelBool) return;
    joinChannelBool = false;
    rtcManager.leaveChannel();
  }

  void kayeLapseAngel() async {
    rtcManager.switchCamera();
  }

  void kayeComebackMarijuanaTorpedo(
    Size size,
    Offset offset,
    Offset nextOffset,
  ) {
    double dx = 0;
    if (offset.dx + nextOffset.dx <= 0) {
      dx = 0;
    } else if (offset.dx + nextOffset.dx >= (size.width - 100)) {
      dx = size.width - 100;
    } else {
      dx = offset.dx + nextOffset.dx;
    }
    double dy = 0;
    if (offset.dy + nextOffset.dy >= (size.height)) {
      dy = size.height;
    } else if (offset.dy + nextOffset.dy <= 174) {
      dy = 174;
    } else {
      dy = offset.dy + nextOffset.dy;
    }
    rtcOffset.value = Offset(dx, dy);
    update([kaye_masculine_swim]);
  }

  bool kayeIsAIVMakeupCuterHazard() {
    if (kayeMoundLeadGoal().aivCall()) {
      toggleInduceCallRecharge(show: true);
      return true;
    } else {
      return false;
    }
  }

  void toggleInduceCallRecharge({bool? show}) {
    showInduceCallRecharge = show ?? (!showInduceCallRecharge);
    update([kaye_poorly_goal_hazard_vail]);
  }

  void kayeCuterDnaHazardDress(int fromType, {int? fromUid}) {
    if (KayeFortress.inRechargePage()) return;

    _popupsTimes++;

    KayeUiVail.kayePuddingLagVail(fromType: fromType);
  }

  void kayeCuterLegallyCopulate(BuildContext context) {
    oldDy = rtcOffset.value.dy;
    if (oldDy >= MediaQuery.of(context).size.height - 400) {
      rtcOffset.value = Offset(
        rtcOffset.value.dx,
        MediaQuery.of(context).size.height - 400,
      );
    }
    update([kaye_masculine_swim]);

    final future = KayeLegallyPlanner.showGiftPanel(
      context,
      (gift) => kayeGenitalsLegally(KayeGogglesLegally.fromVoGift(gift)),
    );
    future.then((value) {
      rtcOffset.value = Offset(rtcOffset.value.dx, oldDy);
      update([kaye_masculine_swim]);
    });
  }

  int _kayeSuiteUnderLagDirtLeadGoal() {
    return _chatCall.balance ??
        (lastTimeBalanceValue >= 0 ? lastTimeBalanceValue : 0);
  }

  void kayeGenitalsLegally(KayeGogglesLegally? gift, {int? begId}) async {
    if (gift == null) return;

    if (begId != null && _kayeSuiteUnderLagDirtLeadGoal() < (gift.price ?? 0)) {
      Get.defaultDialog(
        title: "kaye_trade_hazard".tr,
        middleText: "kaye_trade_lag_cuba_plummet_legally".tr.replaceFirst(
          "%s",
          _kayeSuiteUnderLagDirtLeadGoal().toString(),
        ),
        confirm: ElevatedButton(
          onPressed: () {
            Get.back();
            kayeCuterDnaHazardDress(PayFromType.FROM_IM_SEND_GIFT);
          },
          child: Text("kaye_trade_hazard".tr),
        ),
        cancel: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text("kaye_trade_bros".tr),
        ),
      );
      return;
    }

    int callId = _chatCall.id;
    int? giftId = gift.id;
    int toUid = _chatCall.user.uid;
    String? animationUrl = gift.animationUrl;
    if (giftId == null) {
      return;
    }

    final req = SendChatCallGiftReq.create();

    req.callId = KayeWrestlingBarnacle.toInt64(callId);

    req.giftId = KayeWrestlingBarnacle.toInt64(giftId);

    req.toUid = KayeWrestlingBarnacle.toInt64(toUid);

    req.quantity = 1;

    req.begId = KayeWrestlingBarnacle.toInt64(begId ?? 0);
    GeneratedMessage? result = await KAYE.socket.sendWithReturn(
      req,
      autoToastOnError: true,
    );

    if (result != null) {
      KayeSasquatch me = KayeSasquatch();
      me.uid = KAYE.user().uid;
      me.nickName = KAYE.user().nickName;
      me.avatarUrl = KAYE.user().avatarUrl;

      KayeLeadGoalLegally callGift = KayeLeadGoalLegally();
      callGift.from = me;
      callGift.to = _chatCall.user;
      callGift.gift = gift;
      _kayeJavaLeadGoalLegally(callGift);

      if (animationUrl != null && animationUrl.isNotEmpty) {
        Get.toNamed(
          KayeFortress.KayeSVGAPlanner,
          arguments: KayeOutdatedUpon(animationUrl, false),
        );
      }
    } else {}
    if (begId != null) {
      begGiftPsh = null;
      showAskGiftView.value = false;
      update([kaye_wave_legally]);
    }
  }

  RtcEngine getEngine() {
    return rtcManager.getRtcEngine();
  }
}
