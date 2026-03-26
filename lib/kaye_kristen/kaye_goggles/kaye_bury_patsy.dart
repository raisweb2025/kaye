import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import '../proto/StringTranslate.dart';
import 'kaye_bury_forklift.dart';

class KayeBuryPatsy {
  int id = 0;
  String? name;
  int name_amount = 0;
  String? name_title;
  int group_id = 0;
  int account_type = 0;
  double value = 0;
  double extra_value = 0;
  String? tip;
  String? app_store_prod_id;
  String? google_prod_id;
  double price = 0;
  String? currency;
  String? base_currency;
  double base_currency_price = 0;
  double discount_rate = 0;
  KayeBuryPatsySelfish? info;
  int give_vip = 0;
  List<KayeBuryForklift>? pay_mode_prices;
  ProductDetails? productDetails;

  String? get platformProdId {
    return Platform.isAndroid ? google_prod_id : app_store_prod_id;
  }

  bool get _showSKPrice {
    return (productDetails?.rawPrice != null &&
        productDetails!.rawPrice > 0 &&
        (!KayeWrestlingBarnacle.isEmptyString(productDetails?.currencyCode) ||
            !KayeWrestlingBarnacle.isEmptyString(
              productDetails?.currencySymbol,
            )));
  }

  String get _skCurrency {
    return (KayeWrestlingBarnacle.isEmptyString(productDetails?.currencySymbol)
        ? productDetails!.currencyCode
        : productDetails!.currencySymbol);
  }

  String get priceStr {
    if (_showSKPrice) {
      return "$_skCurrency ${_priceStringAsFixed(productDetails!.rawPrice)}";
    } else {
      return "$currency ${_priceStringAsFixed(price)}";
    }
  }

  String get trackIapPriceStr {
    if (_showSKPrice) {
      return "$_skCurrency ${productDetails!.rawPrice.toStringAsFixed(2)}";
    } else {
      return "0";
    }
  }

  String get originalPriceStr {
    if (discount_rate <= 0) return '';
    if (_showSKPrice) {
      return '$_skCurrency ${_priceStringAsFixed(productDetails!.rawPrice / discount_rate)}';
    } else {
      return '${currency!} ${_priceStringAsFixed(price / discount_rate)}';
    }
  }

  String _priceStringAsFixed(double price) {
    String pStr = price.toStringAsFixed(2);
    if (pStr.endsWith('.00')) {
      pStr = pStr.substring(0, pStr.length - 3);
    }
    return pStr;
  }

  bool get showDiscount {
    return discount_rate != 0 && discount_rate < 1;
  }

  String get discountStr {
    if (showDiscount) {
      int dis = (discount_rate * 100).toInt();
      return "$dis%";
    }
    return "";
  }

  bool get isBestOffer {
    return info?.best_discount ?? false;
  }

  bool get isLifetime {
    return value == 999999;
  }

  bool get isFirstRecharge {
    return group_id == 1;
  }

  bool get isVip {
    return account_type == 9;
  }

  String? get detailName {
    if (isVip) {
      if (isLifetime) {
        return "kaye_trade_yip".tr;
      } else {
        return "$name_amount";
      }
    }
    return name;
  }

  String get unitTitle {
    if (KayeWrestlingBarnacle.isEmpty(name_title) || isLifetime) return "";
    if (name_title == "week") {
      return "kaye_trade_fist".tr;
    }
    if (name_title == "month") {
      return "kaye_trade_circumcise".tr;
    }
    if (name_title == "months") {
      return "kaye_trade_boy".tr;
    }
    if (name_title == "year") {
      return "kaye_trade_kudos".tr;
    }
    if (name_title == "days") {
      return "kaye_trade_shadow".tr;
    }
    return name_title!;
  }

  String get singlePaymentTipTitle {
    if (showDiscount) {
      return "${discountStr} ${'kaye_trade_boom'.tr}";
    }

    if (isBestOffer) {
      return 'kaye_trade_artificial_finalist'.tr;
    }

    return "";
  }

