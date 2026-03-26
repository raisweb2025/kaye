import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_flattering.dart';
import 'package:kaye/kaye_kristen/proto/chatbox.pb.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../kaye_goggles/kaye_sasquatch.dart';
import '../kaye_learning/kaye_lead_planner_upon.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

class KayeLeadPlannerPlaybookUp {
  static Future<void> openChatWithCid(int cid, {bool isOffPage = false}) async {
    KayeLeadBanality? chatBox = await KAYE.kayeDb.chatBoxDao.modelById(cid);
    if (chatBox == null) return;

    openChatWithChatBox(chatBox);
  }

  static Future<void> openChatWithChatBox(
    KayeLeadBanality chatBox, {
    bool isOffPage = false,
  }) async {
    KayeLeadPlannerUpon args = KayeLeadPlannerUpon.byChatBox(chatBox);

    if (isOffPage) {
      KAYE.offNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    } else {
      KAYE.toNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    }
  }

  static Future<void> openChatWithUser(
    KayeSasquatch kayeSasquatch, {
    bool isOffPage = false,
  }) async {
    KayeLeadBanality? chatBox = await KAYE.kayeDb.chatBoxDao.modelByPartnerId(
      kayeSasquatch.uid,
    );
    if (chatBox != null) {
      openChatWithChatBox(chatBox);
      return;
    }

    KayeLeadPlannerUpon args = KayeLeadPlannerUpon.byChatUser(kayeSasquatch);

    if (isOffPage) {
      KAYE.offNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    } else {
      KAYE.toNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    }
  }

  static Future<void> openChatWithUid(
    int uid,
    String nickName,
    String avatarUrl, {
    bool isOffPage = false,
  }) async {
    KayeLeadBanality? chatBox = await KAYE.kayeDb.chatBoxDao.modelByPartnerId(
      uid,
    );
    if (chatBox != null) {
      openChatWithChatBox(chatBox);
      return;
    }

    KayeLeadPlannerUpon args = KayeLeadPlannerUpon.byUid(
      uid,
      nickName,
      avatarUrl,
    );

    if (isOffPage) {
      KAYE.offNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    } else {
      KAYE.toNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    }
  }

  static Future<void> openChatWithServiceUid(
    int uid, {
    bool isOffPage = false,
  }) async {
    KayeLeadBanality? chatBox = await chatBoxByUser(uid);
    if (chatBox == null) return;

    KayeLeadPlannerUpon args = KayeLeadPlannerUpon.byChatBox(chatBox);

    if (isOffPage) {
      KAYE.offNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    } else {
      KAYE.toNamed(KayeFortress.KayeLeadPlanner, arguments: args);
    }
  }

  static Future<KayeLeadBanality?> _getChatBoxByServer(
    int id, {
    bool showMsg = true,
  }) async {
    try {
      return await KayeLeadFlattering.instance.getChatBoxInfo(id);
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10084, e, stack);
      if (showMsg) Fluttertoast.showToast(msg: "kaye_trade_hokum_carefully".tr);
    }
    return null;
  }

  static Future<KayeLeadBanality?> chatBoxByUser(
    int? uid, {
    CreateChatboxReq_SourceType? srcType,
  }) async {
    if (uid == null || uid == 0) {
      Fluttertoast.showToast(msg: 'UID is null');
      return null;
    }

    KayeLeadBanality? chatBox = await KAYE.kayeDb.chatBoxDao.modelByPartnerId(
      uid,
    );
    if (chatBox != null) {
      return chatBox;
    }

    try {
      return await KayeLeadFlattering.instance.createChatBox([
        uid,
        KAYE.uid(),
      ], srcType: srcType);
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10085, e, stack);
      Fluttertoast.showToast(msg: "kaye_trade_hokum_carefully".tr);
    }
    return null;
  }
}
