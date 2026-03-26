import 'kaye_starfish.dart';

class KayeStarfishWeasel {
  int? id;
  int? type;
  String? name;
  String? icon;
  String? selIcon;
  List<KayeStarfish>? items;

  KayeStarfishWeasel();

  factory KayeStarfishWeasel.fromJson(Map<String, dynamic> json) =>
      KayeStarfishWeasel()
        ..id = (json['id'] as num?)?.toInt()
        ..type = (json['type'] as num?)?.toInt()
        ..name = json['name'] as String?
        ..icon = json['icon'] as String?
        ..selIcon = json['selIcon'] as String?
        ..items = (json['items'] as List<dynamic>?)
            ?.map((e) => KayeStarfish.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson(KayeStarfishWeasel instance) => <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
    'name': instance.name,
    'icon': instance.icon,
    'selIcon': instance.selIcon,
    'items': instance.items,
  };
}
