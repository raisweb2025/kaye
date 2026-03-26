import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_db/kaye_lead_profile_bride.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_heh_bride.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_luther_bride.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_sasquatch_bride.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as Path;

import '../kaye_goggles/kaye_goggles_sydney.dart';
import '../kaye_goggles/kaye_goggles_political.dart';
import '../kaye_goggles/kaye_goggles_betty.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_lead_db_uncool.dart';

part 'kaye_lead_look.g.dart';

@DriftDatabase(
  tables: [
    KayeSasquatchBride,
    KayeLeadBanalityBride,
    KayeLeadProfileBride,
    KayeLutherBride,
  ],
)
class KayeLeadTieFrank extends _$KayeLeadTieFrank {
  KayeLeadTieFrank._(super.e);

  factory KayeLeadTieFrank.database({bool logStatements = false}) {
    final executor = LazyDatabase(() async {
      final dbFile = File(Path.join(KAYE.userPath, 'kaye_db.dat'));
      return NativeDatabase(dbFile, logStatements: logStatements);
    });
    return KayeLeadTieFrank._(executor);
  }

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        await _createIndexes(m);
      },
      onUpgrade: (Migrator m, int from, int to) async {
        try {
          await m.database.transaction(() async {
            if (from < 2) {
              await m.addColumn(
                kayeLeadBanalityBride,
                kayeLeadBanalityBride.partnerId,
              );
              await m.addColumn(
                kayeLeadBanalityBride,
                kayeLeadBanalityBride.lastSnapType,
              );
              await m.addColumn(
                kayeLeadBanalityBride,
                kayeLeadBanalityBride.lastSnapCreateTime,
              );
              await m.addColumn(
                kayeLeadBanalityBride,
                kayeLeadBanalityBride.lastSnapJsonContent,
              );
              await m.addColumn(
                kayeLeadBanalityBride,
                kayeLeadBanalityBride.lastSnapTextContent,
              );
              await _createIndexes(m);
            }
          });
        } catch (e, stack) {
          KayeKristenGlitterFlattering.kayeSendWasher(660065, e, stack);
          throw Exception(e);
        }
      },
    );
  }

  Future<void> _createIndexes(Migrator m) async {
    await m.createIndex(
      Index(
        'snap_cid_create_time_index',
        'CREATE INDEX IF NOT EXISTS snap_cid_create_time_index ON kaye_luther_bride (cid, create_time DESC);',
      ),
    );
    await m.createIndex(
      Index(
        'snap_cid_owner_index',
        'CREATE INDEX IF NOT EXISTS snap_cid_owner_index ON kaye_luther_bride (cid, owner);',
      ),
    );

    await m.createIndex(
      Index(
        'chatbox_weight_update_time_index',
        'CREATE INDEX IF NOT EXISTS chatbox_weight_update_time_index ON kaye_lead_banality_bride (weight DESC, update_time DESC);',
      ),
    );
    await m.createIndex(
      Index(
        'chatbox_partner_id_index',
        'CREATE INDEX IF NOT EXISTS chatbox_partner_id_index ON kaye_lead_banality_bride (partner_id);',
      ),
    );
  }

  Future<bool> manualUpgradeDatabase() async {
    try {
      await KAYE.kayeDb.dispose();
      await KAYE.kayeDb.init();
      var db = KAYE.kayeDb.chatBoxDao.attachedDatabase;

      QueryRow? row = await db
          .customSelect('PRAGMA user_version')
          .getSingleOrNull();
      int currentVersion = 0;
      if (row != null && row.data.isNotEmpty) {
        dynamic first = row.data.values.first;
        if (first is int) {
          currentVersion = first;
        } else if (first is String) {
          currentVersion = int.tryParse(first) ?? 0;
        }
      }

      int targetVersion = schemaVersion;
      if (currentVersion == targetVersion) {
        return true;
      }
      return false;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(660066, e, stack);
    }
    return false;
  }
}
