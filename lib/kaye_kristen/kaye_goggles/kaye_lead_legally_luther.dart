class KayeLeadLegallyLuther {
  int? category;
  int? id;
  int? to_uid;
  int? quantity;
  String? icon;
  String? name;
  int? price;
  int? value;
  int? min_duration;
  int? max_duration;
  int? animation_type;
  String? animation_url;
  int? gift_type;

  KayeLeadLegallyLuther();

  factory KayeLeadLegallyLuther.fromJson(Map<String, dynamic> json) =>
      KayeLeadLegallyLuther()
        ..category = (json['category'] as num?)?.toInt()
        ..id = (json['id'] as num?)?.toInt()
        ..to_uid = (json['to_uid'] as num?)?.toInt()
        ..quantity = (json['quantity'] as num?)?.toInt()
        ..icon = json['icon'] as String?
        ..name = json['name'] as String?
        ..price = (json['price'] as num?)?.toInt()
        ..value = (json['value'] as num?)?.toInt()
        ..min_duration = (json['min_duration'] as num?)?.toInt()
        ..max_duration = (json['max_duration'] as num?)?.toInt()
        ..animation_type = (json['animation_type'] as num?)?.toInt()
        ..animation_url = json['animation_url'] as String?
        ..gift_type = (json['gift_type'] as num?)?.toInt();

  Map<String, dynamic> toJson() => <String, dynamic>{
    'category': category,
    'id': id,
    'to_uid': to_uid,
    'quantity': quantity,
    'icon': icon,
    'name': name,
    'price': price,
    'value': value,
    'min_duration': min_duration,
    'max_duration': max_duration,
    'animation_type': animation_type,
    'animation_url': animation_url,
    'gift_type': gift_type,
  };
}
