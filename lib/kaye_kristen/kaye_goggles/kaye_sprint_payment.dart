import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeSprintPayment {
  String? order_id;
  String? app_store_prod_id;
  String? google_prod_id;
  String? check_page_url;

  int? jump_type;

  static KayeSprintPayment fromJson(Map<String, dynamic> json) {
    return KayeSprintPayment()
      ..order_id = json['order_id']
      ..app_store_prod_id = json['app_store_prod_id']
      ..google_prod_id = json['google_prod_id']
      ..check_page_url = json['check_page_url']
      ..jump_type = KayeMoistureBarnacle.intDef(json, 'jump_type', 0);
  }

  Map<String, dynamic> toJson() {
    return {
      "order_id": order_id,
      "app_store_prod_id": app_store_prod_id,
      "google_prod_id": google_prod_id,
      "check_page_url": check_page_url,
      "jump_type": jump_type,
    };
  }
}
