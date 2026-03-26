import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_kristen_closing.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_kristen_closing_dutch.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_kristen_jewelry.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_exact.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_trish.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:get/get.dart';

import '../kaye_cat_lava/kaye_lava_closing.dart';
import 'kaye_goggles_crisp.dart';

class KayeClosing {
  late bool iav;

  late bool ai;

  late List<KayeGogglesKristenJewelryLowell> socket;
  late List<HttpServerVO> http;

  late HttpConfig httpConfig;

  AppBusyPageConfig? busyPageConfig;

  late List<int> trackTypes = [];

  List<String>? ngc;

  late KayeKristenClosing configs;

  late List<VoGift> gifts;

  Map<int, VoGift>? giftsMap;

  late VoImageSize imageSize;

  bool isKayeZucchiniDedicate() {
    return iav;
  }

  bool isKayeAiZucchiniDedicate() {
    return isKayeZucchiniDedicate() && ai;
  }

  bool isKayeIOSZucchiniDedicate() {
    return Platform.isIOS && isKayeZucchiniDedicate();
  }

  VoGift? gift(int giftId) {
    if (giftsMap == null) {
      giftsMap = {};
      for (var g in gifts) {
        giftsMap![g.id] = g;
      }
    }

    return giftsMap![giftId];
  }

  bool isNgc(String currency) {
    return ngc != null && ngc!.contains(currency);
  }

  List<KayeGogglesCrisp>? getInterestsByIds(String ids) {
    if (KayeWrestlingBarnacle.isEmptyList(configs.interests)) return null;

    List<String> interestIds = ids.split(",");

    List<KayeGogglesCrisp>? showList = configs.interests!
        .where((element) => interestIds.contains(element.id))
        .toList();

    return showList;
  }

  List<KayeGogglesExact>? getLanguagesByIds(String ids) {
    if (KayeWrestlingBarnacle.isEmptyList(configs.languages)) return null;

    List<String> languageIds = ids.split(",");

    List<KayeGogglesExact>? showList = configs.languages!
        .where((element) => languageIds.contains(element.id))
        .toList();

    return showList;
  }

  bool isKayeChubbyVirgin() {
    return (configs.common != null &&
            configs.common!.hidePriceWhenAmountZero == 1) &&
        (KAYE.kayeSasquatchTrish != null &&
            KAYE.kayeSasquatchTrish!.hadPaid == 0);
  }

  bool isKayeInfraredTank() {
    return (configs.common != null && configs.common!.enableLive);
  }

  List<String> webViewInAppSchemeList() {
    return configs.common?.webViewInAppSchemeList ?? [];
  }

  String? getPushKey() {
    return configs.push?.key;
  }

  bool isRegionMatchFirst20sChargeMode() {
    if (configs.matchDiscount != null &&
        configs.matchDiscount!.matchDiscountRegions.isNotEmpty &&
        configs.matchDiscount!.matchDiscountRegions.contains(
          KAYE.user().regionCode,
        )) {
      return true;
    }
    return false;
  }

  String regionMatchFirst20sChargeModeDesc() {
    int matchFreeSeconds = 20;
    int matchCostCoins = 15;
    int matchCallCost = 30;
    if (configs.matchDiscount != null) {
      matchCostCoins = configs.matchDiscount!.matchCostCoins;
      matchCallCost = configs.matchDiscount!.matchCallCost;
      matchFreeSeconds = configs.matchDiscount!.matchFreeSeconds;
    }
    return "kaye_trade_theater_warp_plummet".tr
        .replaceAll("{seconds}", "$matchFreeSeconds")
        .replaceAll("{firstPrice}", "$matchCostCoins")
        .replaceAll("{price}", "$matchCallCost");
  }

  int regionMatchFirst20sChargeModeMatchCostCoins() {
    int matchCostCoins = 15;
    if (configs.matchDiscount != null) {
      matchCostCoins = configs.matchDiscount!.matchCostCoins;
    }
    return matchCostCoins;
  }
}
