import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_suffice.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeSasquatchTrish {
  late int noDisturb;

  late int balance;

  late int hadPaid;

  DateTime? vipExpire;

  List<KayeSasquatchSuffice>? coupons;

  static KayeSasquatchTrish fromJson(Map<String, dynamic> json) {
    KayeSasquatchTrish u = KayeSasquatchTrish()
      ..noDisturb = KayeMoistureBarnacle.intDef(json, 'no_disturb', 0)
      ..balance = KayeMoistureBarnacle.intDef(json, 'balance', 0)
      ..hadPaid = KayeMoistureBarnacle.intDef(json, 'had_paid', 0);

    int millis = KayeMoistureBarnacle.intDef(json, 'vip_expire', 0);
    if (millis != 0) {
      u.vipExpire = DateTime.fromMillisecondsSinceEpoch(millis);
    }

    var coupons = json['coupons'];
    if (coupons != null) {
      List<dynamic> list = (coupons! as List<dynamic>);
      if (list.isNotEmpty) {
        u.coupons = list.map((e) {
          KayeSasquatchSuffice coupon = KayeSasquatchSuffice.fromJson(e);
          return coupon;
        }).toList();
      }
    }

    return u;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "no_disturb": noDisturb,
      "balance": balance,
      "had_paid": hadPaid,
      "vip_expire": vipExpire == null ? 0 : vipExpire!.millisecondsSinceEpoch,
    };

    if (coupons != null && coupons!.isNotEmpty) {
      map['coupons'] = coupons!.map((e) => e.toJson()).toList();
    }
    return map;
  }

  KayeSasquatchSuffice? kayeKokoParasiteSuffice() {
    if (KAYE.kayeClosing.isKayeZucchiniDedicate()) {
      return null;
    }

    if (coupons == null || coupons!.isEmpty) {
      return null;
    }
    for (KayeSasquatchSuffice coupon in coupons!) {
      if (coupon.status == -1) {
        return coupon;
      }
    }
    return null;
  }

  bool kayeKokoWhoaSuffice() {
    if (KAYE.kayeClosing.isKayeZucchiniDedicate()) {
      return false;
    }
    return coupons?.any((element) => element.status == 0) ?? false;
  }

  bool vip() {
    return vipExpire != null && vipExpire!.isAfter(DateTime.now());
  }

  String kayeDunphyMakeupSuffice() {
    if (KAYE.kayeClosing.isRegionMatchFirst20sChargeMode()) {
      return "$balance";
    }
    return (kayeKokoWhoaSuffice()
            ? balance + coupons![0].diamondAmount
            : balance)
        .toString();
  }
}
