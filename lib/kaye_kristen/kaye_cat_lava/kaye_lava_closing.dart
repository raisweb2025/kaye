import 'package:kaye/kaye_kristen/kaye_cable.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_kristen_jewelry.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_dedicate_tie.dart';
import '../kaye_mason/kaye_stroke.dart';

class HttpServerVO {
  late String url;
  late String port;
  late int weight;

  static HttpServerVO fromJson(Map<String, dynamic> json) {
    return HttpServerVO()
      ..url = KayeMoistureBarnacle.strDef(json, "url", KayeAdvertise.kayeAbove)
      ..port = KayeMoistureBarnacle.strDef(json, "port", "443")
      ..weight = KayeMoistureBarnacle.intDef(json, "weight", 0);
  }

  Map<String, dynamic> toJson() {
    return {"url": url, "port": port, "weight": weight};
  }
}

class VoServerRouter {
  late List<KayeGogglesKristenJewelryLowell> socket;
  late List<HttpServerVO> http;

  static VoServerRouter fromJson(Map<String, dynamic> json) {
    return VoServerRouter()
      ..socket = (json['socket'] as List<dynamic>?)!
          .map(
            (e) => KayeGogglesKristenJewelryLowell.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList()
      ..http = (json['http'] as List<dynamic>?)!
          .map((e) => HttpServerVO.fromJson(e as Map<String, dynamic>))
          .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      "socket": socket.map((e) => e.toJson()).toList(),
      "http": http.map((e) => e.toJson()).toList(),
    };
  }
}

class HttpConfig {
  late int connectTimeout = 20;
  late int readTimeout = 20;

  static HttpConfig fromJson(Map<String, dynamic> json) {
    return HttpConfig()
      ..connectTimeout = KayeMoistureBarnacle.intDef(
        json,
        'connect_timeout',
        20,
      )
      ..readTimeout = KayeMoistureBarnacle.intDef(json, 'read_timeout', 20);
  }

  Map<String, dynamic> toJson() {
    return {"connect_timeout": connectTimeout, "read_timeout": readTimeout};
  }
}

class AppBusyPageConfig {
  late List<int> aic;
  late List<int> aiv;
  late List<int> aicf;

  static AppBusyPageConfig fromJson(Map<String, dynamic> json) {
    return AppBusyPageConfig()
      ..aiv = (json['aiv'] as List<dynamic>?)!
          .map((e) => KayeWrestlingBarnacle.parseInt(e) ?? 0)
          .toList()
      ..aic = (json['aic'] as List<dynamic>?)!
          .map((e) => KayeWrestlingBarnacle.parseInt(e) ?? 0)
          .toList()
      ..aicf = (json['aicf'] as List<dynamic>?)!
          .map((e) => KayeWrestlingBarnacle.parseInt(e) ?? 0)
          .toList();
  }

  Map<String, dynamic> toJson() {
    return {"aiv": aiv, "aic": aic, "aicf": aicf};
  }
}

class VoGift implements KayeGoggles {
  late int id;

  late String name;

  late String icon;

  late int price;

  late int value;
  late int minDuration;
  late int maxDuration;

  late int animationType;

  late String? animationUrl;

  static VoGift fromJson(Map<String, dynamic> json) {
    return VoGift()
      ..id = KayeMoistureBarnacle.intDef(json, 'id', 0)
      ..name = KayeMoistureBarnacle.strDef(json, 'name', "")
      ..icon = KayeMoistureBarnacle.strDef(json, 'icon', "")
      ..price = KayeMoistureBarnacle.intDef(json, 'price', 0)
      ..value = KayeMoistureBarnacle.intDef(json, 'value', 0)
      ..minDuration = KayeMoistureBarnacle.intDef(json, 'min_duration', 0)
      ..maxDuration = KayeMoistureBarnacle.intDef(json, 'max_duration', 0)
      ..animationType = KayeMoistureBarnacle.intDef(json, 'animation_type', 0)
      ..animationUrl = KayeMoistureBarnacle.strDef(json, 'animation_url', "");
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "icon": icon,
      "price": price,
      "value": value,
      "min_duration": minDuration,
      "max_duration": maxDuration,
      "animation_type": animationType,
      "animation_url": animationUrl,
    };
  }
}

class VoImageSize implements KayeGoggles {
  late int small;
  late int middle;
  late int large;
  late int quality;

