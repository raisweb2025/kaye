import 'dart:convert';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_white_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';

import '../kaye_mason/kaye_stroke.dart';
import 'kaye_sydney_towards_barnacle.dart';

class KayeLutherEvil {
  static int generateLocalId() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  static KayeLuther generateLocalSnap(int cid, int uid) {
    final snap = KayeLuther();
    snap.chatBoxId = cid;
    snap.localId = generateLocalId();
    snap.owner = KAYE.uid();
    snap.ownerName = KAYE.user().nickName;
    snap.ownerHead = KAYE.user().avatarUrl;
    snap.createTime = DateTime.now().millisecondsSinceEpoch;
    snap.toUid = uid;
    return snap;
  }

  static void updateSnapCreateTime(KayeLuther snap) {
    snap.createTime = DateTime.now().millisecondsSinceEpoch;
  }

  static KayeLuther createTextSnap(int cid, int uid, String text) {
    final snap = generateLocalSnap(cid, uid);
    snap.type = Snap_SnapType.TXT_SNAP.value;
    snap.textContent = text;
    return snap;
  }

  static Future<KayeLuther> createImageSnap(int cid, int uid, String filePath) {
    return KayeSydneyTowardsBarnacle.kayeSuiteUniversityFrontSelfish(
      imagePath: filePath,
    ).then((info) {
      final snap = generateLocalSnap(cid, uid);
      snap.type = Snap_SnapType.IMG_SNAP.value;
      snap.image = KayeGogglesSydney();
      snap.image!.relativePath = KayeWhiteBarnacle.kayePreciselyWhiteDirtHook(
        filePath,
      );
      snap.image!.width = info.width;
      snap.image!.height = info.height;
      return snap;
    });
  }

  static Future<KayeLuther> createVideoSnap(int cid, int uid, String filePath) {
    return KayeSydneyTowardsBarnacle.kayeSuiteUniversityFrontSelfish(
      videoPath: filePath,
    ).then((info) {
      final snap = generateLocalSnap(cid, uid);
      snap.type = Snap_SnapType.VIDEO_SNAP.value;
      snap.video = KayeGogglesPolitical();
      snap.video!.relativePath = KayeWhiteBarnacle.kayePreciselyWhiteDirtHook(
        filePath,
      );
      snap.video!.width = info.width;
      snap.video!.height = info.height;
      return snap;
    });
  }

  static KayeLuther createVoiceSnap(int cid, int uid, String filePath) {
    final snap = generateLocalSnap(cid, uid);
    snap.type = Snap_SnapType.VOICE_SNAP.value;
    snap.voice = KayeGogglesBetty();
    snap.voice!.relativePath = KayeWhiteBarnacle.kayePreciselyWhiteDirtHook(
      filePath,
    );
    return snap;
  }

  static KayeLuther createStickerSnap(
    int cid,
    int uid,
    KayeGogglesSydney sticker,
  ) {
    final snap = generateLocalSnap(cid, uid);
    snap.type = Snap_SnapType.STICKER_SNAP.value;
    snap.image = sticker;
    return snap;
  }

  static KayeLuther createJsonSnap(int cid, int uid, String jsonContent) {
    final snap = generateLocalSnap(cid, uid);
    snap.type = Snap_SnapType.JSON_SNAP.value;
    snap.jsonContent = jsonContent;
    return snap;
  }

  static KayeLuther createUserCardJsonSnap(
    int cid,
    int uid,
    KayeSasquatch user,
  ) {
    Map<String, dynamic> params = {};
    params['category'] = 4;
    params['user_id'] = user.uid;
    params['user_head'] = user.avatarUrl;
    params['user_name'] = user.nickName;
    return createJsonSnap(cid, uid, json.encode(params));
  }
}
