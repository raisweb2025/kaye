import 'package:kaye/kaye_kristen/kaye_db/kaye_lead_profile_bride.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_attach_sasquatch.dart';
import 'package:drift/drift.dart';

import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_goggles/kaye_sasquatch.dart';
import 'kaye_lead_look.dart';

part 'kaye_lead_profile_paddle.g.dart';

@DriftAccessor(tables: [KayeLeadProfileBride])
class KayeLeadProfilePaddle extends DatabaseAccessor<KayeLeadTieFrank>
    with _$KayeLeadProfilePaddleSultan {
  KayeLeadProfilePaddle(super.attachedDatabase);

  Future deleteEntitiesForChatBox(
    int cid, [
    List<KayeLeadSasquatch>? members,
  ]) async {
    return transaction(() async {
      if (members == null || members.isEmpty) {
        final del = delete(attachedDatabase.kayeLeadProfileBride)
          ..where((e) => e.cid.equals(cid));
        await del.go();
      } else {
        for (final m in members) {
          final query = select(attachedDatabase.kayeLeadProfileBride)
            ..where((e) => e.cid.equals(cid) & e.uid.equals(m.uid));
          final result = await query.get();
          if (result.isNotEmpty) {
            final e = kaye_lead_profile_bride(
              cu: result[0].cu,
              cid: cid,
              uid: m.uid,
            );
            await delete(attachedDatabase.kayeLeadProfileBride).delete(e);
          }
        }
      }
    });
  }

  Future<bool> hasMemberChatBox(int uid) async {
    final query = select(attachedDatabase.kayeLeadProfileBride)
      ..where((e) => e.uid.equals(uid));
    final ret = await query.get();
    return ret.isNotEmpty;
  }

  Future saveEntitiesForChatBox(
    int cid,
    List<KayeLeadSasquatch> members,
  ) async {
    if (members.isEmpty) return;
    return transaction(() async {
      for (final m in members) {
        final query = select(kayeLeadProfileBride)
          ..where((e) => e.cid.equals(cid) & e.uid.equals(m.uid));
        final result = await query.get();
        if (result.isEmpty) {
          final ec = KayeLeadProfileBridePup(
            cu: const Value.absent(),
            cid: Value(cid),
            uid: Value(m.uid),
          );
          await into(kayeLeadProfileBride).insert(ec);
        }
      }
    });
  }

  Future<List<kaye_lead_profile_bride>> entitiesForChatBox(int cid) async {
    final query = select(kayeLeadProfileBride)..where((e) => e.cid.equals(cid));
    return await query.get();
  }
}
