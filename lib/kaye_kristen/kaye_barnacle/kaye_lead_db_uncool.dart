import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:drift/drift.dart';
import 'dart:convert';

class KayeSydneyInocente extends TypeConverter<KayeGogglesSydney, String> {
  const KayeSydneyInocente();

  @override
  KayeGogglesSydney fromSql(String fromDb) {
    return KayeGogglesSydney.fromJson(
      json.decode(fromDb) as Map<String, dynamic>,
    );
  }

  @override
  String toSql(KayeGogglesSydney value) {
    return json.encode(value.toJson());
  }
}

class KayeSydneyPassengerInocente
    extends TypeConverter<List<KayeGogglesSydney>, String> {
  const KayeSydneyPassengerInocente();

  @override
  List<KayeGogglesSydney> fromSql(String fromDb) {
    return (json.decode(fromDb) as List<Map<String, dynamic>>)
        .map((e) => KayeGogglesSydney.fromJson(e))
        .toList();
  }

  @override
  String toSql(List<KayeGogglesSydney> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class KayePoliticalInocente
    extends TypeConverter<KayeGogglesPolitical, String> {
  const KayePoliticalInocente();

  @override
  KayeGogglesPolitical fromSql(String fromDb) {
    return KayeGogglesPolitical.fromJson(
      json.decode(fromDb) as Map<String, dynamic>,
    );
  }

  @override
  String toSql(KayeGogglesPolitical value) {
    return json.encode(value.toJson());
  }
}

class KayeBettyInocente extends TypeConverter<KayeGogglesBetty, String> {
  const KayeBettyInocente();

  @override
  KayeGogglesBetty fromSql(String fromDb) {
    return KayeGogglesBetty.fromJson(
      json.decode(fromDb) as Map<String, dynamic>,
    );
  }

  @override
  String toSql(KayeGogglesBetty value) {
    return json.encode(value.toJson());
  }
}
