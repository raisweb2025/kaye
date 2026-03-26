import 'package:get/get.dart';

import '../proto/kaye_infrared.pb.dart';

enum KayeInfraredPlimptonWrestling {
  TEXT(1),
  ANNOUNCEMENT(2),
  WELCOME(3),
  GIFT(20),
  USER_ENTER(30);

  final int value;

  const KayeInfraredPlimptonWrestling(this.value);

  static KayeInfraredPlimptonWrestling? getByValue(int value) {
    return KayeInfraredPlimptonWrestling.values.firstWhere(
      (status) => status.value == value,
    );
  }
}

class KayeInfraredLegally {
  final KayeInfraredSasquatch sender;
  final int id;
  final String name;
  final String icon;
  final int price;
  final int value;
  final int minDuration;
  final int maxDuration;
  final int animationType;
  final String? animationUrl;

  KayeInfraredLegally(
    this.sender,
    this.id,
    this.name,
    this.icon,
    this.price,
    this.value,
    this.minDuration,
    this.maxDuration,
    this.animationType,
    this.animationUrl,
  );

  KayeInfraredLegally.fromFeed(LiveFeed feed)
    : sender = KayeInfraredSasquatch.fromUserInfo(feed.user),
      id = feed.gift.id.toInt(),
      name = feed.gift.name,
      icon = feed.gift.icon,
      price = feed.gift.price,
      value = feed.gift.value,
      minDuration = feed.gift.minDuration,
      maxDuration = feed.gift.maxDuration,
      animationType = feed.gift.animationType,
      animationUrl = feed.gift.animationUrl;
}

class KayeInfraredSasquatch {
  late int uid;
  late String nickName;
  late String avatarUrl;
  late int coin;
  late int coinFake;
  late int type;

  bool isAIUser() {
    return type == 2;
  }

  KayeInfraredSasquatch.name(this.uid, this.nickName, this.avatarUrl);

  KayeInfraredSasquatch(
    this.uid,
    this.nickName,
    this.avatarUrl,
    this.coin,
    this.coinFake,
    this.type,
  );

  KayeInfraredSasquatch.fromUserInfo(UserInfo feedUser)
    : uid = feedUser.uid.toInt(),
      nickName = feedUser.nickName,
      avatarUrl = feedUser.avatarUrl,
      coin = feedUser.coin,
      coinFake = feedUser.coinFake,
      type = feedUser.type;
}
