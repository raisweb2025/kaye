import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_db_uncool.dart';
import 'package:drift/drift.dart';

@DataClassName("kaye_luther_bride")
class KayeLutherBride extends Table {
  IntColumn get cu => integer().autoIncrement()();

  IntColumn get id => integer().withDefault(const Constant(0))();

  IntColumn get cid => integer().withDefault(const Constant(0))();

  IntColumn get owner => integer().nullable()();

  TextColumn get ownerHead => text().nullable()();

  TextColumn get ownerName => text().nullable()();

  BoolColumn get unread => boolean().withDefault(const Constant(false))();

  IntColumn get createTime => integer().withDefault(const Constant(0))();

  IntColumn get prevSnapId => integer().withDefault(const Constant(0))();

  IntColumn get type => integer().withDefault(const Constant(0))();

  TextColumn get textContent => text().nullable()();

  TextColumn get image => text().map(const KayeSydneyInocente()).nullable()();

  TextColumn get video =>
      text().map(const KayePoliticalInocente()).nullable()();

  TextColumn get voice => text().map(const KayeBettyInocente()).nullable()();

  TextColumn get images =>
      text().map(const KayeSydneyPassengerInocente()).nullable()();

  TextColumn get jsonContent => text().nullable()();

  IntColumn get localId => integer().withDefault(const Constant(0))();

  TextColumn get extensions => text().nullable()();

  IntColumn get redPacketId => integer().withDefault(const Constant(0))();

  IntColumn get repliedSnapId => integer().withDefault(const Constant(0))();

  IntColumn get status => integer().withDefault(const Constant(0))();

  IntColumn get sendStatus => integer().withDefault(const Constant(0))();
}
