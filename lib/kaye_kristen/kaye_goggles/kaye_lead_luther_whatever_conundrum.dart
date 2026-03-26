import 'package:get/get.dart';

import '../kaye_mason/kaye_stroke.dart';
import 'kaye_frank_publish.dart';

class KayeLeadLutherWhateverConundrum {
  int? category;
  int? type;
  String? title;
  String? desc;
  String? cover;
  int? count;
  int? status;
  int? userId;
  String? userName;
  String? userHead;
  int? gender;
  int? userLevel;
  String? constellation;
  int? age;
  String? area;
  int? orderId;
  int? evaluateId;
  int? star;
  int? orderUserType;
  String? starText;

  bool get isSeller => orderUserType == 1;

  int? id;
  int? to_uid;
  int? quantity;
  String? icon;
  String? name;
  int? price;
  int? value;
  int? min_duration;
  int? max_duration;
  int? animation_type;
  String? animation_url;

  bool get isUserIdMine => userId == KAYE.uid();

  KayeLeadLutherWhateverConundrum();

  factory KayeLeadLutherWhateverConundrum.fromJson(Map<String, dynamic> json) =>
      KayeLeadLutherWhateverConundrum()
        ..category = (json['category'] as num?)?.toInt()
        ..type = (json['type'] as num?)?.toInt()
        ..title = json['title'] as String?
        ..desc = json['desc'] as String?
        ..cover = json['cover'] as String?
        ..count = (json['count'] as num?)?.toInt()
        ..status = (json['status'] as num?)?.toInt()
        ..userId = (json['user_id'] as num?)?.toInt()
        ..userName = json['userName'] as String?
        ..userHead = json['userHead'] as String?
        ..gender = (json['gender'] as num?)?.toInt()
        ..userLevel = (json['userLevel'] as num?)?.toInt()
        ..constellation = json['constellation'] as String?
        ..age = (json['age'] as num?)?.toInt()
        ..area = json['area'] as String?
        ..orderId = (json['orderId'] as num?)?.toInt()
        ..evaluateId = (json['evaluateId'] as num?)?.toInt()
        ..star = (json['star'] as num?)?.toInt()
        ..orderUserType = (json['orderUserType'] as num?)?.toInt()
        ..starText = json['starText'] as String?
        ..id = (json['id'] as num?)?.toInt()
        ..to_uid = (json['to_uid'] as num?)?.toInt()
        ..quantity = (json['quantity'] as num?)?.toInt()
        ..icon = json['icon'] as String?
        ..name = json['name'] as String?
        ..price = (json['price'] as num?)?.toInt()
        ..value = (json['value'] as num?)?.toInt()
        ..min_duration = (json['min_duration'] as num?)?.toInt()
        ..max_duration = (json['max_duration'] as num?)?.toInt()
        ..animation_type = (json['animation_type'] as num?)?.toInt()
        ..animation_url = json['animation_url'] as String?;

  Map<String, dynamic> toJson(KayeLeadLutherWhateverConundrum instance) =>
      <String, dynamic>{
        'category': instance.category,
        'type': instance.type,
        'title': instance.title,
        'desc': instance.desc,
        'cover': instance.cover,
        'count': instance.count,
        'status': instance.status,
        'userId': instance.userId,
        'userName': instance.userName,
        'userHead': instance.userHead,
        'gender': instance.gender,
        'userLevel': instance.userLevel,
        'constellation': instance.constellation,
        'age': instance.age,
        'area': instance.area,
        'orderId': instance.orderId,
        'evaluateId': instance.evaluateId,
        'star': instance.star,
        'orderUserType': instance.orderUserType,
        'starText': instance.starText,
        'id': instance.id,
        'to_uid': instance.to_uid,
        'quantity': instance.quantity,
        'icon': instance.icon,
        'name': instance.name,
        'price': instance.price,
        'value': instance.value,
        'min_duration': instance.min_duration,
        'max_duration': instance.max_duration,
        'animation_type': instance.animation_type,
        'animation_url': instance.animation_url,
      };