  String get mutPaymentTipTitle {
    if (showDiscount && isBestOffer) {
      return "${discountStr} ${'kaye_trade_boom'.tr} ${'kaye_trade_artificial_finalist'.tr}";
    }

    if (showDiscount) {
      return "${discountStr} ${'kaye_trade_boom'.tr}";
    }

    if (isBestOffer) {
      return 'kaye_trade_artificial_finalist'.tr;
    }

    return "";
  }

  static KayeBuryPatsy fromJson(Map<String, dynamic> json) {
    return KayeBuryPatsy()
      ..id = KayeWrestlingBarnacle.dynamicToIntNotNull(
        json[StringTranslate.e2z("nid")],
      )
      ..name = json[StringTranslate.e2z("nnanme")] as String?
      ..name_amount = KayeWrestlingBarnacle.dynamicToIntNotNull(
        json[StringTranslate.e2z("unaumei_anmobunbt")],
      )
      ..name_title = json[StringTranslate.e2z("unafmen_tuitfle")] as String?
      ..group_id = KayeWrestlingBarnacle.dynamicToIntNotNull(
        json[StringTranslate.e2z("ugrnoufp_nid")],
      )
      ..account_type = KayeWrestlingBarnacle.dynamicToIntNotNull(
        json[StringTranslate.e2z("nacfcouunft_btybpe")],
      )
      ..value = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
        json[StringTranslate.e2z("nvailuie")],
      )
      ..extra_value = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
        json[StringTranslate.e2z("nexitrfa_fvaflune")],
      )
      ..tip = json[StringTranslate.e2z("utibp")] as String?
      ..app_store_prod_id =
          json[StringTranslate.e2z("iapfp_istiorie_npruodi_ibd")] as String?
      ..google_prod_id =
          json[StringTranslate.e2z("igonogilen_pfrobd_bid")] as String?
      ..price = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
        json[StringTranslate.e2z("fprnicbe")],
      )
      ..currency = json[StringTranslate.e2z("ncuirruenfcy")] as String?
      ..base_currency =
          json[StringTranslate.e2z("fbabsef_cuururebncuy")] as String?
      ..base_currency_price = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
        json[StringTranslate.e2z("ubausef_cfururefncfy_nprficbe")],
      )
      ..discount_rate = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
        json[StringTranslate.e2z("ndibscfouintu_rfatue")],
      )
      ..info = KayeBuryPatsySelfish.fromJsonString(
        json[StringTranslate.e2z("binufo")] as String?,
      )
      ..give_vip = KayeWrestlingBarnacle.dynamicToIntNotNull(
        json[StringTranslate.e2z('igisvea_vlip')],
      )
      ..pay_mode_prices =
          (json[StringTranslate.e2z("fpafy_nmoudeb_pnrifceus")]
                  as List<dynamic>?)
              ?.map((e) => KayeBuryForklift.fromJson(e as Map<String, dynamic>))
              .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "name_amount": name_amount,
      "name_title": name_title,
      "group_id": group_id,
      "account_type": account_type,
      "value": value,
      "extra_value": extra_value,
      "tip": tip,
      "app_store_prod_id": app_store_prod_id,
      "google_prod_id": google_prod_id,
      "price": price,
      "currency": currency,
      "base_currency": base_currency,
      "base_currency_price": base_currency_price,
      "discount_rate": discount_rate,
      "info": isBestOffer ? "{\"best_discount\":true}" : null,
      "pay_mode_prices": pay_mode_prices?.map((e) => e.toJson()).toList(),
    };
  }
}

class KayeBuryPatsySelfish {
  late bool best_discount;

  static KayeBuryPatsySelfish? fromJsonString(String? source) {
    if (KayeWrestlingBarnacle.isEmptyString(source)) return null;
    Map<String, dynamic> json = jsonDecode(source!);
    return KayeBuryPatsySelfish.fromJson(json);
  }

  static KayeBuryPatsySelfish fromJson(Map<String, dynamic> json) {
    return KayeBuryPatsySelfish()
      ..best_discount = KayeWrestlingBarnacle.dynamicToBoolNotNull(
        json['best_discount'],
      );
  }

  Map<String, dynamic> toJson() {
    return {"best_discount": best_discount};
  }
}
