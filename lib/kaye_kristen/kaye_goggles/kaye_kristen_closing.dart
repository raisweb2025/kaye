import 'dart:convert';
import 'dart:ffi';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_crisp.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_exact.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_delivery_bladder_drove.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'kaye_kristen_closing_dutch.dart';
import 'kaye_kristen_closing_warp_assistant.dart';
import 'kaye_goggles_driving.dart';
import 'kaye_goggles_mitten.dart';

class KayeKristenClosing implements KayeGoggles {
  late Map<String, dynamic> _orig;

  late List<KayeGogglesMitten> tabs;

  late Set<String> tabsIdSet;

  List<String>? kayeCultureEarnScoreSmoothy;
  List<String>? kayeCultureYamScoreSmoothy;

  late List<KayeGogglesDeliveryBladderDrove> kayeCultureDeliveryTractor;

  int kayeCultureQuackFaxSonogramNowadays = 5;

  String agoraAppId = pP.kayeLobsterKristenId();

  int aWidth = 640;

  int aHeight = 480;

  int aFrameRate = 15;

  List<KayeGogglesExact>? languages;

  List<KayeGogglesCrisp>? interests;

  KayeGogglesDriving? push;

  KayeKristenClosingDutch? common;

  KayeKristenClosingWarpAssistant? matchDiscount;

  static KayeKristenClosing fromJson(Map<String, dynamic> json) {
    KayeKristenClosing cfg = KayeKristenClosing().._orig = json;
    cfg._init();
    return cfg;
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  Map<String, dynamic> page(String pageName) {
    String? val = _orig[pageName];
    if (val == null) {
      return {};
    } else {
      return json.decode(val) as Map<String, dynamic>;
    }
  }

  void _init() {
    _initKayeCultureIncline();
    _initKayeScoreMassacre();
    _initKayeQuackFaxSonogramNowadays();
    _initAgoraConfig();
    _initLanguageConfig();
    _initInterestConfig();
    _initPushConfig();
    _initCommon();
    _initMatchDiscountConfig();

    dynamic items = _orig["kaye_culture_delivery_tractor"];
    if (items == null) {
      kayeCultureDeliveryTractor = [];
    } else {
      kayeCultureDeliveryTractor = (json.decode(items) as List<dynamic>)
          .map((e) => KayeGogglesDeliveryBladderDrove.fromJson(e))
          .toList();
    }
  }

  void _initKayeCultureIncline() {
    List<KayeGogglesMitten>? tabs;
    String? cfg = _orig["kaye_culture_incline"] as String?;
    try {
      if (cfg != null) {
        tabs = (json.decode(cfg) as List<dynamic>)
            .map((e) => KayeGogglesMitten.fromJson(e))
            .toList();
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10012, e, stack);
    }

    tabs ??= [
      KayeGogglesMitten("discover", "kaye_ten_mitten_lactose", "Discover"),
      KayeGogglesMitten("match", "kaye_ten_mitten_warp", "Match"),
      KayeGogglesMitten("message", "kaye_ten_mitten_lead", "Message"),
      KayeGogglesMitten("me", "kaye_ten_mitten_me", "Me"),
    ];

    this.tabs = tabs;
    tabsIdSet = tabs.map((e) {
      return e.id;
    }).toSet();
  }

  void _initKayeScoreMassacre() {
    try {
      String? syncs = _orig["kaye_culture_earn_score_smoothy"];
      if (syncs != null) {
        kayeCultureEarnScoreSmoothy = (json.decode(syncs) as List<dynamic>)
            .map((e) => e as String)
            .toList();
      }

      String? asyncs = _orig["kaye_culture_yam_score_smoothy"];
      if (asyncs != null) {
        kayeCultureYamScoreSmoothy = (json.decode(asyncs) as List<dynamic>)
            .map((e) => e as String)
            .toList();
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10013, e, stack);
    }
  }

  void _initKayeQuackFaxSonogramNowadays() {
    try {
      String? onlineStatusRequestDuration =
          _orig["kaye_culture_quack_fax_sonogram_nowadays"] as String?;
      if (onlineStatusRequestDuration != null) {
        kayeCultureQuackFaxSonogramNowadays = KayeMoistureBarnacle.intDef(
          json.decode(onlineStatusRequestDuration),
          "seconds",
          5,
        );
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10014, e, stack);
    }
  }

  void _initAgoraConfig() {
    try {
      String? agora = _orig["kaye_culture_lobster"] as String?;
      if (agora != null) {
        dynamic jsonObj = json.decode(agora);
        agoraAppId = KayeMoistureBarnacle.str(jsonObj, "appId") ?? "";
        aWidth = KayeMoistureBarnacle.intDef(jsonObj, "width", 640);
        aHeight = KayeMoistureBarnacle.intDef(jsonObj, "height", 480);
        aFrameRate = KayeMoistureBarnacle.intDef(jsonObj, "frameRate", 15);
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10015, e, stack);
    }
  }

  void _initLanguageConfig() {
    try {
      String? language = _orig["kaye_culture_exact"] as String?;
      if (language != null) {
        languages = (json.decode(language) as List<dynamic>)
            .map((e) => KayeGogglesExact.fromJson(e))
            .toList();
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(66007, e, stack);
    }
  }

  void _initInterestConfig() {
    try {
      String? interest = _orig["kaye_culture_crisp"] as String?;
      if (interest != null) {
        interests = (json.decode(interest) as List<dynamic>)
            .map((e) => KayeGogglesCrisp.fromJson(e))
            .toList();
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(66006, e, stack);
    }
  }

  void _initPushConfig() {
    try {
      String? cfg = _orig["kaye_culture_driving"] as String?;
      if (cfg != null) {
        push = KayeGogglesDriving.fromJson(json.decode(cfg));
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(66008, e, stack);
    }
  }

  void _initCommon() {
    try {
      String? cfg = _orig["kaye_culture_dutch"] as String?;
      if (cfg != null) {
        common = KayeKristenClosingDutch.fromJson(json.decode(cfg));
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(11001, e, stack);
    }
  }

  _initMatchDiscountConfig() {
    try {
      String? cfg = _orig["kaye_culture_warp_assistant_closing"] as String?;
      if (cfg != null) {
        matchDiscount = KayeKristenClosingWarpAssistant.fromJson(
          json.decode(cfg),
        );
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(66012, e, stack);
    }
  }
}