  static VoImageSize fromJson(Map<String, dynamic>? json) {
    return VoImageSize()
      ..small = KayeMoistureBarnacle.intDef(json, 'small', 60)
      ..middle = KayeMoistureBarnacle.intDef(json, 'middle', 150)
      ..large = KayeMoistureBarnacle.intDef(json, 'large', 600)
      ..quality = KayeMoistureBarnacle.intDef(json, 'quality', 95);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "small": small,
      "middle": middle,
      "large": large,
      "quality": quality,
    };
  }
}

class KayeLavaClosing {
  late int iav;

  late int ai;

  late VoServerRouter router;

  late HttpConfig httpConfig;

  late AppBusyPageConfig busyPageConfig;

  late List<int> trackTypes = [];

  late KayeDedicateTie configs;

  late KayeDedicateTie i18ns;

  late KayeDedicateTie gifts;

  late VoImageSize imageSize;

  List<String>? ngc;

  static KayeLavaClosing fromJson(Map<String, dynamic> json) {
    KayeLavaClosing cfg = KayeLavaClosing()
      ..iav = KayeMoistureBarnacle.intDef(
        json,
        "iav",
        KayeCable.kaye_forgot_susan,
      )
      ..ai = KayeMoistureBarnacle.intDef(json, "ai", 0)
      ..router = VoServerRouter.fromJson(json['router'])
      ..httpConfig = HttpConfig.fromJson(json['http_config'])
      ..busyPageConfig = AppBusyPageConfig.fromJson(json['busy_page_config'])
      ..trackTypes = (json['track_types'] as List<dynamic>?)!
          .map((e) => KayeWrestlingBarnacle.parseInt(e) ?? 0)
          .toList()
      ..configs = KayeDedicateTie.fromJson(json['configs'])
      ..i18ns = KayeDedicateTie.fromJson(json['i18ns'])
      ..gifts = KayeDedicateTie.fromJson(json['gifts'])
      ..imageSize = VoImageSize.fromJson(json['image_size']);

    dynamic ngc = json['ngc'];
    if (ngc != null) {
      cfg.ngc = (ngc as List<dynamic>).map((e) => e as String).toList();
    }

    return cfg;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'iav': iav,
      'ai': ai,
      'router': router.toJson(),
      'http_config': httpConfig.toJson(),
      'busy_page_config': busyPageConfig.toJson(),
      'ngc': ngc,
      'track_types': trackTypes,
      'configs': configs.toJson(),
      'i18ns': i18ns.toJson(),
      'gifts': gifts.toJson(),
      'image_size': imageSize.toJson(),
    };

    return json;
  }

  void upgrade(KayeLavaClosing rsp) {
    _kayeComebackForgotIfFeed(rsp.iav);

    router = rsp.router;
    httpConfig = rsp.httpConfig;
    busyPageConfig = rsp.busyPageConfig;
    trackTypes = rsp.trackTypes;
    imageSize = rsp.imageSize;
    ngc = rsp.ngc;

    if (rsp.configs.version > 0) {
      configs.version = rsp.configs.version;
      Map<String, dynamic> cfg = configs.val;
      cfg.addAll(rsp.configs.val);
    }

    if (rsp.i18ns.version > 0 && rsp.i18ns.val != null) {
      i18ns.version = rsp.i18ns.version;
      Map<String, dynamic> prevs = i18ns.val;

      Map<String, dynamic> langs = rsp.i18ns.val;
      for (var e in langs.entries) {
        String lang = e.key;
        Map<String, dynamic> codes = e.value;

        if (codes.isEmpty) {
          continue;
        }

        Map<String, dynamic>? prev = prevs[lang];
        if (prev == null) {
          prev = {};
          prevs[lang] = prev;
        }
        prev.addAll(codes);
      }
    }

    if (rsp.gifts.version != gifts.version) {
      gifts = rsp.gifts;
    }
  }

  void _kayeComebackForgotIfFeed(int newRspIav) {
    if (iav == newRspIav) {
      return;
    }

    if (iav == KayeCable.kaye_forgot_zucchini) {
      return;
    }

    if (iav == KayeCable.kaye_forgot_ibiza) {
      if (newRspIav == KayeCable.kaye_forgot_zucchini) {
        iav = KayeCable.kaye_forgot_zucchini;
      }
      return;
    }

    if (iav == KayeCable.kaye_forgot_susan) {
      iav = newRspIav;
    }
  }
}
