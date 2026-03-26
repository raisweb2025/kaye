class KayeStarfish {
  int? id;
  String? name;
  String? icon;

  KayeStarfish();

  factory KayeStarfish.fromJson(Map<String, dynamic> json) => KayeStarfish()
    ..id = (json['id'] as num?)?.toInt()
    ..name = json['name'] as String?
    ..icon = json['icon'] as String?;

  Map<String, dynamic> toJson(KayeStarfish instance) => <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'icon': instance.icon,
  };
}
