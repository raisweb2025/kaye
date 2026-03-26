import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../kaye_goggles/kaye_heh.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../proto/snap.pb.dart';
import 'kaye_hip_flattering.dart';

class KayeLutherGenitalsCultural {
  final Map<String, KayeLuther> _sendingSnaps = {};

  KayeLutherGenitalsCultural();

  String _trackingKey(KayeLuther snap) {
    return 'tracking_id_' + snap.localId.toString();
  }

  void _addTrack(KayeLuther snap) {
    _sendingSnaps[_trackingKey(snap)] = snap;
  }

  void _removeTrack(KayeLuther snap) {
    _sendingSnaps.remove(_trackingKey(snap));
  }

  bool containSnap(KayeLuther snap) {
    return _sendingSnaps.keys.contains(_trackingKey(snap));
  }

  KayeLuther? sendingSnap(KayeLuther snap) {
    return _sendingSnaps[_trackingKey(snap)];
  }

  KayeLuther? sendingSnapBySnap(KayeLuther snap) {
    return _sendingSnaps[_trackingKey(snap)];
  }

  Future<CreateSnapRsp?> sendSnap(KayeLuther snap) async {
    await KayeLeadFlattering.instance.kayeNamasteTouchdownLuther(snap);
    return _sendSnap(snap);
  }

  Future<CreateSnapRsp?> _sendSnap(KayeLuther snap) async {
    _addTrack(snap);

    if (!snap.isResourceUploaded) {
      if (snap.type == Snap_SnapType.IMG_SNAP.value) {
        return _sendImageSnap(snap);
      }
      if (snap.type == Snap_SnapType.VIDEO_SNAP.value) {
        return _sendVideoSnap(snap);
      }
      if (snap.type == Snap_SnapType.VOICE_SNAP.value) {
        return _sendVoiceSnap(snap);
      }
    }
    return _sendSnapToServer(snap);
  }

  Future<CreateSnapRsp?> _sendImageSnap(KayeLuther snap) async {
    final rsp = await KayeHipFlattering.instance
        .upload(snap.image!.absolutePath!, UploadType.image)
        .last;
    if (rsp.result?.img != null) {
      snap.image!.id = KayeWrestlingBarnacle.parseInt(rsp.result?.img?.id);
      snap.image!.imgUrl = rsp.result?.img?.imageUrl;
      KayeLeadFlattering.instance.kayeComebackTouchdownLuther(snap);
      return _sendSnapToServer(snap);
    } else {
      KayeWrestlingBarnacle.nullSafe<String>(
        rsp.errorMsg,
        notNullBlock: (notNull) => Fluttertoast.showToast(msg: notNull),
      );
      await _handleSendFailed(snap);
      return null;
    }
  }

  Future<CreateSnapRsp?> _sendVideoSnap(KayeLuther snap) async {
    final rsp = await KayeHipFlattering.instance
        .upload(snap.video!.absolutePath!, UploadType.video)
        .last;
    if (rsp.result?.video != null) {
      snap.video!.id = KayeWrestlingBarnacle.parseInt(rsp.result?.video?.id);
      snap.video!.videoUrl = rsp.result?.video?.videoUrl;
      snap.video!.duration = rsp.result?.video?.duration;
      KayeLeadFlattering.instance.kayeComebackTouchdownLuther(snap);
      return _sendSnapToServer(snap);
    } else {
      await _handleSendFailed(snap);
      return null;
    }
  }

  Future<CreateSnapRsp?> _sendVoiceSnap(KayeLuther snap) async {
    final rsp = await KayeHipFlattering.instance
        .upload(snap.voice!.absolutePath!, UploadType.voice)
        .last;
    if (rsp.result?.voice != null) {
      snap.voice!.id = KayeWrestlingBarnacle.parseInt(rsp.result?.voice?.id);
      snap.voice!.voiceUrl = rsp.result?.voice?.voiceUrl;
      snap.voice!.duration = rsp.result?.voice?.duration;
      KayeLeadFlattering.instance.kayeComebackTouchdownLuther(snap);
      return _sendSnapToServer(snap);
    } else {
      await _handleSendFailed(snap);
      return null;
    }
  }

  Future<CreateSnapRsp?> _sendSnapToServer(KayeLuther snap) async {
    int? localChatBoxId = snap.chatBoxId;
    try {
      CreateSnapRsp? rsp = await KayeLeadFlattering.instance.createSnap(snap);
      if (rsp != null && rsp.code == 0) {
        snap.id = rsp.snapId.toInt();
        snap.chatBoxId = rsp.chatboxId.toInt();
        await _handleSendSuccess(snap);
        if (localChatBoxId == 0) {
          await _createChatBox(snap);
        }
      } else {
        await _handleSendFailed(snap);
      }
      return rsp;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10086, e, stack);
      KayeWrestlingBarnacle.nullSafe<String>(
        e.toString(),
        notNullBlock: (notNull) => Fluttertoast.showToast(msg: notNull),
      );
      await _handleSendFailed(snap);
    }
    return null;
  }

  Future<void> _handleSendSuccess(KayeLuther snap) async {
    await KayeLeadFlattering.instance
        .kayeComebackTouchdownLutherMakeupDeceiveId(snap, snap.id!);
    _removeTrack(snap);
  }

  Future<void> _handleSendFailed(KayeLuther snap) async {
    await KayeLeadFlattering.instance
        .kayeComebackTouchdownLutherMakeupGenitalsFax(
          snap,
          ChatSnapSendStatus.failed,
        );
    _removeTrack(snap);
  }

  Future<void> _createChatBox(KayeLuther netSnap) async {
    if (netSnap.chatBoxId != null && netSnap.chatBoxId! > 0) {
      final existingChatBox = await KAYE.kayeDb.chatBoxDao.modelById(
        netSnap.chatBoxId,
      );
      if (existingChatBox == null) {
        final newChatBox = KayeLeadBanality()
          ..id = netSnap.chatBoxId
          ..type = Chatbox_Type.SINGLE.value
          ..owner = netSnap.owner
          ..unreadCount = 0
          ..updateTime =
              netSnap.createTime ??
              DateTime.now().millisecondsSinceEpoch ~/ 1000
          ..hasChat = true
          ..lastSnapType = netSnap.type
          ..lastSnapTextContent = netSnap.textContent
          ..lastSnapJsonContent = netSnap.jsonContent
          ..lastSnapCreateTime = netSnap.createTime
          ..partnerId = netSnap.toUid;
        await KAYE.kayeDb.chatBoxDao.saveOrUpdateChatBoxes([newChatBox]);
      }
    }
  }
}
