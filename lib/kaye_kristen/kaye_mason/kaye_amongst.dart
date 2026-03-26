import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_cat_lava/kaye_lava_closing.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_quench_selfish.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_blinker_marge.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_mover.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_trish.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_optimal.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_dedicate_tie.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_derision.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

import '../kaye_goggles/kaye_lead_eat_tie.dart';
import '../kaye_goggles/kaye_bungee.dart';
import '../kaye_goggles/kaye_goggles_mitten.dart';

class KayeAmongst {
  late GetStorage g;

  static const String kaye_amongst_belgian_lava_closing =
      "kaye_amongst_belgian_lava_closing";
  static const String kaye_amongst_belgian_optimal =
      "kaye_amongst_belgian_optimal";
  static const String kaye_amongst_belgian_trish_ =
      "kaye_amongst_belgian_trish_";
  static const String kaye_amongst_belgian_quench_selfish =
      "kaye_amongst_belgian_quench_selfish";
  static const String kaye_amongst_belgian_koko_hip_jock_selfish =
      "kaye_amongst_belgian_koko_hip_jock_selfish";
  static const String kaye_amongst_belgian_kristen_bungee =
      "kaye_amongst_belgian_kristen_bungee";
  static const String kaye_amongst_belgian_kristen_send_washer =
      "kaye_amongst_belgian_kristen_send_washer";
  static const String kaye_amongst_belgian_pity_sprint_eyebrow_ =
      "kaye_amongst_belgian_pity_sprint_eyebrow_";
  static const String kaye_amongst_belgian_dna_swarm_transmit_expression =
      "kaye_amongst_belgian_dna_swarm_transmit_expression";
  static const String kaye_amongst_belgian_blinker_marge =
      "kaye_amongst_belgian_blinker_marge";
  static const String kaye_amongst_belgian_loosely_kristen_monroe =
      "kaye_amongst_belgian_loosely_kristen_monroe";
  static const String kaye_amongst_belgian_warp_camry_found_snug =
      "kaye_amongst_belgian_warp_camry_found_snug";

  static const String kaye_amongst_belgian_toolbox_easily =
      "kaye_amongst_belgian_toolbox_easily";

  static const String kaye_amongst_belgian_dylan_sydney_archimedes =
      "kaye_amongst_belgian_dylan_sydney_archimedes";
  static const String kaye_amongst_belgian_toothpick_political_archimedes =
      "kaye_amongst_belgian_toothpick_political_archimedes";
  static const String kaye_amongst_belgian_toothpick_betty_archimedes =
      "kaye_amongst_belgian_toothpick_betty_archimedes";
  static const String kaye_amongst_belgian_toothpick_washer_archimedes =
      "kaye_amongst_belgian_toothpick_easy_archimedes";
  static const String
  kaye_amongst_belgian_toothpick_archimedes_criticize_expression =
      "kaye_amongst_belgian_toothpick_archimedes_criticize_expression";

  static const String kaye_amongst_belgian_sasquatch_heh_earn_blab =
      "kaye_amongst_belgian_sasquatch_heh_earn_blab_";
  static const String kaye_amongst_belgian_sasquatch_luther_earn_blab =
      "kaye_amongst_belgian_sasquatch_luther_earn_blab_";
  static const String kaye_amongst_belgian_sasquatch_jelly_order =
      "kaye_amongst_belgian_sasquatch_jelly_order_";
  static const String kaye_amongst_belgian_im_found_snug =
      "kaye_amongst_belgian_im_found_snug";

  static const String kaye_amongst_belgian_esteem_bixby_expression =
      "kaye_amongst_belgian_esteem_bixby_expression";
  static const String kaye_amongst_belgian_esteem_expression =
      "kaye_amongst_belgian_esteem_expression";
  static const String kaye_amongst_belgian_esteem_snug =
      "kaye_amongst_belgian_esteem_snug";

