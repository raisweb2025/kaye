class KayeSprintAmazonPayment {
  int id = 0;
  String base_currency = "";
  int account_type = 0;
  double base_total_price = 0;

  static KayeSprintAmazonPayment fromJson(Map<String, dynamic> json) {
    return KayeSprintAmazonPayment()
      ..id = json['id']
      ..base_currency = json['base_currency']
      ..account_type = json['account_type']
      ..base_total_price = json['base_total_price'];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "base_currency": base_currency,
      "account_type": account_type,
      "base_total_price": base_total_price,
    };
  }
}
