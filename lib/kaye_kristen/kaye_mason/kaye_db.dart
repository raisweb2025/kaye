import 'package:kaye/kaye_kristen/kaye_db/kaye_lead_profile_paddle.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_heh_paddle.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_sasquatch_paddle.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_lead_look.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import '../kaye_db/kaye_luther_paddle.dart';
import 'kaye_kristen_glitter_flattering.dart';

class KayeDb {
  late KayeLeadTieFrank _chatDB;

  late KayeSasquatchPaddle _userDao;

  KayeSasquatchPaddle get userDao => _userDao;

  late KayeLutherPaddle _snapDao;

  KayeLutherPaddle get snapDao => _snapDao;

  late KayeLeadProfilePaddle _chatBoxMemberDao;

  late KayeLeadBanalityPaddle _chatBoxDao;

  KayeLeadBanalityPaddle get chatBoxDao => _chatBoxDao;

  Future<void> init() async {
    _chatDB = KayeLeadTieFrank.database();

    _userDao = KayeSasquatchPaddle(_chatDB);
    _snapDao = KayeLutherPaddle(_chatDB, KAYE.uid());
    _chatBoxMemberDao = KayeLeadProfilePaddle(_chatDB);
    _chatBoxDao = KayeLeadBanalityPaddle(
      _chatDB,
      _snapDao,
      _userDao,
      _chatBoxMemberDao,
    );
  }

  Future<void> dispose() async {
    try {
      await _chatDB.close();
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(50005, e, stack);
    }
  }
}