  static const String kaye_amongst_belgian_morse_elsewhere =
      "kaye_amongst_belgian_morse_elsewhere_";
  static const String kaye_amongst_belgian_morse_golden =
      "kaye_amongst_belgian_morse_golden_";

  static const String kaye_amongst_belgian_im_premise_snug =
      "kaye_amongst_belgian_im_premise_snug";
  static const String kaye_amongst_belgian_im_order_snug =
      "kaye_amongst_belgian_im_order_snug";

  static const String kaye_amongst_belgian_sasquatch_clingy_snug_ =
      "kaye_amongst_belgian_sasquatch_clingy_snug_";

  Future<dynamic> init(String appName) async {
    g = GetStorage(appName);
    await g.initStorage;

    return this;
  }

  T get<T>(String name, T def) {
    T? val = g.read(name);
    if (val == null) {
      return def;
    }
    return val;
  }

  void set(String name, dynamic val) {
    if (val == null) {
      g.remove(name);
    } else {
      g.write(name, val);
    }
  }

  void remove(String name) {
    g.remove(name);
  }

  T? getJson<T>(String name, T Function(Map<String, dynamic>) decoder) {
    String? val = g.read(name);
    if (val == null) {
      return null;
    } else {
      Map<String, dynamic> map = json.decode(val);
      if (map != null) {
        var el = decoder(map);
        if (el == null) {
          return null;
        } else {
          return el;
        }
      } else {
        return null;
      }
    }
  }

  List<T> getJsonList<T>(
    String name,
    T Function(Map<String, dynamic>) decoder,
  ) {
    String? val = g.read(name);
    if (val == null) {
      return [];
    }

    List<Map<String, dynamic>> maps = json.decode(val);
    if (maps != null && maps.isNotEmpty) {
      List<T> list = [];
      for (var e in maps) {
        list.add(decoder(e));
      }
      return list;
    } else {
      return [];
    }
  }

  void setJson(String name, dynamic val) {
    if (val == null) {
      g.remove(name);
    } else {
      g.write(name, json.encode(val));
    }
  }

  saveSession(KayeOptimal session) {
    setJson(kaye_amongst_belgian_optimal, session.toJson());
  }

  KayeOptimal? session() {
    return getJson(
      kaye_amongst_belgian_optimal,
      (p0) => KayeOptimal.fromJson(p0),
    );
  }

  void removeSession() {
    remove(kaye_amongst_belgian_optimal);
  }

  saveClientInfo(KayeGogglesQuenchSelfish clientInfo) {
    setJson(kaye_amongst_belgian_quench_selfish, clientInfo);
  }

  KayeGogglesQuenchSelfish? clientInfo() {
    return getJson(
      kaye_amongst_belgian_quench_selfish,
      (p0) => KayeGogglesQuenchSelfish.fromJson(p0),
    );
  }

  static String? guid;

  KayeGUID getGUID() {
    guid ??= get(kaye_amongst_belgian_kristen_bungee, null);
    bool isFirst = guid == null;
    if (isFirst) {
      guid = const Uuid().v4();
      set(kaye_amongst_belgian_kristen_bungee, guid);
    }
    return KayeGUID(guid!, isFirst);
  }

  saveCrashLog(String crashLog) {
    set(kaye_amongst_belgian_kristen_send_washer, crashLog);
  }

  String getCrashLog() {
    return get(kaye_amongst_belgian_kristen_send_washer, "");
  }

  KayeLavaClosing? respConfig() {
    return getJson(kaye_amongst_belgian_lava_closing, (p0) {
      return KayeLavaClosing.fromJson(p0);
    });
  }

  saveRespConfig(KayeLavaClosing cfg) {
    var json = cfg.toJson();
    setJson(kaye_amongst_belgian_lava_closing, json);
  }

  void saveUserRuntime(int uid, KayeSasquatchTrish runtime) {
    setJson('$kaye_amongst_belgian_trish_$uid', runtime.toJson());
  }

