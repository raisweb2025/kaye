import '../kaye_goggles/kaye_jelly_order_tie.dart';
import 'kaye_lava_jelly_cagey.dart';

class KayeLavaOrderPassenger {
  late int page;

  late bool hasMore;

  List<KayeJellyOrderTie> records = [];

  static KayeLavaOrderPassenger fromJson(Map<String, dynamic> json) {
    KayeLavaOrderPassenger list = KayeLavaOrderPassenger();

    var records = json['records'];
    if (records != null) {
      list.records = (records as List<dynamic>?)!
          .map((e) => KayeJellyOrderTie.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    return list
      ..page = int.parse(json['page'])
      ..hasMore = json['has_more'];
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'page': page,
    'hasMore': hasMore,
    'records': records,
  };
}
