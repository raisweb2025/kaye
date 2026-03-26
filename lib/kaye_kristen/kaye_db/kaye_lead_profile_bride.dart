import 'package:drift/drift.dart';

@DataClassName("kaye_lead_profile_bride")
class KayeLeadProfileBride extends Table {
  IntColumn get cu => integer().autoIncrement()();

  IntColumn get cid => integer()();

  IntColumn get uid => integer()();
}