  KayeSasquatchTrish? userRuntime(int uid) {
    return getJson(
      '$kaye_amongst_belgian_trish_$uid',
      (p0) => KayeSasquatchTrish.fromJson(p0),
    );
  }

  void setThirdPayOrdersString(int uid, String info) {
    set('$kaye_amongst_belgian_pity_sprint_eyebrow_$uid', info);
  }

  String getThirdPayOrdersString(int uid) {
    return get('$kaye_amongst_belgian_pity_sprint_eyebrow_$uid', "");
  }

  int getFirstChargeEndTime() {
    return get(kaye_amongst_belgian_dna_swarm_transmit_expression, 0)!;
  }

  void setFirstChargeEndTime(int token) {
    set(kaye_amongst_belgian_dna_swarm_transmit_expression, token);
  }

  void saveUserChatBoxLastSyncKey(int uid, int syncKey) {
    set('$kaye_amongst_belgian_sasquatch_heh_earn_blab$uid', syncKey);
  }

  int userChatBoxLastSyncKey(int uid) {
    return get('$kaye_amongst_belgian_sasquatch_heh_earn_blab$uid', -1);
  }

  void saveSystemNotifyMsg(KayeLeadEatTie accd) {
    var json = accd.toJson();
    setJson('$kaye_amongst_belgian_sasquatch_jelly_order${KAYE.uid()}', json);
  }

  KayeLeadEatTie? systemNotifyMsg() {
    return getJson(
      '$kaye_amongst_belgian_sasquatch_jelly_order${KAYE.uid()}',
      (p0) => KayeLeadEatTie.fromJson(p0),
    );
  }

  void saveUserSnapLastSyncKey(int uid, int syncKey) {
    set('$kaye_amongst_belgian_sasquatch_luther_earn_blab$uid', syncKey);
  }

  int userSnapLastSyncKey(int uid) {
    return get('$kaye_amongst_belgian_sasquatch_luther_earn_blab$uid', -1);
  }

  int getUploadTokenExpireTime() {
    return get(
      kaye_amongst_belgian_toothpick_archimedes_criticize_expression,
      0,
    );
  }

  void setUploadTokenExpireTime(int token) {
    set(kaye_amongst_belgian_toothpick_archimedes_criticize_expression, token);
  }

  String getUploadImageToken() {
    return get(kaye_amongst_belgian_dylan_sydney_archimedes, "");
  }

  void setUploadImageToken(String token) {
    set(kaye_amongst_belgian_dylan_sydney_archimedes, token);
  }

  String getUploadVideoToken() {
    return get(kaye_amongst_belgian_toothpick_political_archimedes, "");
  }

  void setUploadVideoToken(String token) {
    set(kaye_amongst_belgian_toothpick_political_archimedes, token);
  }

  String getUploadVoiceToken() {
    return get(kaye_amongst_belgian_toothpick_betty_archimedes, "");
  }

  void setUploadVoiceToken(String token) {
    set(kaye_amongst_belgian_toothpick_betty_archimedes, token);
  }

  String getUploadLogToken() {
    return get(kaye_amongst_belgian_toothpick_washer_archimedes, "");
  }

  void setUploadLogToken(String token) {
    set(kaye_amongst_belgian_toothpick_washer_archimedes, token);
  }

  void savePayOptions(KayeGogglesBlinkerMarge rsp) {
    setJson(kaye_amongst_belgian_blinker_marge, rsp.toJson());
  }

  KayeGogglesBlinkerMarge? getPayOptions() {
    getJson(
      kaye_amongst_belgian_blinker_marge,
      (p0) => {logger.d("getPayOptions json = $p0")},
    );

    return getJson(
      kaye_amongst_belgian_blinker_marge,
      (p0) => KayeGogglesBlinkerMarge.fromJson(p0),
    );
  }

  int getEnterAppTimes() {
    return get(kaye_amongst_belgian_loosely_kristen_monroe, 0);
  }

