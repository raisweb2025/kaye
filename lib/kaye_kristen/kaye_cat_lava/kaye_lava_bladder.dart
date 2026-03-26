import '../kaye_goggles/kaye_goggles_bladder.dart';

class KayeLavaBladder {
  late List<KayeGogglesBladder> records;

  static KayeLavaBladder fromJson(Map<String, dynamic> json) {
    return KayeLavaBladder()
      ..records = (json['banners'] as List<dynamic>?)!
          .map((e) => KayeGogglesBladder.fromJson(e as Map<String, dynamic>))
          .toList();
  }
}
