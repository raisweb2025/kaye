import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_event.dart';
import 'package:kaye/kaye_kristen/kaye_cable.dart';
import 'package:kaye/kaye_kristen/kaye_cat_lava/kaye_lava_closing.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_attach_order.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_attach_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_quench_selfish.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_trish.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_trish_comeback_order.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_jewelry.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_george_kristen.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_unhand_swell.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_trade_vikram.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_political_lead_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_washer_athletic.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sprint_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_driving_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_marijuana_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_aihelp/flutter_aihelp.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as Path;
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../kaye_cat_lava/kaye_lava_attach.dart';
import '../kaye_goggles/kaye_kristen_closing.dart';
import '../kaye_goggles/kaye_closing.dart';
import '../kaye_goggles/kaye_optimal.dart';
import '../kaye_goggles/kaye_sasquatch_suffice.dart';
import '../kaye_delta/kaye_cat.dart';
import '../kaye_delta/kaye_jewelry_guinea_emotion.dart';
import '../kaye_learning/kaye_gene_float_candle.dart';
import '../kaye_learning/kaye_alice_upon.dart';
import '../kaye_fortress.dart';
import '../proto/kaye_gray.pb.dart';
import '../proto/common.pb.dart';
import '../proto/object.pb.dart';
import 'kaye_db.dart';
import 'kaye_amongst.dart';

class KayeStroke {
  EventBus eventBus = EventBus(sync: false);

  void fire(dynamic event) {
    eventBus.fire(event);
  }

