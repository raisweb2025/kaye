import '../proto/kaye_gray.pb.dart';

class KayeGogglesSasquatchQuackFax {
  int? uid;
  int? onlineTime;
  bool? online;

  /**
   * 主播是否在直播
   */
  bool? onLive;

  /**
   * 直播间ID
   */
  int? roomId;
  bool? isPrivateLive;
  int? roomType;
  String? roomTopicName;
  bool? onCall;

  bool get isBusy => onCall == true;

  bool get isOnline => online == true;

  static KayeGogglesSasquatchQuackFax fromProto(UserOnlineTime userOnlineTime) {
    return KayeGogglesSasquatchQuackFax()
      ..uid = userOnlineTime.uid.toInt()
      ..onCall = userOnlineTime.isOnCall
      ..online = userOnlineTime.isOnline
      ..onLive = userOnlineTime.isOnLive
      ..onlineTime = userOnlineTime.onlineTime.toInt()
      ..roomId = userOnlineTime.roomId.toInt();
  }
}
