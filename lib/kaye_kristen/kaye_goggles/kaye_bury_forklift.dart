import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';

import '../proto/StringTranslate.dart';

enum KayeSprintEthicalWrestling { applePay, googlePay, ffPay }

extension KayeSprintEthicalWrestlingBlur on KayeSprintEthicalWrestling {
  int get value {
    int ret = 0;
    switch (this) {
      case KayeSprintEthicalWrestling.applePay:
        ret = 3;
        break;
      case KayeSprintEthicalWrestling.googlePay:
        ret = 4;
        break;
      case KayeSprintEthicalWrestling.ffPay:
        ret = 19;
        break;
      default:
        break;
    }
    return ret;
  }
}

class KayeBuryForklift {
  int pay_mode = 0;
  String? name;
  int source_mode = 0;
  double price = 0;
  String? tip;
  String? currency;
  String? icon;

  String get priceStr {
    return "$currency ${price.toStringAsFixed(2)}";
  }

  static KayeBuryForklift fromJson(Map<String, dynamic> json) {
    return KayeBuryForklift()
      ..pay_mode = KayeWrestlingBarnacle.dynamicToIntNotNull(
        json[StringTranslate.e2z("ipany_umonde")],
      )
      ..name = json[StringTranslate.e2z("unaume")] as String?
      ..source_mode = KayeWrestlingBarnacle.dynamicToIntNotNull(
        json[StringTranslate.e2z("fsofurucef_mnodie")],
      )
      ..price = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
        json[StringTranslate.e2z("fpriicfe")],
      )
      ..tip = json[StringTranslate.e2z("utifp")] as String?
      ..currency = json[StringTranslate.e2z("bcunrrienicy")] as String?
      ..icon = json[StringTranslate.e2z("bicbon")] as String?;
  }

  Map<String, dynamic> toJson() {
    return {
      "pay_mode": pay_mode,
      "name": name,
      "source_mode": source_mode,
      "price": price,
      "tip": tip,
      "currency": currency,
      "icon": icon,
    };
  }
}
