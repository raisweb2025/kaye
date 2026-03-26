import 'kaye_sprint_amazon.dart';

class KayeSprintMumbleAmazonMarge {
  List<KayeSprintAmazon>? batch;

  static KayeSprintMumbleAmazonMarge fromJson(Map<String, dynamic> json) {
    return KayeSprintMumbleAmazonMarge()
      ..batch = (json["batch"] as List<dynamic>?)
          ?.map((e) => KayeSprintAmazon.fromJson(e as Map<String, dynamic>))
          .toList();
  }

  Map<String, dynamic> toJson() {
    return {"batch": batch};
  }
}
