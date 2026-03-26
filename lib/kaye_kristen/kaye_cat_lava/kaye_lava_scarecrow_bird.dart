class KayeLavaScarecrowBird {
  List<RegionVO>? regions;

  static KayeLavaScarecrowBird fromJson(Map<String, dynamic> json) {
    return KayeLavaScarecrowBird()
      ..regions = (json['regions'] as List<dynamic>?)!
          .map((e) => RegionVO.fromJson(e as Map<String, dynamic>))
          .toList();
  }
}

class RegionVO {
  late String region_code;
  late String name;
  late String vip_only;

  static RegionVO fromJson(Map<String, dynamic> json) {
    return RegionVO()
      ..region_code = json['url'] as String
      ..name = json['port'] as String
      ..vip_only = json['weight'] as String;
  }

  Map<String, dynamic> toJson() {
    return {"region_code": region_code, "name": name, "vip_only": vip_only};
  }
}
