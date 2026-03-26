import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeSasquatchSuffice {
  late int id;
  late int couponId;
  late int diamondAmount;

  late int status;

  late int vipDuration;

  late DateTime expireTime;

  static KayeSasquatchSuffice fromJson(Map<String, dynamic> json) {
    KayeSasquatchSuffice u = KayeSasquatchSuffice()
      ..id = KayeMoistureBarnacle.intDef(json, 'id', 0)
      ..couponId = KayeMoistureBarnacle.intDef(json, 'coupon_id', 0)
      ..diamondAmount = KayeMoistureBarnacle.intDef(json, 'diamond_amount', 0)
      ..status = KayeMoistureBarnacle.intDef(json, 'status', 0)
      ..vipDuration = KayeMoistureBarnacle.intDef(json, 'vip_duration', 0);

    int millis = KayeMoistureBarnacle.intDef(json, 'expire_time', 0);
    u.expireTime = DateTime.fromMillisecondsSinceEpoch(millis);

    return u;
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "couponId": couponId,
      "status": status,
      "diamond_amount": diamondAmount,
      "vip_duration": vipDuration,
      "expire_time": expireTime.millisecondsSinceEpoch,
    };
  }
}
