import 'package:kaye/kaye_kristen/kaye_db/kaye_sasquatch_bride.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_lead_look.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:drift/drift.dart';

import '../kaye_goggles/kaye_lead_sasquatch.dart';

part 'kaye_sasquatch_paddle.g.dart';

@DriftAccessor(tables: [KayeSasquatchBride])
class KayeSasquatchPaddle extends DatabaseAccessor<KayeLeadTieFrank>
    with _$KayeSasquatchPaddleSultan {
  KayeSasquatchPaddle(super.db);

  Future saveOrUpdateModels(List<KayeLeadSasquatch>? models) async {
    if (models == null || models.isEmpty) return;
    return transaction(() async {
      for (final m in models) {
        final e = _modelToEntityCompanion(m);
        if (e != null) {
          if ((await _entityById(m.uid)) != null) {
            await update(kayeSasquatchBride).replace(e);
          } else {
            await into(kayeSasquatchBride).insert(e);
          }
        }
      }
    });
  }

  Future<kaye_sasquatch_bride?> _entityById(int? id) async {
    if (id == null || id == 0) return null;
    final query = select(attachedDatabase.kayeSasquatchBride)
      ..where((e) => e.uid.equals(id));
    return query.getSingleOrNull();
  }

  KayeSasquatchBridePup? _modelToEntityCompanion(KayeLeadSasquatch? m) {
    if (m == null) return null;
    return KayeSasquatchBridePup(
      uid: Value(m.uid),
      nick_name: Value(m.nickName),
      avatar_url: Value(m.avatarUrl),
      gender: m.gender != null ? Value(m.gender!) : Value.absent(),
      signature: m.signature != null ? Value(m.signature) : Value.absent(),
      follow: Value(m.followed),
    );
  }

  Future deleteModels(List<dynamic>? models) async {
    if (models == null || models.isEmpty) return;
    return transaction(() async {
      for (final m in models.toSet()) {
        final uid = (m is int) ? m : m.uid;
        final del = delete(attachedDatabase.kayeSasquatchBride)
          ..where((entity) => entity.uid.equals(uid));
        await del.go();
      }
    });
  }

  Future<List<KayeLeadSasquatch>> modelsByIds(Iterable<int> ids) async {
    return transaction(() async {
      List<KayeLeadSasquatch> models = [];
      for (final id in ids) {
        final m = await modelById(id);
        if (m != null) models.add(m);
      }
      return models;
    });
  }

  Future<KayeLeadSasquatch?> modelById(int? id) async {
    return _modelFromEntity(await _entityById(id));
  }

  KayeLeadSasquatch? _modelFromEntity(kaye_sasquatch_bride? e) {
    if (e == null) return null;
    return KayeLeadSasquatch()
      ..uid = e.uid
      ..nickName = e.nick_name!
      ..avatarUrl = e.avatar_url!
      ..gender = e.gender
      ..signature = e.signature
      ..followed = e.follow;
  }
}
