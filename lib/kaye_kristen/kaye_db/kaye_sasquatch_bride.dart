import 'package:drift/drift.dart';

@DataClassName("kaye_sasquatch_bride")
class KayeSasquatchBride extends Table {
  IntColumn get uid => integer()();

  TextColumn get nick_name => text().nullable()();

  TextColumn get avatar_url => text().nullable()();

  IntColumn get status => integer().withDefault(const Constant(1))();

  TextColumn get ucode => text().nullable()();

  TextColumn get birthday => text().nullable()();

  IntColumn get gender => integer().withDefault(const Constant(0))();

  TextColumn get constellation => text().nullable()();

  TextColumn get mobile => text().nullable()();

  TextColumn get cover_url => text().nullable()();

  TextColumn get signature => text().nullable()();

  TextColumn get area => text().nullable()();

  TextColumn get display_name => text().nullable()();

  IntColumn get follow => integer().withDefault(const Constant(0))();

  IntColumn get black => integer().withDefault(const Constant(0))();

  IntColumn get black_me => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {uid};
}
