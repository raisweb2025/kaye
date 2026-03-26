import 'dart:collection';
import 'dart:io';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_glitter_corpse_tie.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/common.pb.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class KayeKristenGlitterFlattering {
  static List<int>? trackTypes;
  static final List<KayeGlitterCorpseTie> saveWhenNotConnect =
      <KayeGlitterCorpseTie>[];
  static int appStartTime = 0;

  static HashMap<String, int> lastSocketErrorTimeMillis =
      HashMap<String, int>();

  static bool kayeIsJewelryCrud() => KAYE.socketInit && KAYE.socket.isConnected;

  static void kayeOnKristenPancreasUp({bool fromBackground = false}) {
    final guid = KAYE.kayeAmongst.getGUID();
    if (guid.firstStart) {
      kayeKristenPlaybook("FIRST_START");
    } else {
      if (fromBackground) {
        kayeKristenPlaybook("WARM_RESTART");
      } else {
        kayeKristenPlaybook("COLD_RESTART");
      }
    }
    checkCrashLogs();
  }

  static void checkCrashLogs() async {
    final crashLog = KAYE.kayeAmongst.getCrashLog();
    if (crashLog.isNotEmpty) {
      KAYE.kayeAmongst.saveCrashLog("");
      _kayeSendGardenerWasher(crashLog);
    }
    KAYE.callPlatformMethod("getLatestCrashLog").then((log) {
      if (log != null) {
        _kayeSendGardenerWasher(log);
        KAYE.callPlatformMethod("clearCrashLogs");
      }
    });
  }

  static void kayeOnKristenInPile(String pageName) {
    kayeKristenTransmit("HOME_END", pageName: pageName);
  }

  static void kayeWedWasher(String message) {
    kayeGenitalsKristenGlitterCorpse(100, message);
  }

  static void kayeSendWasher(int sourceCode, Object error, StackTrace? stack) {
    String result = kayeNailSmugGardener(error, stack, sourceCode: sourceCode);
    _kayeSendGardenerWasher(result);
  }

  static void _kayeSendGardenerWasher(String result) {
    if (kayeIsJewelryCrud()) {
      kayeGenitalsKristenGlitterCorpse(10, result);
    } else {
      KAYE.kayeAmongst.saveCrashLog(result);
    }
  }

  static String kayeNailSmugGardener(
    Object? error,
    StackTrace? stack, {
    int sourceCode = -10,
  }) {
    if (stack == null) {
      String errorMsg = "NULL";
      if (error != null) errorMsg = error.toString();
      return "$sourceCode|$errorMsg|NULL";
    }
    String stackString = stack.toString().replaceAll('\n', '<br />');
    return "$sourceCode|${error.toString()}|$stackString";
  }

  static void kayeKristenPlaybook(String type) {
    appStartTime = DateTime.now().millisecondsSinceEpoch;
    final content = StringBuffer(type)
      ..write("|")
      ..write(KayeAdvertise.kayeGetawayInvention)
      ..write("|")
      ..write(KayeAdvertise.kayeKristenDedicate)
      ..write("|FLUTTER|")
      ..write(Platform.operatingSystem)
      ..write("|")
      ..write(Platform.localeName)
      ..write("|")
      ..write(DateTime.now().timeZoneName)
      ..write("|")
      ..write(Get.width)
      ..write("|")
      ..write(Get.height);
    kayeGenitalsKristenGlitterCorpse(0, content.toString());
  }

  static void kayeKristenTransmit(String type, {String pageName = ""}) {
    int duration = 0;
    if (appStartTime > 0) {
      duration = DateTime.now().millisecondsSinceEpoch - appStartTime;
    }
    String content = "$type|$pageName|$duration";
    kayeGenitalsKristenGlitterCorpse(1, content);
  }

  static void kayeAttach(String type, {String oauthName = "NULL"}) {
    final content = StringBuffer(type)
      ..write("|")
      ..write(oauthName);

    kayeGenitalsKristenGlitterCorpse(2, content.toString());
  }

  static void kayeTitan() {
    kayeGenitalsKristenGlitterCorpse(3, "");
  }

  static void kayePlayhouseSwimDevelop(String name) {
    final content = StringBuffer("RESUME")
      ..write("|")
      ..write(name);
    kayeGenitalsKristenGlitterCorpse(4, content.toString());
  }

  static void kayePlayhouseSwimTomato(String name, int durationTime) {
    final content = StringBuffer("PAUSE")
      ..write("|")
      ..write(name)
      ..write("|")
      ..write(durationTime);
    kayeGenitalsKristenGlitterCorpse(4, content.toString());
  }

  static void kayeScanPolitical(
    String type,
    String relatedId,
    int preBufferDuration,
    int bufferingTimes,
    int bufferingTotalDuration,
    String closeType,
    int progress, {
    int popupsTimes = 0,
  }) {
    final content = StringBuffer(type)
      ..write("|")
      ..write(relatedId)
      ..write("|")
      ..write(preBufferDuration)
      ..write("|")
      ..write(bufferingTimes)
      ..write("|")
      ..write(bufferingTotalDuration)
      ..write("|")
      ..write(closeType)
      ..write("|")
      ..write(progress)
      ..write("|")
      ..write(popupsTimes);

    kayeGenitalsKristenGlitterCorpse(6, content.toString());
  }

  static void _kayeWunderkindSomeday({
    String name = "",
    String param1 = "0",
    String param2 = "0",
    int durationTime = 0,
  }) {
    var content = StringBuffer(name);
    content.write("|$param1");
    content.write("|$param2");
    content.write("|$durationTime");
    kayeGenitalsKristenGlitterCorpse(7, content.toString());
  }

  static void kayeCuterSufficeVail(int type) {
    _kayeWunderkindSomeday(name: "COUPON_DIALOG", param1: type.toString());
  }

  static void kayeAngleToothbrushSuffice(bool success, {int durationTime = 0}) {
    _kayeWunderkindSomeday(
      name: "AUTO_RECEIVE_COUPON",
      param2: success ? "1" : "0",
      durationTime: durationTime,
    );
  }

  static void kayeComplaintSufficeVail({int durationTime = 0}) {
    _kayeWunderkindSomeday(
      name: "HANDLE_COUPON_DIALOG",
      durationTime: durationTime,
    );
  }

  static void kayeCuterAiGoalIn(int type, int resultType) {
    _kayeWunderkindSomeday(
      name: "SHOW_AI_CALL_IN",
      param1: type.toString(),
      param2: resultType.toString(),
    );
  }

  static void kayeComplaintAiGoalIn(
    int type,
    int resultType, {
    int durationTime = 0,
  }) {
    _kayeWunderkindSomeday(
      name: "HANDLE_AI_CALL_IN",
      param1: type.toString(),
      param2: resultType.toString(),
      durationTime: durationTime,
    );
  }

  static void kayeGoalInJiggle(String param, int resultType) {
    _kayeWunderkindSomeday(
      name: "CALL_IN_BUSY",
      param1: param,
      param2: resultType.toString(),
    );
  }

  static void kayeCuterGoalIn(int resultType, {int durationTime = 0}) {
    _kayeWunderkindSomeday(
      name: "SHOW_CALL_IN",
      param2: resultType.toString(),
      durationTime: durationTime,
    );
  }

  static void kayeComplaintGoalIn(int resultType, {int durationTime = 0}) {
    _kayeWunderkindSomeday(
      name: "HANDLE_CALL_IN",
      param2: resultType.toString(),
      durationTime: durationTime,
    );
  }

  static void kayeGoalEagle(int type, int resultType) {
    _kayeWunderkindSomeday(
      name: "CALL_OUT",
      param1: type.toString(),
      param2: resultType.toString(),
    );
  }

  static void kayeCrowUpAthenaeum(int resultType) {
    _kayeWunderkindSomeday(
      name: "PICK_UP_RESULT",
      param2: resultType.toString(),
    );
  }

  static void kayeWavePlop(int type, int resultType) {
    _kayeWunderkindSomeday(
      name: "ASK_PERMISSION",
      param1: type.toString(),
      param2: resultType.toString(),
    );
  }

  static void kayeCatEccentric(
    String url, {
    int resultCode = 200,
    int durationTime = 0,
    int decryptionTime = 0,
    Object? e,
    StackTrace? s,
  }) {
    String failReason = kayeNailSmugGardener(e, s);

    StringBuffer content = StringBuffer(url)
      ..write("|")
      ..write(resultCode)
      ..write("|")
      ..write(durationTime)
      ..write("|")
      ..write(decryptionTime)
      ..write("|")
      ..write(failReason);
    kayeGenitalsKristenGlitterCorpse(8, content.toString());
  }

  static void _kayeJewelrySomeday({
    String name = "",
    String type = "",
    String result = "",
    int durationTime = 0,
  }) {
    StringBuffer content = StringBuffer(name);
    content.write("|");
    content.write(type);
    content.write("|");
    content.write(result);
    content.write("|");
    content.write(durationTime);
    kayeGenitalsKristenGlitterCorpse(9, content.toString());
  }

  static void socketConnect(String type, String result) {
    _kayeJewelrySomeday(name: "CONNECT", type: type, result: result);
  }

  static void socketDisconnect(int type) {
    _kayeJewelrySomeday(name: "DISCONNECT", type: type.toString());
  }

  static void socketAuth(int type, {int result = 0}) {
    _kayeJewelrySomeday(
      name: "AUTH",
      type: type.toString(),
      result: result.toString(),
    );
  }

  static void socketError(Object error, StackTrace? stack) {
    String errorTypeName = error.runtimeType.toString();
    int lastTime = lastSocketErrorTimeMillis[errorTypeName] ?? 0;
    if (DateTime.now().millisecondsSinceEpoch - lastTime < 5000) return;
    lastSocketErrorTimeMillis[errorTypeName] =
        DateTime.now().millisecondsSinceEpoch;

    String result = kayeNailSmugGardener(error, stack);
    _kayeJewelrySomeday(name: "ERROR_LOG", result: result);
  }

  static void _kayeSprintSomeday({String name = "", String result = ""}) {
    kayeGenitalsKristenGlitterCorpse(13, "$name|$result");
  }

  static void kayeLooselySprint(int fromType) {
    _kayeSprintSomeday(name: "ENTER_PAY", result: fromType.toString());
  }

  static void kayeCuterSuppress(
    int fromType,
    int goodsCount,
    String goodsType,
  ) {
    String result = "$fromType/$goodsCount/$goodsType";
    _kayeSprintSomeday(name: "SHOW_GOODS", result: result);
  }

  static void kayeMorseAthenaeum(int fromType, int result, int durationTime) {
    String string = "$fromType/$result/$durationTime";
    _kayeSprintSomeday(name: "IAP_RESULT", result: string);
  }

  static void kayeMashPeak(String productId, {String priceStr = "0"}) {
    String string = "$productId/$priceStr";
    _kayeSprintSomeday(name: "CLICK_GOOD", result: string);
  }

  static void kayeSprintBlinker(
    int count, {
    String productId = "0",
    double price = 0,
  }) {
    String string = "$count/$price";
    _kayeSprintSomeday(name: "PAY_OPTIONS", result: string);
  }

  static void kayeMashSprint(int payMode, String productId, String priceStr) {
    String string = "$payMode/$productId/$priceStr";
    _kayeSprintSomeday(name: "CLICK_PAY", result: string);
  }

  static void kayeAahH5(
    String orderId,
    int payMode,
    String url,
    bool success,
    int durationTime,
    String errorCode,
  ) {
    int result = success ? 1 : 0;
    String string = "$orderId/$payMode/$url/$result/$durationTime/$errorCode";
    _kayeSprintSomeday(name: "OPEN_H5", result: string);
  }

  static void kayeSprintAthenaeum(int result, {String failReason = "0"}) {
    String string = "$result/$failReason";
    _kayeSprintSomeday(name: "PAY_RESULT", result: string);
  }

  static void kayeSprintAmazon(int result) {
    String string = "$result";
    _kayeSprintSomeday(name: "PAY_CHECK", result: string);
  }

  static bool _kayeAmazonWrestling(int type, String content, int time) {
    if (type == 10) return true;
    if (KAYE.isInitDone) {
      if (KAYE.kayeClosing.isKayeZucchiniDedicate()) return true;
      trackTypes ??= KAYE.kayeClosing.trackTypes;
    }

    if (trackTypes != null) {
      if (kDebugMode) return true;
      return trackTypes!.contains(type);
    } else {
      saveWhenNotConnect.add(KayeGlitterCorpseTie(type, content, time));
      return false;
    }
  }

  static void kayeGenitalsKristenGlitterCorpse(
    int type,
    String content, {
    int time = -1,
  }) async {
    try {
      if (!_kayeAmazonWrestling(type, content, time)) {
        return;
      }

      if (time == -1) {
        time = DateTime.now().millisecondsSinceEpoch;
      }

      final record = KayeGlitterCorpseTie(
        type,
        content,
        DateTime.now().millisecondsSinceEpoch,
      );
      if (kayeIsJewelryCrud()) {
        kayeGenitalsGlitterCorpse(record);
      } else {
        saveWhenNotConnect.add(record);
        if (saveWhenNotConnect.length >= 20) {
          StringBuffer logs = StringBuffer();
          for (var record in saveWhenNotConnect) {
            logs.write(record.type);
            logs.write("|");
            logs.write(record.time);
            logs.write("|");
            logs.write(record.content);
            logs.write("<br />");
          }
          saveWhenNotConnect.clear();
          kayeChokeEuphemism(logs.toString());
        }
      }
    } catch (e, stack) {}
  }

  static void kayeGenitalsGlitterCorpse(KayeGlitterCorpseTie data) {
    final req = AppTrackRecord.create();
    req.guid = KAYE.kayeAmongst.getGUID().guid;
    req.deviceId = KAYE.deviceService.deviceId();
    req.uid = KayeWrestlingBarnacle.toInt64(
      KAYE.kayeOptimal == null ? 0 : KAYE.kayeOptimal!.user.uid,
    );
    req.type = data.type;
    req.time = KayeWrestlingBarnacle.toInt64(data.time);
    req.content = data.content;
    KAYE.socket.sendWithoutResp(req);
  }

  static void onSocketConnect() {
    try {
      if (!kayeIsJewelryCrud()) return;
      if (saveWhenNotConnect.isNotEmpty) {
        KayeGlitterCorpseTie data = saveWhenNotConnect.removeAt(0);
        kayeGenitalsKristenGlitterCorpse(
          data.type,
          data.content,
          time: data.time,
        );
        if (saveWhenNotConnect.isNotEmpty) {
          Future.delayed(const Duration(milliseconds: 200), (() {
            onSocketConnect();
          }));
        }
      }
    } catch (e, stack) {}
  }

  static void kayeChokeEuphemism(String logs) async {
    Map<String, dynamic> params = {
      "uid": KAYE.uidOrZero(),
      "deviceId": KAYE.deviceService.deviceId(),
      "logs": logs,
    };
    KAYE.http
        .submit(1020, params, showLoadingUI: false, autoToastOnError: false)
        .then(
          (value) => logger.w("KayeGlitter kayeChokeEuphemism submit:$value"),
        );
  }

  static void pushNotificationClick(String pushUrl) {
    _kayeWunderkindSomeday(name: "PUSH_URL", param1: pushUrl);
  }

  static void showSnackBar(int snapId) {
    _kayeWunderkindSomeday(name: "SNAP_SHOW_SNACKBAR", param1: "$snapId");
  }

  static void clickSnackBar(int snapId) {
    _kayeWunderkindSomeday(name: "SNAP_ACTION_SNACKBAR", param1: "$snapId");
  }

  static void clickLiveJoin(int liveId) {
    _kayeWunderkindSomeday(name: "JOIN_LIVE", param1: "$liveId");
  }

  static void clickLiveJoinSuccess(int liveId) {
    _kayeWunderkindSomeday(name: "JOIN_LIVE_SUCCESS", param1: "$liveId");
  }

  static void clickLiveEvent(String eventName, int liveId) {
    _kayeWunderkindSomeday(name: eventName, param1: "$liveId");
  }
}
