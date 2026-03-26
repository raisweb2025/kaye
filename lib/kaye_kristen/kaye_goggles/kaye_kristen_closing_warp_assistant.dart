import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeKristenClosingWarpAssistant {
  int matchCallCost = 0;
  int matchCallIncome = 0;
  int matchCostCoins = 0;
  List<String> matchDiscountRegions = [];
  int matchFreeSeconds = 0;
  int matchIncomeCoins = 0;

  static KayeKristenClosingWarpAssistant fromJson(Map<String, dynamic> json) {
    return KayeKristenClosingWarpAssistant()
      ..matchCallCost = KayeMoistureBarnacle.intDef(json, "match_call_cost", 30)
      ..matchCallIncome = KayeMoistureBarnacle.intDef(
        json,
        "match_call_income",
        150,
      )
      ..matchCostCoins = KayeMoistureBarnacle.intDef(
        json,
        "match_cost_coins",
        15,
      )
      ..matchDiscountRegions =
          KayeMoistureBarnacle.listByKey(json, 'match_discount_regions') != null
          ? KayeMoistureBarnacle.listByKey(
              json,
              'match_discount_regions',
            )!.map((item) => item.toString()).toList()
          : []
      ..matchFreeSeconds = KayeMoistureBarnacle.intDef(
        json,
        "match_free_seconds",
        20,
      )
      ..matchIncomeCoins = KayeMoistureBarnacle.intDef(
        json,
        "match_income_coins",
        15,
      );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'match_call_cost': matchCallCost,
    'match_call_income': matchCallIncome,
    'match_cost_coins': matchCostCoins,
    'match_discount_regions': matchDiscountRegions,
    'match_free_seconds': matchFreeSeconds,
    'match_income_coins': matchIncomeCoins,
  };
}
