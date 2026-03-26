import 'package:get/get.dart';
import 'package:json_annotation/json_annotation.dart';

enum KayeLeadEatWrestling { systemNotify, feedback }

class KayeLeadEatTie {
  String? icon;
  String? name;
  String? content;
  int count = 0;
  int? time;
  int? snapType = 0;
  KayeLeadEatWrestling type = KayeLeadEatWrestling.systemNotify;

  KayeLeadEatTie.fromSync(this.content, this.count, this.time, this.snapType) {
    name = "kaye_trade_jelly_order".tr;
    type = KayeLeadEatWrestling.systemNotify;
    icon = "kaye_ten_lead_jelly_order";
    if (snapType == 2) {
      content = "kaye_trade_sydney_cousin".tr;
    }
  }

  KayeLeadEatTie();

  static KayeLeadEatTie feedBackData() {
    return KayeLeadEatTie()
      ..name = "kaye_trade_hippy_swell".tr
      ..type = KayeLeadEatWrestling.feedback
      ..icon = "kaye_ten_lead_eat_mason"
      ..content = "kaye_trade_hippy_swell".tr
      ..time = 0
      ..count = 0;
  }

  static KayeLeadEatTie systemData() {
    return KayeLeadEatTie()
      ..name = "kaye_trade_jelly_order".tr
      ..type = KayeLeadEatWrestling.systemNotify
      ..icon = "kaye_ten_lead_jelly_order"
      ..content = "kaye_trade_jelly_order".tr
      ..time = 0
      ..count = 0;
  }

  @override
  int get hashCode => type.index;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is KayeLeadEatTie && type == other.type;
  }

  factory KayeLeadEatTie.fromJson(Map<String, dynamic> json) => KayeLeadEatTie()
    ..icon = json['icon'] as String?
    ..name = json['name'] as String?
    ..content = json['content'] as String?
    ..count = (json['count'] as num).toInt()
    ..time = (json['time'] as num?)?.toInt()
    ..snapType = (json['snapType'] as num?)?.toInt()
    ..type = $enumDecode(KayeLeadEatWrestlingPublishMoisture, json['type']);

  Map<String, dynamic> toJson() => <String, dynamic>{
    'icon': icon,
    'name': name,
    'content': content,
    'count': count,
    'time': time,
    'snapType': snapType,
    'type': KayeLeadEatWrestlingPublishMoisture[type]!,
  };
}

const KayeLeadEatWrestlingPublishMoisture = {
  KayeLeadEatWrestling.systemNotify: 'systemNotify',
  KayeLeadEatWrestling.feedback: 'feedback',
};
