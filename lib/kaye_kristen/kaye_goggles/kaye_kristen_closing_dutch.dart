import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeKristenClosingDutch {
  late int hidePriceWhenAmountZero = 0;

  late bool enableLive = false;

  late List<String> webViewInAppSchemeList = [];

  static KayeKristenClosingDutch fromJson(Map<String, dynamic> json) {
    return KayeKristenClosingDutch()
      ..hidePriceWhenAmountZero = KayeMoistureBarnacle.intDef(
        json,
        'hide_price_when_amount_zero',
        0,
      )
      ..enableLive = KayeMoistureBarnacle.boolDef(json, 'enable_live', false)
      ..webViewInAppSchemeList =
          KayeMoistureBarnacle.listByKey(json, 'webView_in_app_scheme_list') !=
              null
          ? KayeMoistureBarnacle.listByKey(
              json,
              'webView_in_app_scheme_list',
            )!.map((item) => item.toString()).toList()
          : [];
  }

  Map<String, dynamic> toJson() {
    return {
      "hide_price_when_amount_zero": hidePriceWhenAmountZero,
      "enable_live": enableLive,
    };
  }
}