  StreamSubscription<T> listen<T>(
    void Function(T event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return eventBus.on<T>().listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  late KayeAmongst kayeAmongst;

  late KayeCat http;

  late KayeUnhandSwell deviceService;

  bool socketInit = false;
  late KayeJewelry socket;

  MethodChannel? methodChannel;

  late String filePath;
  late String cachePath;
  late String rootPath;

  late String userPath;

  late KayeDb kayeDb;

  KayeOptimal? kayeOptimal;

  KayeSasquatchTrish? kayeSasquatchTrish;

  late KayeClosing kayeClosing;

  bool isInitDone = false;

  bool isDBInitDone = false;

  Future<void> init() async {
    kayeAmongst = await KayeAmongst().init(KayeAdvertise.kayeKristenInvention);
    filePath = (await getApplicationDocumentsDirectory()).path;
    cachePath = (await getApplicationCacheDirectory()).path;
    rootPath = Path.join(filePath, "app");

    kayeOptimal = kayeAmongst.session();
    if (kayeOptimal != null) {
      kayeSasquatchTrish = kayeAmongst.userRuntime(kayeOptimal!.user.uid);

      await _kayeHousewifeSasquatchDeadly();
    }

    deviceService = await KayeUnhandSwell(kayeAmongst).init();

    KayeLavaClosing? cachedConfig = kayeAmongst.respConfig();

    http = _buildKayeCat(cachedConfig?.router.http);

    deviceService.initAdjust();

    await refreshKayeClosing(
      quickRefresh: false,
      onResume: false,
      cachedConfig: cachedConfig,
    );

    KayeDrivingFlattering.instance.init(kayeClosing.getPushKey());

    KayeRTCFlattering.instance.init();

    KayeJewelryGuineaEmotion.init();
    socket = KayeJewelry();
    socket.start();
    socketInit = true;

    eventBus.on<KayeAttachOrder>().listen(_onKayeAttachOrder);
    eventBus.on<UserRuntimePSH>().listen(_onKayeSasquatchTrishPSH);
    eventBus.on<AlertNotify>().listen((event) {
      if (event.hasMsg()) {
        Get.defaultDialog(
          title: "",
          middleText: event.msg,
          onConfirm: Get.back,
          titleStyle: const TextStyle(fontSize: 1),
        );
      }
    });
    eventBus.on<PopupNotify>().listen((event) {
      switch (event.type) {
        case PopupNotify_PopupNotifyType.COMMON_POPUP:
          KayeDotSee.alert(title: event.title, middleText: event.msg);
          break;
        case PopupNotify_PopupNotifyType.COMMON_SNACKBAR:
          Get.snackbar(
            event.title,
            event.msg,
            icon: KayeAutographSydney(url: event.icon),
            backgroundColor: Colors.white,
          );
          break;
        case PopupNotify_PopupNotifyType.COIN_REWARD:
          Get.toNamed(
            KayeFortress.KayeGeneFloatPlanner,
            arguments: KayeGeneFloatCandle(event.title, event.msg.tr),
          );
          break;
        default:
          KayeDotSee.alert(title: event.title, middleText: event.msg);
          break;
      }
    });

    KayeSasquatchQuackFaxFlattering().start();

    _initMethodChannelCall();
    if (Platform.isAndroid) {
      _loadInstallReferrer();
    }

    if (kayeOptimal != null) {
      KayeSprintFlattering.instance.kayeEmotion();
      KayeSprintFlattering.instance.kayeChaoticFrontBlinker();

      initCustom();
    }

    isInitDone = true;
    KayeKristenGlitterFlattering.kayeOnKristenPancreasUp();
  }

  String rootRouteName = KayeFortress.KayeCompassionPlanner;

  goto(String routeUrl) {
    if (routeUrl.startsWith("/")) {
      KAYE.toNamed(routeUrl);
    } else if (routeUrl.startsWith("http")) {
      KAYE.toNamed(
        KayeFortress.KayeFlushPlanner,
        arguments: KayeFlushUpon(
          "",
          routeUrl,
          showHtmlTitle: true,
          showNavbar: true,
        ),
      );
    } else if (routeUrl.startsWith("xhttp")) {
      String url = routeUrl.substring(1);
      try {
        final Uri? uri = Uri.tryParse(url.trimLeft());
        if (uri != null) {
          launchUrl(uri);
        }
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(50001, e, stack);
      }
    } else if (routeUrl.startsWith("t://")) {
      try {
        String url = routeUrl.substring("t://".length);
        launch(url);
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(50002, e, stack);
      }
    } else {
      KayeGeorgeKristen? app = KayeGeorgeKristen.fromUrl(routeUrl);
      if (app != null) {
        KAYE.toNamed(KayeFortress.KayeGeorgeKristenPlanner, arguments: app);
      } else {}
    }
  }

  toRoot(String newRouteName, {dynamic arguments}) {
    if (rootRouteName != newRouteName) {
      rootRouteName = newRouteName;
    }
    if (Get.currentRoute != newRouteName) {
      return Get.offAllNamed(newRouteName, arguments: arguments);
    }
  }

  Future<T?>? toNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) {
    if (KayeFortress.perCheck(page)) {
      return null;
    }
    return Get.toNamed<T>(
      page,
      arguments: arguments,
      id: id,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
    );
  }

  Future<T?>? offNamed<T>(
    String page, {
    dynamic arguments,
    int? id,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
  }) {
    if (KayeFortress.perCheck(page)) {
      return null;
    }
    return Get.offNamed<T>(
      page,
      arguments: arguments,
      id: id,
      preventDuplicates: preventDuplicates,
      parameters: parameters,
    );
  }

  void toTabUp(String routeName) {
    Get.offNamedUntil(routeName, (Route<dynamic> route) {
      if (route.settings.name == KayeFortress.KayeInclinePlanner) {
        return true;
      }
      return false;
    });
  }

  void home() {
    toRoot(KayeFortress.KayeInclinePlanner);
  }

  Future<void> _onKayeAttachOrder(KayeAttachOrder event) async {
    if (event.result == KayeAttachAthenaeum.INIT) {
      toRoot(KayeFortress.KayeAttachPlanner);
    } else if (event.result == KayeAttachAthenaeum.SUCC) {
      if (event.respLogin != null) {
        await _onKayeLavaAttach(event.respLogin!);
      }
      home();
      KayeKristenGlitterFlattering.socketAuth(3);
      socket.auth();
    } else if (event.result == KayeAttachAthenaeum.LOGOUT) {
      if (isDBInitDone) {
        kayeDb.dispose();
      }
      KayeLeadFlattering.instance.dispose();
      KayePoliticalLeadFlattering.instance.dispose();
      kayeAmongst.removeSession();
      kayeOptimal = null;
      http.dispose();
      http = _buildKayeCat(kayeClosing.http);

      socket.reconnect("logout");

      toRoot(KayeFortress.KayeAttachPlanner);
    } else if (event.result == KayeAttachAthenaeum.BLOCK) {
      toRoot(KayeFortress.KayeCompassionPlanner);
      EasyLoading.show(status: "Loading".tr, dismissOnTap: false);
    } else {
      toRoot(KayeFortress.KayeAttachPlanner);
    }
  }

  Future<void> _onKayeLavaAttach(KayeLavaAttach resp) async {
    _kayeNamasteLavaAttach(resp);

    await _kayeHousewifeSasquatchDeadly();

    http.dispose();
    http = _buildKayeCat(kayeClosing.http);

    KayeSprintFlattering.instance.kayeEmotion();
    KayeSprintFlattering.instance.kayeChaoticFrontBlinker();

    AdjustEvent event = AdjustEvent(KayeAdvertise.kayeJockAttachImplant);
    event.addCallbackParameter("user_id", "${uid()}");
    Adjust.trackEvent(event);

    initCustom();
  }

  void _kayeNamasteLavaAttach(KayeLavaAttach resp) {
    kayeOptimal = KayeOptimal()
      ..secret = resp.secret
      ..session = resp.session
      ..user = resp.user;
    kayeSasquatchTrish = resp.runtime;

    kayeAmongst.saveSession(kayeOptimal!);
    kayeAmongst.saveUserRuntime(kayeOptimal!.user.uid, resp.runtime);
  }

  void updateLocalUserBirthday(String birthday) {
    if (kayeOptimal == null || KayeWrestlingBarnacle.isEmpty(birthday)) {
      return;
    }
    kayeOptimal!.user.birthday = birthday;
    kayeAmongst.saveSession(kayeOptimal!);
  }

  KayeCat _buildKayeCat(List<HttpServerVO>? httpServers) {
    String apiAddress = KayeAdvertise.kayeOldBuying;
    if (httpServers != null && httpServers.isNotEmpty) {
      int random = Random.secure().nextInt(100);
      for (HttpServerVO vo in httpServers) {
        random -= vo.weight;
        if (random <= 0) {
          apiAddress = "${vo.url}:${vo.port}${KayeAdvertise.kayeOldWhite}";
          break;
        }
      }
    }

    return KayeCat.create(
      kayeOptimal == null
          ? KayeAdvertise.kayeSoleEquivalentBelgian
          : kayeOptimal!.secret,
      kayeOptimal?.session,
      apiAddress,
      deviceService.getClientInfo().userAgent,
    );
  }

  Future<void> refreshKayeClosing({
    bool quickRefresh = false,
    bool onResume = false,
    KayeLavaClosing? cachedConfig,
  }) async {
    cachedConfig ??= kayeAmongst.respConfig();

    KayeLavaClosing freshConfig = await _refreshKayeLavaClosing(
      cachedConfig,
      quickRefresh,
    );

    KayeTradeVikram().updateWithUpgradeResponse(freshConfig.i18ns);

    kayeClosing = KayeClosing()
      ..iav = freshConfig.iav != KayeCable.kaye_forgot_ibiza
      ..ai = freshConfig.ai == 1
      ..httpConfig = freshConfig.httpConfig
      ..trackTypes = freshConfig.trackTypes
      ..busyPageConfig = freshConfig.busyPageConfig
      ..socket = freshConfig.router.socket
      ..http = freshConfig.router.http
      ..ngc = freshConfig.ngc
      ..configs = KayeKristenClosing.fromJson(freshConfig.configs.val)
      ..gifts = (freshConfig.gifts.val as List<dynamic>)
          .map((e) => VoGift.fromJson(e))
          .toList()
      ..imageSize = freshConfig.imageSize;

    int prevAppConfigVersion = cachedConfig != null
        ? cachedConfig.configs.version
        : 0;
    if (onResume) {
      if (prevAppConfigVersion != freshConfig.configs.version) {
        fire(kayeClosing.configs);
      }
    }
  }

  Future<KayeLavaClosing> _refreshKayeLavaClosing(
    KayeLavaClosing? cfg,
    bool quickRefresh,
  ) async {
    KayeGogglesQuenchSelfish clientInfo = deviceService.getClientInfo();

    int i18nVersion = 0;
    int cfgVersion = 0;
    int giftVersion = 0;

    late Duration timeout;
    if (cfg != null) {
      i18nVersion = cfg.i18ns.version;
      cfgVersion = cfg.configs.version;
      giftVersion = cfg.gifts.version;
      timeout = const Duration(seconds: 3);
    } else {
      timeout = const Duration(seconds: 5);
    }

    do {
      int apiId;
      Map<String, dynamic> params = {
        "iav": cfg == null ? KayeCable.kaye_forgot_susan : cfg.iav,
        "i18n_version": i18nVersion,
        "cfg_version": cfgVersion,
        "gift_version": giftVersion,
      };

      if (kDebugMode) {
        params["debug"] = 1;
      }

      if (quickRefresh && cfg != null && kayeOptimal != null) {
        apiId = 1012;
        params["package_name"] = KayeAdvertise.kayeGetawayInvention;
        params["client_version"] = KayeAdvertise.kayeKristenDedicate;
        params["device_id"] = clientInfo.device_id;
        params["lang"] = clientInfo.lang;
      } else {
        apiId = 1010;
        params["client_info"] = clientInfo.toJsonString();
      }

      KayeLavaClosing? rsp = await http.rest(
        apiId,
        params,
        (p) {
          return KayeLavaClosing.fromJson(p);
        },
        autoToastOnError: cfg == null,
        timeout: timeout,
      );

      if (rsp != null) {
        if (cfg != null) {
          cfg.upgrade(rsp);
        } else {
          cfg = rsp;
        }
        kayeAmongst.saveRespConfig(cfg);
      } else {
        if (cfg == null) {
          await 1.delay();
        }
      }
    } while (cfg == null);

    return cfg;
  }

  int uid() {
    if (kayeOptimal == null) {
      fire(KayeAttachOrder(KayeAttachAthenaeum.LOGOUT));
      return 0;
    }
    return kayeOptimal!.user.uid;
  }

  int uidOrZero() {
    if (kayeOptimal == null) {
      return 0;
    }
    return kayeOptimal!.user.uid;
  }

  bool isVip() {
    return kayeSasquatchTrish != null && kayeSasquatchTrish!.vip();
  }

  int uCodeInt() {
    if (kayeOptimal == null) {
      fire(KayeAttachOrder(KayeAttachAthenaeum.LOGOUT));
      return 0;
    }
    return KayeWrestlingBarnacle.stringToInt(kayeOptimal!.user.ucode) ?? 0;
  }

  KayeAttachSasquatch user() {
    if (kayeOptimal == null) {
      fire(KayeAttachOrder(KayeAttachAthenaeum.LOGOUT));
      return KayeAttachSasquatch();
    }
    return kayeOptimal!.user;
  }

  Future<void> _kayeHousewifeSasquatchDeadly() async {
    userPath = Path.join(filePath, KAYE.uid().toString());
    KayeDb dbServices = KayeDb();
    await dbServices.init();
    kayeDb = dbServices;

    KayeLeadFlattering.instance.init();
    KayePoliticalLeadFlattering.instance.init();

    KayeDrivingFlattering.instance.pushUserExternalId();

    isDBInitDone = true;
  }

  Future<void> onKayeTitan() async {
    await KAYE.http.submit(
      2015,
      {},
      showLoadingUI: true,
      autoToastOnError: true,
      timeout: const Duration(seconds: 3),
    );
    KAYE.fire(KayeAttachOrder(KayeAttachAthenaeum.LOGOUT));
  }

  Future<void> onKayeWasherBoom() async {
    await KAYE.http.submit(
      2016,
      {},
      showLoadingUI: true,
      autoToastOnError: true,
      timeout: const Duration(seconds: 3),
    );
    KAYE.fire(KayeAttachOrder(KayeAttachAthenaeum.LOGOUT));
  }

  Future<void> onKayeMe() async {
    KayeLavaAttach? resp = await KAYE.http.rest(
      2020,
      {},
      (p0) => KayeLavaAttach.fromJson(p0),
      showLoadingUI: false,
      autoToastOnError: false,
      timeout: const Duration(seconds: 3),
    );
    if (resp != null) {
      _kayeNamasteLavaAttach(resp);
    }
  }

  KayeSasquatchSuffice? receivables() {
    if (kayeOptimal == null) return null;
    try {
      return kayeSasquatchTrish?.kayeKokoParasiteSuffice();
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(50003, e, stack);
      return null;
    }
  }

  bool usable() {
    return kayeSasquatchTrish?.kayeKokoWhoaSuffice() ?? false;
  }

  void _onKayeSasquatchTrishPSH(UserRuntimePSH psh) {
    if (kayeSasquatchTrish == null || kayeOptimal == null) {
      return;
    }

    if (psh.type < 0 || psh.type > 4) {
      return;
    }

    int userId = kayeOptimal!.user.uid;
    if (psh.type == 0 || psh.type == 1) {
      kayeSasquatchTrish!.noDisturb = psh.noDisturb;
    }
    if (psh.type == 0 || psh.type == 2) {
      kayeSasquatchTrish!.balance = psh.balance.toInt();
      kayeSasquatchTrish!.hadPaid = psh.hadPaid;
    }
    if (psh.type == 0 || psh.type == 3) {
      kayeSasquatchTrish!.vipExpire = DateTime.fromMillisecondsSinceEpoch(
        psh.vipExpire.toInt(),
      );
    }

    if (psh.type == 0 || psh.type == 4) {
      if (psh.coupons.isEmpty) {
        kayeSasquatchTrish!.coupons = [];
      } else {
        List<KayeSasquatchSuffice> coupons = [];
        for (UserCoupon uc in psh.coupons) {
          KayeSasquatchSuffice c = KayeSasquatchSuffice()
            ..id = uc.id.toInt()
            ..couponId = uc.couponId.toInt()
            ..diamondAmount = uc.diamondAmount.toInt()
            ..status = uc.status.toInt()
            ..vipDuration = uc.vipDuration.toInt()
            ..expireTime = DateTime.fromMillisecondsSinceEpoch(
              uc.expireTime.toInt(),
            );
          coupons.add(c);
        }
        kayeSasquatchTrish!.coupons = coupons;
      }
      KayePoliticalLeadFlattering.instance.kayeAmazonCuterSuffice();
    }

    kayeAmongst.saveUserRuntime(userId, kayeSasquatchTrish!);
    fire(KayeSasquatchTrishComebackOrder(kayeSasquatchTrish!));
  }

  void kayeComebackSasquatchNoCern(int noDisturb) {
    kayeSasquatchTrish!.noDisturb = noDisturb;
    kayeAmongst.saveUserRuntime(uid(), kayeSasquatchTrish!);
    fire(KayeSasquatchTrishComebackOrder(kayeSasquatchTrish!));
  }

  Future<dynamic> callPlatformMethod(
    String methodName, [
    dynamic arguments,
  ]) async {
    try {
      if (methodChannel == null) {}
      return await methodChannel?.invokeMethod(methodName, arguments);
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(50004, e, stack);
    }
  }

  void _initMethodChannelCall() {
    methodChannel = const MethodChannel(KayeAdvertise.kayeForkliftDoughScott);
    methodChannel?.setMethodCallHandler((call) async {
      if (Platform.isAndroid) {
        if (call.method == 'installReferrer') {
          String installReferrer = call.arguments['installReferrer'];
          if (!KayeWrestlingBarnacle.isEmpty(installReferrer)) {
            kayeAmongst.setInstallReferrer(installReferrer);
          }
          _requestUpdateInstallReferrer();
        }
      }
    });
  }

  void _loadInstallReferrer() {
    callPlatformMethod("getInstallReferrer");
  }

  void _requestUpdateInstallReferrer() {
    String installReferrer = kayeAmongst.getInstallReferrer();
    if (kayeOptimal == null || KayeWrestlingBarnacle.isEmpty(installReferrer)) {
      return;
    }

    KAYE.http.submit(1018, {"install_referrer": installReferrer});
  }
}

void initCustom() {
  if (Platform.isIOS) {
    FlutterAihelp().initQA(
      KAYE.user().ucode,
      KAYE.user().nickName,
      KayeAdvertise.kayeAiOrangesAbove,
      KayeAdvertise.kayeAiOrangesId,
      KayeAdvertise.kayeAiOrangesBelgian,
    );
  } else {
    KAYE.callPlatformMethod("showQA", <String, dynamic>{
      'ucode': KAYE.user().ucode,
      'nickName': KAYE.user().nickName,
      'qa_domain': KayeAdvertise.kayeAiOrangesAbove,
      'qa_app_id': KayeAdvertise.kayeAiOrangesId,
      'qa_app_key': KayeAdvertise.kayeAiOrangesBelgian,
      'qa_app_show_dialog': "0",
    });
  }
}

final KayeStroke KAYE = KayeStroke();

class KayeAgainstDunphys extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return kDebugMode;
  }
}

final Logger logger = Logger(
  filter: KayeAgainstDunphys(),
  printer: HybridPrinter(
    KayeWasherAthletic(),
    error: PrettyPrinter(
      methodCount: 10,
      errorMethodCount: 8,
      lineLength: 80,
      colors: true,
      printEmojis: false,
      printTime: true,
    ),
  ),
);
