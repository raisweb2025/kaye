import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax_flattering.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';
import 'kaye_lava_lactose.dart';

class KayeLavaWithout {
  late TinyProfileVO user;

  List<PhotoVO> photos = [];

  List<VideoVO> videos = [];

  List<GiftVO> gifts = [];

  static KayeLavaWithout fromJson(Map<String, dynamic> json) {
    KayeLavaWithout profile = KayeLavaWithout();

    var photos = json['photos'];
    if (photos != null) {
      profile.photos = (photos as List<dynamic>?)!
          .map((e) => PhotoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var videos = json['videos'];
    if (videos != null) {
      profile.videos = (videos as List<dynamic>?)!
          .map((e) => VideoVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    var gifts = json['gifts'];
    if (gifts != null) {
      profile.gifts = (gifts as List<dynamic>?)!
          .map((e) => GiftVO.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    return profile..user = TinyProfileVO.fromJson(json['user']);
  }
}

class TinyProfileVO {
  late int uid;
  late String nickName;
  late String avatarUrl;
  late int gender;
  late int age;
  late String signature;
  late int price;

  late int followedCount;

  late int followed;

  late int onlineStatus;

  /**
   * 身高
   */
  late int weight;

  /**
   * 体重
   */
  late int height;

  /**
   * 胸围
   */
  late int bust;

  /**
   * 兴趣标签：逗号分隔多个
   */
  late String tagIds;

  /**
   * 语言：逗号分隔多个
   */
  late String languages;

  late CountryVO country;

  static TinyProfileVO fromJson(Map<String, dynamic> json) {
    TinyProfileVO vo = TinyProfileVO()
      ..uid = KayeMoistureBarnacle.intDef(json, "uid", 0)
      ..nickName = KayeMoistureBarnacle.strDef(json, "nick_name", "")
      ..avatarUrl = KayeMoistureBarnacle.strDef(json, "avatar_url", "")
      ..gender = KayeMoistureBarnacle.intDef(json, "gender", 0)
      ..age = KayeMoistureBarnacle.intDef(json, "age", 0)
      ..signature = KayeMoistureBarnacle.strDef(json, "signature", "")
      ..price = KayeMoistureBarnacle.intDef(json, "price", 0)
      ..followedCount = KayeMoistureBarnacle.intDef(json, 'followed_count', 0)
      ..followed = KayeMoistureBarnacle.intDef(json, 'followed', 0)
      ..onlineStatus = KayeMoistureBarnacle.intDef(json, "online_status", 0)
      ..weight = KayeMoistureBarnacle.intDef(json, "weight", 0)
      ..height = KayeMoistureBarnacle.intDef(json, "height", 0)
      ..bust = KayeMoistureBarnacle.intDef(json, "bust", 0)
      ..tagIds = KayeMoistureBarnacle.strDef(json, "tag_ids", "")
      ..languages = KayeMoistureBarnacle.strDef(json, "languages", "")
      ..country = CountryVO.fromJson(json['country']);

    if (vo.onlineStatus != 0) {
      KayeSasquatchQuackFaxFlattering().save(vo.uid, vo.onlineStatus);
    }

    return vo;
  }

  Map<String, dynamic> toJson() {
    return {
      "uid": uid,
      "nick_name": nickName,
      "avatar_url": avatarUrl,
      "gender": gender,
      "age": age,
      "signature": signature,
      "price": price,
      "followed_count": followedCount,
      "followed": followed,
      "online_status": onlineStatus,
      "weight": weight,
      "height": height,
      "bust": bust,
      "tag_ids": tagIds,
      "languages": languages,
    };
  }
}

class PhotoVO {
  late String? img_url;
  late int? width;
  late int? height;
  late int? vip;

  static PhotoVO fromJson(Map<String, dynamic> json) {
    return PhotoVO()
      ..img_url = KayeMoistureBarnacle.strDef(json, "img_url", "")
      ..width = KayeMoistureBarnacle.intDef(json, 'width', 0)
      ..height = KayeMoistureBarnacle.intDef(json, 'height', 0)
      ..vip = KayeMoistureBarnacle.intDef(json, 'vip', 0);
  }

  Map<String, dynamic> toJson() {
    return {"img_url": img_url, "width": width, "height": height, "vip": vip};
  }

  bool isVipOnly() {
    return vip == 1;
  }
}

class VideoVO {
  late String? video_url;
  late String? cover_url;
  late int? duration;
  late int? size;
  late int? width;
  late int? height;
  late int? vip;

  static VideoVO fromJson(Map<String, dynamic> json) {
    return VideoVO()
      ..video_url = KayeMoistureBarnacle.strDef(json, "video_url", "")
      ..cover_url = KayeMoistureBarnacle.strDef(json, "cover_url", "")
      ..duration = KayeMoistureBarnacle.intDef(json, 'duration', 0)
      ..size = KayeMoistureBarnacle.intDef(json, 'size', 0)
      ..width = KayeMoistureBarnacle.intDef(json, 'width', 0)
      ..height = KayeMoistureBarnacle.intDef(json, 'height', 0)
      ..vip = KayeMoistureBarnacle.intDef(json, 'vip', 0);
  }

  Map<String, dynamic> toJson() {
    return {
      "video_url": video_url,
      "cover": cover_url,
      "duration": duration,
      "size": size,
      "width": width,
      "height": height,
      "vip": vip,
    };
  }

  bool isVipOnly() {
    return vip == 1;
  }
}

class GiftVO {
  late int? gift_id;
  late int? count;

  static GiftVO fromJson(Map<String, dynamic> json) {
    return GiftVO()
      ..gift_id = KayeMoistureBarnacle.intDef(json, 'gift_id', 0)
      ..count = KayeMoistureBarnacle.intDef(json, 'count', 0);
  }

  Map<String, dynamic> toJson() {
    return {"gift_id": gift_id, "count": count};
  }
}
