import '../kaye_goggles/kaye_attach_sasquatch.dart';
import '../kaye_goggles/kaye_sasquatch_trish.dart';
import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeLavaJellyEnhanceSelfish {
  late String? title;
  late int unreadCount;
  late int? updateTime;
  late int? snapType;
  late int? category;

  KayeLavaJellyEnhanceSelfish();

  static KayeLavaJellyEnhanceSelfish fromJson(Map<String, dynamic> json) {
    return KayeLavaJellyEnhanceSelfish()
      ..title = json['title'] as String?
      ..unreadCount = KayeMoistureBarnacle.intDef(json, 'unread_count', 0)
      ..updateTime = KayeMoistureBarnacle.intDef(json, 'update_time', 0)
      ..snapType = KayeMoistureBarnacle.intDef(json, 'snap_type', 0)
      ..category = KayeMoistureBarnacle.intDef(json, 'category', 0);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'title': title,
    'unreadCount': unreadCount,
    'updateTime': updateTime,
    'snapType': snapType,
    'category': category,
  };
}
