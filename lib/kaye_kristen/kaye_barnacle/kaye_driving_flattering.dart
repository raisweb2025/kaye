import 'dart:async';
import 'dart:collection';
import 'package:kaye/kaye_kristen/kaye_implant/kaye_lead_implant.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_fermion_breach.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_planner_wheaton.dart';
import 'package:kaye/kaye_kristen/proto/auth.pb.dart';
import 'package:kaye/kaye_kristen/proto/kaye_gray.pb.dart';
import 'package:kaye/kaye_kristen/proto/chatbox.pb.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart' as ImOB;
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_franchise_creep_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import 'package:kaye/kaye_kristen/proto/object.pb.dart';
import 'package:kaye/kaye_kristen/proto/snap.pb.dart';
import 'package:kaye/kaye_kristen/proto/sync.pb.dart';
import 'package:drift/drift.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/foundation.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:protobuf/protobuf.dart';
import '../kaye_implant/kaye_lead_jelly_implant.dart';
import '../kaye_cat_lava/kaye_lava_closing.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_delta/kaye_jewelry_lava.dart';
import '../kaye_learning/kaye_alice_upon.dart';
import '../kaye_classy/kaye_hand.dart';
import 'kaye_lead_luther_genitals_cultural.dart';

class KayeDrivingFlattering {
  static const String kaye_driving_sunglass = '/home';
  static const String kaye_driving_lead = '/chat';
  static const String kaye_driving_political = '/video';

  static const String kaye_driving_denim = '/webview';

  static const String kaye_driving_baseline = '/route';

  static const String kaye_driving_jelly = '/sysmsg';

  static const String kaye_driving_sandal_belgian = 'go';
  static const String kaye_driving_sandal_ipad_belgian = 'paramKey';
  static const String kaye_driving_sandal_ipad_blur = 'paramValue';
  static const String kaye_driving_sandal_ipad_wrestling = 'paramType';

  KayeDrivingFlattering._internal();

  static KayeDrivingFlattering? _instance;

  static KayeDrivingFlattering get instance => _getInstance();

  factory KayeDrivingFlattering() => _getInstance();

  static KayeDrivingFlattering _getInstance() {
    return _instance ??= KayeDrivingFlattering._internal();
  }

  bool hasInit = false;
  bool hasUploadToken = false;

  void init(String? appId) {
    if (hasInit) {
      return;
    }

    if (KayeWrestlingBarnacle.isEmpty(appId)) {
      return;
    }

    OneSignal.initialize(appId!);
    if (kDebugMode) {
      OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    }
    OneSignal.Notifications.clearAll();
    _initListener();
    hasInit = true;
    pushUserExternalId();
  }

  void _initListener() {
    OneSignal.User.pushSubscription.addObserver((stateChanges) {
      uploadToken();
    });

    OneSignal.User.addObserver((stateChanges) {});

    OneSignal.Notifications.addForegroundWillDisplayListener((event) {
      event.preventDefault();
    });

    OneSignal.Notifications.addClickListener((event) {
      OSNotification notification = event.notification;
      try {
        var actionUrl = notification.additionalData?["url"];
        if (!KayeWrestlingBarnacle.isEmpty(actionUrl)) {
          KayeKristenGlitterFlattering.pushNotificationClick(actionUrl);
          handlePushNotification(actionUrl!);
        }
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(10093, e, stack);
      }
      OneSignal.Notifications.clearAll();
    });
  }

  void pushUserExternalId() {
    if (!hasInit) return;
    if (!KAYE.isInitDone) return;

    int uid = KAYE.user().uid;
    if (uid > 0) {
      OneSignal.login("$uid");
      uploadToken();
    }
  }

  void pushUserEmail() {
    OneSignal.User.addEmail("");
  }

  void pushUserRegion() {
    OneSignal.User.addTagWithKey("region", KAYE.user().regionCode);
  }

  void dispose() {
    OneSignal.Notifications.removeClickListener((event) {});
    OneSignal.Notifications.removeForegroundWillDisplayListener((event) {});
  }

  void logout() {}

  void handlePushNotification(String actionUrl) {
    if (!actionUrl.startsWith('http')) return;

    Uri actionUri = Uri.parse(actionUrl);
    Map queryParameters = _urlParameters(actionUri);

    if (actionUrl.contains(kaye_driving_lead)) {
      String? goValue = _parseParameterValueFromKey(
        actionUri,
        kaye_driving_sandal_belgian,
      );
      int cid = _parseIntByValue(goValue);
      if (cid > 0) {
        KayeLeadPlannerPlaybookUp.openChatWithCid(cid);
      }
    } else if (actionUrl.contains(kaye_driving_baseline)) {
      Map<String, dynamic> qpMap = _parseAllKey2Value(queryParameters);
      if (KayeWrestlingBarnacle.isEmptyMap(qpMap)) return;
      if (qpMap.containsKey(kaye_driving_sandal_belgian)) {
        KAYE.toNamed(qpMap[kaye_driving_sandal_belgian], arguments: qpMap);
      }
    } else if (actionUrl.contains(kaye_driving_jelly)) {
      KAYE.toNamed(KayeFortress.KayeJellyOrderPlanner);
    } else {}
  }

  String? _parseParameterValueFromKey(Uri uri, String key) {
    Map urlParameters = _urlParameters(uri);
    if (urlParameters.containsKey(key)) {
      return uri.queryParameters[key];
    }
    return null;
  }

  Map _urlParameters(Uri uri) {
    Map queryParameters = uri.queryParameters;
    return queryParameters;
  }

  Map<String, dynamic> _parseAllKey2Value(Map queryParameters) {
    Map<String, dynamic> entry = HashMap();
    var entries = queryParameters.entries.iterator;
    while (entries.moveNext()) {
      var curr = entries.current;
      var currentKey = curr.key.toString();
      var currentValue = curr.value;
      entry[currentKey] = currentValue;
    }
    return entry;
  }

  int _parseIntByValue(String? value) {
    if (!KayeWrestlingBarnacle.isEmpty(value)) {
      return KayeWrestlingBarnacle.parseInt(value) ?? 0;
    }
    return 0;
  }

  Future<void> uploadToken() async {
    if (hasUploadToken) return;

    if (KAYE.kayeOptimal == null) return;

    var token = OneSignal.User.pushSubscription.token;

    if (KayeWrestlingBarnacle.isEmpty(token)) return;

    bool rsp = await KAYE.http.submit(1019, {"token": token});
    if (rsp) {
      hasUploadToken = true;
    }
  }
}
