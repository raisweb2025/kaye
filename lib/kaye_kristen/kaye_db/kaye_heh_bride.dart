import 'package:drift/drift.dart';

@DataClassName("kaye_heh_bride")
class KayeLeadBanalityBride extends Table {
  IntColumn get id => integer()();

  IntColumn get type => integer().withDefault(const Constant(0))();

  TextColumn get name => text().nullable()();

  TextColumn get coverURL => text().nullable()();

  IntColumn get owner => integer().withDefault(const Constant(0))();

  TextColumn get qrCodeURL => text().nullable()();

  IntColumn get weight => integer().withDefault(const Constant(-1))();

  BoolColumn get muted => boolean().withDefault(const Constant(false))();

  IntColumn get unreadCount => integer().withDefault(const Constant(0))();

  IntColumn get updateTime => integer().withDefault(const Constant(0))();

  TextColumn get additionalInfo => text().nullable()();

  TextColumn get desc => text().nullable()();

  BoolColumn get serviceChat => boolean().withDefault(const Constant(false))();

  BoolColumn get hasChat => boolean().withDefault(const Constant(true))();

  IntColumn get lastReadSnapTime => integer().withDefault(const Constant(0))();

  IntColumn get clearCacheTime => integer().withDefault(const Constant(0))();

  IntColumn get partnerId => integer().withDefault(const Constant(0))();

  IntColumn get lastSnapType => integer().withDefault(const Constant(0))();
  TextColumn get lastSnapTextContent => text().nullable()();
  TextColumn get lastSnapJsonContent => text().nullable()();
  IntColumn get lastSnapCreateTime =>
      integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
