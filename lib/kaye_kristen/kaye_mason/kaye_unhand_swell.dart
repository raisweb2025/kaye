import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:android_id/android_id.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_amongst.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile_device_identifier/mobile_device_identifier.dart';
import 'package:uuid/uuid.dart';
import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_attribution.dart';
import 'package:adjust_sdk/adjust_config.dart';

import '../kaye_goggles/kaye_ethical_jock_ad_selfish.dart';
import '../kaye_goggles/kaye_goggles_quench_selfish.dart';
import 'package:convert/convert.dart';
import 'package:flutter/foundation.dart';

import 'kaye_kristen_glitter_flattering.dart';

class KayeUnhandSwell {
  late KayeAmongst storage;

  late KayeGogglesQuenchSelfish _clientInfo;

  bool _kayeKokoHipJockSelfish = false;

  KayeGogglesJockAdSelfish? _adjustAdInfo;

  KayeUnhandSwell(this.storage);

  Future<KayeUnhandSwell> init() async {
    _clientInfo = await _initClientInfo();
    return this;
  }

  void initAdjust() {
    AdjustConfig config = AdjustConfig(
      KayeAdvertise.kayeJockId,
      KayeAdvertise.kayeElsewhere
          ? AdjustEnvironment.production
          : AdjustEnvironment.sandbox,
    );
    config.logLevel = KayeAdvertise.kayeElsewhere
        ? AdjustLogLevel.suppress
        : AdjustLogLevel.verbose;
    config.isSendingInBackgroundEnabled = true;
    try {
      config.externalDeviceId = _clientInfo.device_id!;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10061, e, stack);
    }

    config.attributionCallback = (AdjustAttribution attributionChangedData) {
      Adjust.getAdid().then((String? adid) {
        _adjustAdInfo = KayeGogglesJockAdSelfish(
          attributionChangedData.trackerToken,
          attributionChangedData.trackerName,
          attributionChangedData.network,
          attributionChangedData.campaign,
          attributionChangedData.adgroup,
          attributionChangedData.creative,
          attributionChangedData.clickLabel,
          adid,
          attributionChangedData.costType,
          attributionChangedData.costAmount?.toString(),
          attributionChangedData.costCurrency,
        );

        _clientInfo.ad_info = json.encode(_adjustAdInfo);
        storage.saveClientInfo(_clientInfo);

        uploadAdjustInfo();
      });
    };

    if (KAYE.kayeSasquatchTrish != null) {
      Adjust.addGlobalCallbackParameter("user_id", "${KAYE.uid()}");
    }
    Adjust.initSdk(config);
  }

  void onResume() {
    Adjust.onResume();
  }

  void onPause() {
    Adjust.onPause();
  }

  String deviceId() {
    return _clientInfo.device_id!;
  }

  KayeGogglesQuenchSelfish getClientInfo() {
    return _clientInfo;
  }

  Future<KayeGogglesQuenchSelfish> _initClientInfo() async {
    KayeGogglesQuenchSelfish? ci = storage.clientInfo();
    if (ci != null) {
      return ci;
    }

    ci = KayeGogglesQuenchSelfish();
    ci.version = KayeAdvertise.kayeKristenDedicate;
    ci.appPackage = KayeAdvertise.kayeGetawayInvention;

    try {
      FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
      Size size = view.physicalSize;
      ci.screen_width = size.width.toInt();
      ci.screen_height = size.height.toInt();
      ci.px_ratio = view.devicePixelRatio;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10062, e, stack);
    }

    int utc = DateTime.now().timeZoneOffset.inHours;
    ci.timeZoneId = utc < 0 ? "$utc" : "+$utc";

    ci.lang =
        "${PlatformDispatcher.instance.locale.languageCode}_${PlatformDispatcher.instance.locale.countryCode}";

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    String? deviceId;
    if (Platform.isAndroid) {
      ci.platform = "android";

      AndroidDeviceInfo? info;
      try {
        info = await deviceInfo.androidInfo;
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(10063, e, stack);
      }
      ci.brand = info?.brand ?? "";
      ci.model = info?.model ?? "";
      ci.system = "Android(${info?.version.sdkInt?.toString() ?? ""})";

      ci.infoPlus = info == null ? "" : json.encode(info?.toMap());
      ci.vm = info == null ? 0 : (info.isPhysicalDevice ? 0 : 1);
      ci.low_mem = info == null ? 0 : (info.isLowRamDevice ? 1 : 0);
      deviceId = await const AndroidId().getId();
    } else {
      ci.platform = "ios";

      IosDeviceInfo? info;
      try {
        info = await deviceInfo.iosInfo;
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(10064, e, stack);
      }

      ci.brand = info?.systemVersion ?? "";
      ci.model = info?.model ?? "";
      ci.system = info?.systemName ?? "";
      ci.infoPlus = info == null ? "" : json.encode(info.data);
      ci.vm = info == null ? 0 : (info.isPhysicalDevice ? 0 : 1);
    }

    deviceId = await _safeDeviceId(deviceId);
    ci.device_id = "${ci.appPackage}${deviceId}";

    storage.saveClientInfo(ci);

    return ci;
  }

  static Future<String> _safeDeviceId(String? deviceId) async {
    if (deviceId == null) {
      deviceId = await MobileDeviceIdentifier().getDeviceId();

      deviceId ??= const Uuid().v4();
    }

    return deviceId;
  }

  Future<KayeGogglesJockAdSelfish?> _loadAdjustAdInfo() async {
    if (_adjustAdInfo == null) {
      AdjustAttribution attribution = await Adjust.getAttribution();
      final String? adid = await Adjust.getAdid();
      if (adid != null && adid.isNotEmpty) {
        _adjustAdInfo = KayeGogglesJockAdSelfish(
          attribution.trackerToken,
          attribution.trackerName,
          attribution.network,
          attribution.campaign,
          attribution.adgroup,
          attribution.creative,
          attribution.clickLabel,
          adid,
          attribution.costType,
          attribution.costAmount?.toString(),
          attribution.costCurrency,
        );
      }
    }

    return _adjustAdInfo;
  }

  void uploadAdjustInfo() {
    _loadAdjustAdInfo().then((value) async {
      if (value == null) {
        return;
      }

      if (KAYE.kayeOptimal == null) {
        return;
      }

      if (_kayeAmazonKokoHipJockSelfish()) {
        return;
      }

      bool result = await KAYE.http.submit(1017, {
        "ad_info": json.encode(value.toJson()),
      });
      if (result) {
        _kayeMisterKokoHipJockSelfish();
      }
    });
  }

  bool _kayeAmazonKokoHipJockSelfish() {
    if (_kayeKokoHipJockSelfish) {
      return true;
    }

    String key =
        KayeAmongst.kaye_amongst_belgian_koko_hip_jock_selfish +
        KAYE.uid().toString();
    int val = storage.get(key, 0);
    _kayeKokoHipJockSelfish = val > 0;
    return _kayeKokoHipJockSelfish;
  }

  void _kayeMisterKokoHipJockSelfish() {
    _kayeKokoHipJockSelfish = true;
    String key =
        KayeAmongst.kaye_amongst_belgian_koko_hip_jock_selfish +
        KAYE.uid().toString();
    storage.set(key, 1);
  }
}
