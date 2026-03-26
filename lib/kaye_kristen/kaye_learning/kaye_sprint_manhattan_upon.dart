import '../kaye_goggles/kaye_bury_patsy.dart';

class PayFromType {
  static const int FROM_HOME_RECOMMEND_CALL = -1;

  static const int FROM_HOME_VIDEO_CALL = 1;

  static const FROM_PROFILE_VIDEO_CALL = 2;

  static const FROM_PROFILE_ALBUM = 3;

  static const FROM_IM_NO_MORE_FREE_MSG = 4;

  static const FROM_IM_SEND_GIFT = 5;

  static const FROM_IM_VIDEO_CALL = 6;

  static const FROM_PICK_UP_CALL = 7;

  static const FROM_ME_GET_VIP = 8;

  static const FROM_ME_WHO_LIKE_ME_BECOME_VIP = 9;

  static const FROM_ME_COINS = 10;

  static const FROM_REGION = 11;

  static const FROM_INDUCE_VIDEO = 12;

  static const FROM_MATCHING = 13;

  static const FROM_CHAT_CALL_40 = 14;

  static const FROM_CHAT_CALL_END = 15;

  static const FROM_HOME_BANNER = 16;

  static const FROM_LOTTERY_ACTIVITY = 17;

  static const FROM_FEED = 18;

  static const FROM_FIRST_CHARGE_FLOAT = 19;

  static const FROM_AWARD_CHARGE_FLOAT = 20;

  static const FROM_GIFT_PANEL_CHARGE = 21;

  static const FROM_CHATTING_CHARGE = 22;

  static const SIGN_IN_PREMIUM = 23;

  static const FROM_CHAT_AI_CALL_RECHARGE_POP = 24;

  static const int FROM_LIVE_CALL = 25;

  static const int FROM_LIVE_END_CALL = 26;
}

class KayeSprintManhattanUpon {
  late int fromType;
  late KayeBuryPatsy option;

  KayeSprintManhattanUpon(this.option, this.fromType);
}
