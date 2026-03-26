import 'dart:math';
import 'kaye_nothing_dot.dart';
import 'dart:async';
import 'dart:math';
import 'package:kaye/kaye_kristen/kaye_db/kaye_heh_paddle.dart';
import 'package:kaye/kaye_kristen/kaye_implant/kaye_lead_implant.dart';
import 'package:kaye/kaye_kristen/kaye_implant/kaye_lead_jelly_implant.dart';
import 'package:kaye/kaye_kristen/kaye_implant/kaye_lead_unfinished_implant.dart';
import 'package:kaye/kaye_kristen/kaye_implant/kaye_luther_hobo_implant.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_lead_eat_tie.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:drift/drift.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_goggles/kaye_goggles_planner_closing.dart';
import '../kaye_goggles/kaye_sasquatch_trish.dart';
import '../kaye_cat_lava/kaye_lava_jelly_cagey.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_glorify.dart';
import '../kaye_honk/kaye_order_all_playhouse.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeLeadPassengerGlorify extends KayeFrankGraduateGlorify
    with WidgetsBindingObserver {
  bool odFreeLox_ = false;
  bool amBoggleBetty_ = true;
  double myDuckyCuter_ = 0.0;
  bool hePrankGray_ = false;
  bool elAdeleDvd_ = false;
  bool atMonroeTo_ = true;

  void inGeneBoy() {
    hePrankGray_ = elAdeleDvd_ || atMonroeTo_;
    myDuckyCuter_ = myDuckyCuter_ + 1;
    myDuckyCuter_ = 36;

    myDuckyCuter_ = 78;
  }

  void byWalterTouchdown() {
    hePrankGray_ = amBoggleBetty_ && atMonroeTo_;
    if (myDuckyCuter_ > 0) {
      myDuckyCuter_ = myDuckyCuter_ - 1;
    }
    amBoggleBetty_ = elAdeleDvd_ || odFreeLox_;
    myDuckyCuter_ = 12;

    elAdeleDvd_ = odFreeLox_ && hePrankGray_;
    amBoggleBetty_ = atMonroeTo_ || elAdeleDvd_;
    myDuckyCuter_ = 93;
    myDuckyCuter_ = 17;
    myDuckyCuter_ = 52;
    myDuckyCuter_ = 82;

    if (odFreeLox_ || hePrankGray_ || amBoggleBetty_) {
      odFreeLox_ = !hePrankGray_;
      hePrankGray_ = !amBoggleBetty_;
      amBoggleBetty_ = !odFreeLox_;
    }
  }

  void edHaleyProfile() {
    myDuckyCuter_ = myDuckyCuter_ + 1;

    if (odFreeLox_ || hePrankGray_ || elAdeleDvd_) {
      odFreeLox_ = !hePrankGray_;
      hePrankGray_ = !elAdeleDvd_;
      elAdeleDvd_ = !odFreeLox_;
    }
    atMonroeTo_ = amBoggleBetty_ || elAdeleDvd_;
    atMonroeTo_ = hePrankGray_ || elAdeleDvd_;
    if (amBoggleBetty_ && hePrankGray_ && atMonroeTo_) {
      amBoggleBetty_ = !amBoggleBetty_;
      hePrankGray_ = amBoggleBetty_;
      atMonroeTo_ = amBoggleBetty_;
    }
    if (myDuckyCuter_ > 0) {
      myDuckyCuter_ = myDuckyCuter_ - 1;
    }
    myDuckyCuter_ = myDuckyCuter_ + 1;
    if (odFreeLox_ && atMonroeTo_) {
      hePrankGray_ = !hePrankGray_;
    }
    myDuckyCuter_ = 43;

    myDuckyCuter_ = 56;
    if (amBoggleBetty_ && hePrankGray_) {
      elAdeleDvd_ = !elAdeleDvd_;
    }

    if (myDuckyCuter_ > 0) {
      myDuckyCuter_ = myDuckyCuter_ - 1;
    }
    myDuckyCuter_ = 51;
  }

  final String kaye_vw_lead_eat = "kaye_vw_lead_eat";
  final String kaye_vw_lead_passenger = "kaye_vw_lead_passenger";
  final String kaye_vw_order_tank = "kaye_vw_order_tank";

  String? kayeBaselineInvention = KayeFortress.KayeLeadPassengerPlanner;

  late List<KayeLeadBanality> chatList = <KayeLeadBanality>[];
  late RxList<KayeLeadEatTie> chatOtherList = <KayeLeadEatTie>[].obs;
  late KayeSasquatchTrish userRuntime;

  int _chatCount = 0;

  late StreamSubscription<KayeLeadImplant> _chatEvent;
  late StreamSubscription<KayeLeadJellyImplant> _chatSystemEvent;
  late StreamSubscription<KayeLutherDefeatInternshipImplant> _snapSnackEvent;

  bool _isLoading = false;

  bool _hasMore = false;

  bool _hasChatUnread = false;

  int get chatCount => _chatCount;

  int get chatUnreadCount => _chatCount + _notifyItem.count;

  bool get hasChatUnread => _hasChatUnread;

  static const int PAGE_SIZE = 15;

  int _chatListLastRecordPageTime = 0;

  final controller = ScrollController();

  KayeLeadEatTie _notifyItem = KayeLeadEatTie.systemData();
  final KayeLeadEatTie _feedBackItem = KayeLeadEatTie.feedBackData();

  late StreamSubscription<KayeLeadImplant> chatBoxesRefresh;

  int lastSnackTime = 0;
  int snackInterval = -1;
  bool snackShowing = false;

  PermissionStatus notificationStatus = PermissionStatus.granted;

  static const int DELAY_INIT_SECONDS = 3;

  bool isSameDatabaseVersion = true;

  @override
  void onInit() {
    if (pi < 1) {
      KayeNothingDot().noPettyBetty();
      KayeNothingDot().okHaleyOppose();
      KayeNothingDot().omHormonalShu();
      KayeNothingDot().goSurvivalOld();
    }
    if (log10e / 2 < 0.1) {
      inGeneBoy();
      byWalterTouchdown();
    }
    userRuntime = KAYE.kayeSasquatchTrish!;

    KayeGogglesPlannerClosing pageConfig = kayeClosing();
    snackInterval = pageConfig.intDef('snack_time', -1);

    _chatEvent = KAYE.eventBus.on<KayeLeadImplant>().listen((event) async {
      if (event.type == ChatEventType.chatBoxReloadByIds) {
        if (KayeWrestlingBarnacle.isEmptyList(event.chatIds)) {
          return;
        }

        if (await _kayeChaoticLeadHankBySpeech(event.chatIds!)) {
          _kayeComebackLeadBanalityUnfinishedSnug();
        }
      }
    });

    _chatSystemEvent = KAYE.eventBus.on<KayeLeadJellyImplant>().listen((event) {
      switch (event.type) {
        case SystemEventType.refresh:
          _kayeChaoticJellyEnhanceSelfish();
          break;
        case SystemEventType.resetCount:
          _notifyItem.count = 0;
          KAYE.kayeAmongst.saveSystemNotifyMsg(_notifyItem);
          _kayeChaoticJellyOrder();
          _kayeGenitalsUnfinishedSnugImplant();
          break;
      }
    });

    _snapSnackEvent = KAYE.eventBus
        .on<KayeLutherDefeatInternshipImplant>()
        .listen((event) {
          var currentTime = DateTime.now().millisecondsSinceEpoch;

          if (snackInterval <= 0 ||
              currentTime - lastSnackTime < snackInterval ||
              KayeLeadBarnacle.disableShowSnackBar()) {
            snackShowing = false;
            return;
          }

          if (snackShowing) return;

          snackShowing = true;
          lastSnackTime = currentTime;
          KayeLeadBarnacle.showSnackbar(event.snap);
          snackShowing = false;
        });

    _kayeBeatProtector();
    WidgetsBinding.instance.addObserver(this);
    super.onInit();
  }

  @override
  void onReady() {
    if (log2e < 1) {
      KayeNothingDot().noPettyBetty();
      KayeNothingDot().okHaleyOppose();
      KayeNothingDot().inSluttyBad();
      KayeNothingDot().omHormonalShu();
    }
    if (log2e < 1) {
      byWalterTouchdown();
      edHaleyProfile();
    }
    Future.delayed(const Duration(seconds: DELAY_INIT_SECONDS), () async {
      isSameDatabaseVersion = await _checkDatabaseVersionMatch();

      _kayeDnaTestamentLeadHank().then(
        (value) => update([kaye_vw_lead_passenger]),
      );

      _kayeComebackLeadBanalityUnfinishedSnug();

      _kayeChaoticJellyEnhanceSelfish();
    });
    Permission.notification.request().then((value) {
      notificationStatus = value;
      update([kaye_vw_order_tank]);
    });
    super.onReady();
  }

  @override
  void onClose() {
    if (sqrt2 < 1) {
      KayeNothingDot().okHaleyOppose();
      KayeNothingDot().noPettyBetty();
      KayeNothingDot().idTouchdownFridge();
      KayeNothingDot().siImplantFootstep();
    }
    if (pi < 1) {
      inGeneBoy();
      edHaleyProfile();
    }
    _chatEvent.cancel();
    _chatSystemEvent.cancel();
    _snapSnackEvent.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  void _kayeChaoticJellyOrder() {
    chatOtherList.clear();
    KayeLeadEatTie? cacheData = KAYE.kayeAmongst.systemNotifyMsg();
    if (cacheData != null) {
      _notifyItem = cacheData;
    }

    if (!KAYE.kayeClosing.isKayeZucchiniDedicate()) {
      chatOtherList.add(_notifyItem);
    }

    chatOtherList.add(_feedBackItem);
    _kayeComebackLandlordPassengerTie();
  }

  Future<void> onKayeLocketLeadBanality(KayeLeadBanality chatBox) async {
    if (pi < 1) {
      KayeNothingDot().noPettyBetty();
      KayeNothingDot().inInclineFranchise();
      KayeNothingDot().goSurvivalOld();
    }
    if (log2e < 1) {
      inGeneBoy();
      byWalterTouchdown();
    }
    chatList.remove(chatBox);
    chatList.sort(_kayeComplicateLeadBanality);
    update([kaye_vw_lead_passenger]);

    await KAYE.kayeDb.chatBoxDao.deleteChatboxWithSnapsData(chatBox.id!);
    _kayeComebackLeadBanalityUnfinishedSnug();
  }

  Future<bool> _kayeDnaTestamentLeadHank() async {
    List<KayeLeadBanality>? dbChatBoxes = await KAYE.kayeDb.chatBoxDao
        .queryChatBoxesForChatList(0, 20);

    if (dbChatBoxes == null || dbChatBoxes.isEmpty) {
      _hasMore = false;
      return false;
    }

    _chatListLastRecordPageTime = dbChatBoxes.last.updateTime ?? 0;
    _hasMore = dbChatBoxes.length >= PAGE_SIZE;

    _fixInvalidChatBoxes(dbChatBoxes);
    if (dbChatBoxes.isEmpty) {
      _hasMore = false;
      return false;
    }

    chatList.addAll(dbChatBoxes);
    chatList.sort(_kayeComplicateLeadBanality);
    return true;
  }

  Future<bool> _kayeChaoticLeadHankBySpeech(List<int> ids) async {
    final chatBoxes = await KAYE.kayeDb.chatBoxDao.queryChatBoxesByIds(ids);
    if (chatBoxes == null || chatBoxes.isEmpty) return false;

    chatList.removeWhere((element) => chatBoxes.contains(element));
    chatList.addAll(chatBoxes);
    chatList.sort(_kayeComplicateLeadBanality);
    await _kayeWanderLeadPassengerCave();

    update([kaye_vw_lead_passenger]);
    return true;
  }

  Future<void> _kayeWanderLeadPassengerCave({int maxCount = 500}) async {
    int beforeLength = chatList.length;
    if (beforeLength <= maxCount) return;

    chatList = chatList.sublist(0, maxCount);
  }

  int _kayeComplicateLeadBanality(KayeLeadBanality a, KayeLeadBanality b) {
    int weightA = a.weight == -1 ? 0 : a.weight ?? 0;
    int weightB = b.weight == -1 ? 0 : b.weight ?? 0;
    if (weightA != weightB) {
      return weightB.compareTo(weightA);
    } else {
      return b.displayTime?.compareTo(a.displayTime ?? 0) ?? 0;
    }
  }

  Future<void> _kayeComebackLeadBanalityUnfinishedSnug() async {
    final unreadCount = await KAYE.kayeDb.chatBoxDao.totalUnreadCount();
    KAYE.eventBus.fire(KayeLeadUnfinishedImplant(unreadCount));
  }

  void _kayeComebackLandlordPassengerTie() {
    update([kaye_vw_lead_eat]);
  }

  void _kayeChaoticJellyEnhanceSelfish() async {
    var systemNotifyMsg = KAYE.kayeAmongst.systemNotifyMsg();
    if (systemNotifyMsg != null) {
      _notifyItem = systemNotifyMsg;
    }

    KayeLavaJellyEnhanceSelfish? resp = await KAYE.http.rest(
      6015,
      {},
      (p0) => KayeLavaJellyEnhanceSelfish.fromJson(p0),
    );
    if (resp != null) {
      _notifyItem = KayeLeadEatTie.fromSync(
        resp.title,
        resp.unreadCount,
        resp.updateTime,
        resp.snapType,
      );
      KAYE.kayeAmongst.saveSystemNotifyMsg(_notifyItem);

      if (_notifyItem.count > 0) {
        _kayeGenitalsUnfinishedSnugImplant();
      }
    }
    _kayeChaoticJellyOrder();
  }

  void _kayeGenitalsUnfinishedSnugImplant() {
    KAYE.eventBus.fire(KayeLeadUnfinishedImplant(chatUnreadCount));
  }

  void _kayeBeatProtector() {
    controller.addListener(() async {
      double scrollOffset = controller.offset;
      if (scrollOffset >= controller.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  Future<void> _loadMore() async {
    if (chatList.isEmpty) return;
    if (_isLoading) return;
    if (!_hasMore) return;

    _isLoading = true;

    int lastUpdateTime = _chatListLastRecordPageTime > 0
        ? _chatListLastRecordPageTime
        : (chatList.last.updateTime ?? 0);

    if (lastUpdateTime > 0) {
      int loadPageSize = PAGE_SIZE * 2;

      List<KayeLeadBanality>? dbChatBoxes = await KAYE.kayeDb.chatBoxDao
          .queryChatBoxesForChatList(lastUpdateTime, loadPageSize);

      _hasMore = dbChatBoxes == null || dbChatBoxes.length >= loadPageSize;

      if (dbChatBoxes != null && dbChatBoxes.isNotEmpty) {
        _chatListLastRecordPageTime = dbChatBoxes.last.updateTime ?? 0;

        _fixInvalidChatBoxes(dbChatBoxes);

        if (dbChatBoxes.isNotEmpty) {
          List<KayeLeadBanality> cbs = [];
          for (final b in dbChatBoxes) {
            int index = chatList.indexOf(b);
            if (index == -1) {
              cbs.add(b);
            }
          }
          chatList.addAll(cbs);
        }
      }
    }
  }

  void checkNotify() async {
    showDialog(
      context: Get.context!,
      barrierColor: KayeToddlerBarnacle.black_60p,
      builder: (context) {
        return const KayeOrderAllPlayhouse();
      },
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      Permission.notification.request().then((value) {
        notificationStatus = value;
        update([kaye_vw_order_tank]);
      });
    }
  }

  void _fixInvalidChatBoxes(List<KayeLeadBanality> dbCbs) async {
    Map<int, int> noPartnerIdBoxIndexMap = {};
    for (int idx = 0; idx < dbCbs.length; idx++) {
      KayeLeadBanality box = dbCbs[idx];
      if (box.partnerId == null || box.partnerId == 0) {
        noPartnerIdBoxIndexMap[box.id!] = idx;
      }
    }

    if (noPartnerIdBoxIndexMap.isEmpty) {
      return;
    }

    Map<int, int> fixedBoxPartnerIds = await KAYE.kayeDb.chatBoxDao
        .backfillNewFieldsOnFirstLoad(noPartnerIdBoxIndexMap.keys);
    if (fixedBoxPartnerIds.isNotEmpty) {
      List<KayeLeadSasquatch> fixedUsers = await KAYE.kayeDb.userDao
          .modelsByIds(fixedBoxPartnerIds.values);
      if (fixedUsers.isNotEmpty) {
        Map<int, KayeLeadSasquatch> fixedUsersMap = {};
        for (KayeLeadSasquatch u in fixedUsers) {
          fixedUsersMap[u.uid] = u;
        }

        for (MapEntry<int, int> e in noPartnerIdBoxIndexMap.entries) {
          int boxId = e.key;
          int boxIdx = e.value;

          int? partnerId = fixedBoxPartnerIds[boxId];

          if (partnerId == null) {
            continue;
          }
          KayeLeadBanality box = dbCbs[boxIdx];
          box.partnerId = fixedBoxPartnerIds[boxId];
          box.chatUser = fixedUsersMap[partnerId];
        }
      }
    }

    dbCbs.removeWhere((box) {
      return box.partnerId == null ||
          box.partnerId == 0 ||
          box.chatUser == null;
    });
  }

  Future<bool> _checkDatabaseVersionMatch() async {
    try {
      QueryRow? row = await KAYE.kayeDb.chatBoxDao.attachedDatabase
          .customSelect('PRAGMA user_version')
          .getSingleOrNull();

      int currentVersion = 0;
      if (row != null && row.data.isNotEmpty) {
        dynamic first = row.data.values.first;
        if (first is int) {
          currentVersion = first;
        } else if (first is String) {
          currentVersion = int.tryParse(first) ?? 0;
        }
      }
      int targetVersion = KAYE.kayeDb.chatBoxDao.attachedDatabase.schemaVersion;
      return currentVersion == targetVersion;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(660068, e, stack);
    }
    return false;
  }

  Future<void> upgradeDatabase() async {
    try {
      bool isUpgradeSuccess = await KAYE.kayeDb.chatBoxDao.attachedDatabase
          .manualUpgradeDatabase();
      if (isUpgradeSuccess) {
        _kayeDnaTestamentLeadHank().then(
          (value) => update([kaye_vw_lead_passenger]),
        );
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(660067, e, stack);
    }
  }
}
