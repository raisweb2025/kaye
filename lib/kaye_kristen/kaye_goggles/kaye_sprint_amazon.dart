import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'kaye_sprint_amazon_payment.dart';

class KayeSprintAmazon {
  int result = 0;
  bool? timeout;
  String? currency;
  double? total_price;
  int? order_id;

  static KayeSprintAmazon fromJson(Map<String, dynamic> json) {
    return KayeSprintAmazon()
      ..result = KayeWrestlingBarnacle.dynamicToIntNotNull(json['result'])
      ..timeout = KayeWrestlingBarnacle.dynamicToBoolNotNull(json['timeout'])
      ..currency = json['currency']
      ..total_price = KayeWrestlingBarnacle.dynamicToDoubleNotNull(
        json['total_price'],
      )
      ..order_id = KayeWrestlingBarnacle.dynamicToIntNotNull(json['order_id']);
  }

  Map<String, dynamic> toJson() {
    return {
      "result": result,
      "timeout": timeout,
      "currency": currency,
      "total_price": total_price,
      "order_id": order_id,
    };
  }
}