  static bool isSupported(KayeLeadLutherWhateverConundrum? content) {
    bool ret = false;
    if (content == null) {
      return ret;
    }
    if (content.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content.category)) {
        case ChatSnapJsonContentCategory.orderCate:
          break;
        case ChatSnapJsonContentCategory.liveVideoCate:
          break;
        case ChatSnapJsonContentCategory.liveVoiceCate:
          break;
        case ChatSnapJsonContentCategory.cardCate:
        case ChatSnapJsonContentCategory.skillCate:
          ret = true;
          break;
        case ChatSnapJsonContentCategory.feedCate:
          if (content.type != null) {
            switch (content.type) {
              case ChatSnapJsonContentType.feedText:
              case ChatSnapJsonContentType.feedImage:
              case ChatSnapJsonContentType.feedVideo:
                break;
              default:
                break;
            }
          }
          break;
        case ChatSnapJsonContentCategory.callCate:
          if (content.type != null) {
            switch (content.type) {
              case ChatSnapJsonContentType.callAudio:
              case ChatSnapJsonContentType.callVideo:
              case ChatSnapJsonContentType.callRating:
                ret = true;
                break;
              default:
                break;
            }
          }
          break;
        case ChatSnapJsonContentCategory.imGiftCate:
          ret = true;
          break;
        default:
          break;
      }
    }
    return ret;
  }

  static String jsonContentListMessage(
    KayeLeadLutherWhateverConundrum? content,
  ) {
    String ret = '';
    if (content?.category != null) {
      switch (ChatSnapJsonContentCategory.valueOf(content!.category)) {
        case ChatSnapJsonContentCategory.callCate:
          switch (content.type) {
            case ChatSnapJsonContentType.callRating:
              ret = "kaye_trade_tartar_cousin".tr;
              break;
            case ChatSnapJsonContentType.callAudio:
            case ChatSnapJsonContentType.callVideo:
              ret = "kaye_trade_political_goal_cousin".tr;
              break;
            default:
              break;
          }
          break;
        case ChatSnapJsonContentCategory.imGiftCate:
          ret = "kaye_trade_legally_cousin".tr;
          break;
        default:
          break;
      }
    }
    return ret;
  }
}

class ChatSnapJsonContentCategory extends KayeFrankPublish {
  static const orderCate = ChatSnapJsonContentCategory._(1, 'orderCate');
  static const liveVideoCate = ChatSnapJsonContentCategory._(
    2,
    'liveVideoCate',
  );
  static const feedCate = ChatSnapJsonContentCategory._(3, 'feedCate');
  static const cardCate = ChatSnapJsonContentCategory._(4, 'cardCate');
  static const skillCate = ChatSnapJsonContentCategory._(5, 'skillCate');
  static const callCate = ChatSnapJsonContentCategory._(6, 'callCate');
  static const liveVoiceCate = ChatSnapJsonContentCategory._(
    7,
    'liveVoiceCate',
  );
  static const imGiftCate = ChatSnapJsonContentCategory._(8, 'imGiftCate');

  static final Map<int, ChatSnapJsonContentCategory> _byValue =
      KayeFrankPublish.initByValue(<ChatSnapJsonContentCategory>[
        orderCate,
        liveVideoCate,
        feedCate,
        cardCate,
        skillCate,
        callCate,
        liveVoiceCate,
        imGiftCate,
      ]);

  static ChatSnapJsonContentCategory? valueOf(int? value) => _byValue[value];

  const ChatSnapJsonContentCategory._(int value, String name)
    : super(value, name);
}

class ChatSnapJsonContentType {
  static const int callAudio = 1;
  static const int callVideo = 2;
  static const int callRating = 3;

  static const int feedText = 1;
  static const int feedImage = 2;
  static const int feedVideo = 3;

  static const int LiveVideoDefault = 0;

  static const int LiveVoiceDefault = 0;
}

class ChatSnapJsonContentStatus {
  static const int callDone = 1;
  static const int callCanceled = 2;
  static const int callRefused = 3;
  static const int callNoReply = 4;
  static const int callBusy = 5;
  static const int connectFailed = 6;
}