  void setEnterAppTimes(int times) {
    set(kaye_amongst_belgian_loosely_kristen_monroe, times);
  }

  int getMatchRemainingFreeCount({
    int maxFreeCount = 5,
    bool isEveryDayFree = true,
  }) {
    String oldTimeCount = get(kaye_amongst_belgian_warp_camry_found_snug, "");
    if (KayeWrestlingBarnacle.isEmpty(oldTimeCount)) {
      setMatchRemainingFreeCount(maxFreeCount);
      return maxFreeCount;
    }
    int remainingFreeCount = maxFreeCount;
    DateTime dateTime = DateTime.now();
    String dateString = "${dateTime.year}${dateTime.month}${dateTime.day}";
    var array = oldTimeCount.split("#");
    if (array.length == 2) {
      if (isEveryDayFree && array[0] != dateString) {
        setMatchRemainingFreeCount(remainingFreeCount);
      } else {
        remainingFreeCount = KayeWrestlingBarnacle.parseInt(array[1])!;
      }
    } else {
      setMatchRemainingFreeCount(remainingFreeCount);
    }

    return remainingFreeCount;
  }

  void setMatchRemainingFreeCount(int freeCount) {
    DateTime dateTime = DateTime.now();
    String dateString = "${dateTime.year}${dateTime.month}${dateTime.day}";
    set(kaye_amongst_belgian_warp_camry_found_snug, "$dateString#$freeCount");
  }

  int getImFreeCount() {
    return get(kaye_amongst_belgian_im_found_snug, -100);
  }

  void setImFreeCount(int token) {
    set(kaye_amongst_belgian_im_found_snug, token);
  }

  int rateFakeTime() {
    return get(kaye_amongst_belgian_esteem_bixby_expression, 0);
  }

  void setRateFakeTime(int time) {
    set(kaye_amongst_belgian_esteem_bixby_expression, time);
  }

  int rateTime() {
    return get(kaye_amongst_belgian_esteem_expression, 0);
  }

  void setRateTime(int time) {
    set(kaye_amongst_belgian_esteem_expression, time);
  }

  int rateCount() {
    return get(kaye_amongst_belgian_esteem_snug, 0);
  }

  void setRateCount() {
    set(kaye_amongst_belgian_esteem_snug, rateCount() + 1);
  }

  String getOrderWidthProductId(String productId) {
    return get('$kaye_amongst_belgian_morse_elsewhere$productId', '');
  }

  void saveOrderIdWidthProductId(String productId, String orderId) {
    set('$kaye_amongst_belgian_morse_elsewhere$productId', orderId);
  }

  void removeOrderIdWidthProductId(String productId) {
    remove('$kaye_amongst_belgian_morse_elsewhere$productId');
  }

  String getOrderWidthPurchaseId(String purchaseId) {
    return get('$kaye_amongst_belgian_morse_golden$purchaseId', '');
  }

  void saveOrderIdWidthPurchaseId(String purchaseId, String orderId) {
    set('$kaye_amongst_belgian_morse_golden$purchaseId', orderId);
  }

  void removeOrderIdWidthPurchaseId(String purchaseId) {
    remove('$kaye_amongst_belgian_morse_golden$purchaseId');
  }

  void setInstallReferrer(String token) {
    set(kaye_amongst_belgian_toolbox_easily, token);
  }

  String getInstallReferrer() {
    return get(kaye_amongst_belgian_toolbox_easily, "");
  }

  int imTipsPoppedCount() {
    return get(kaye_amongst_belgian_im_premise_snug, 0);
  }

  void setImTipsPoppedCount() {
    set(kaye_amongst_belgian_im_premise_snug, imTipsPoppedCount() + 1);
  }

  int imImNotifyDialogCount() {
    return get(kaye_amongst_belgian_im_order_snug, 0);
  }

  void setImNotifyDialogCount() {
    set(kaye_amongst_belgian_im_order_snug, imImNotifyDialogCount() + 1);
  }
}
