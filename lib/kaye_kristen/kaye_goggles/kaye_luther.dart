import 'dart:convert';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pbenum.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_lead_luther_whatever_conundrum_barnacle.dart';
import 'kaye_lead_luther_whatever_conundrum.dart';

enum ChatSnapSendStatus { success, failed, sending }

class KayeLuther {
  int? id;
  int? chatBoxId;
  int? owner;
  String? ownerHead;
  String? ownerName;
  bool? unread;
  int? createTime;
  int? prevSnapId;
  int? type;
  String? textContent;
  String? jsonContent;
  int? localId;
  Map? extensions;
  int? repliedSnapId;
  KayeLuther? repliedSnap;
  int? status;

  KayeGogglesBetty? voice;
  KayeGogglesSydney? image;
  KayeGogglesPolitical? video;

  int? sendStatus;
  List<InlineSpan>? richTexts;
  KayeLeadLutherWhateverConundrum? _jsonContentObj;
  int? clearCacheTime;

  List<KayeGogglesSydney>? images;

  int? toUid;

  @override
  int get hashCode => '$id$localId'.hashCode;

  bool get isUserSnap {
    bool userRelated = true;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);
      if (snapType == Snap_SnapType.WEAK_SNAP) {
        userRelated = false;
      } else if (snapType == Snap_SnapType.JSON_SNAP) {
        userRelated = KayeLeadLutherWhateverConundrumBarnacle.isUserRelated(
          jsonContentObj,
        );
      } else {}
    }
    return userRelated;
  }

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (other is! KayeLuther) return false;
    if (isIdValid && other.isIdValid) {
      return id == other.id;
    } else {
      return isMine && other.isMine && localId == other.localId;
    }
  }

  bool get isMine => owner == KAYE.uid();

  bool get isIdValid => (id ?? 0) > 0;

  bool get isRepliedIdValid => repliedSnapId != null && repliedSnapId! > 0;

  bool get hasRepliedSnap => isRepliedIdValid && repliedSnap != null;

  bool get isUnread => unread != null && unread!;

  bool get isResourceUploaded {
    bool? uploaded = true;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);

      if (snapType == Snap_SnapType.IMG_SNAP) {
        uploaded = image?.isIdValid;
      } else if (snapType == Snap_SnapType.VIDEO_SNAP) {
        uploaded = video?.isIdValid;
      } else if (snapType == Snap_SnapType.VOICE_SNAP) {
        uploaded = voice?.isIdValid;
      }
    }
    return uploaded ?? false;
  }

  bool get isSupportType {
    bool support = false;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);
      if (snapType == Snap_SnapType.VIDEO_SNAP ||
          snapType == Snap_SnapType.TXT_SNAP ||
          snapType == Snap_SnapType.IMG_SNAP ||
          snapType == Snap_SnapType.WEAK_SNAP ||
          snapType == Snap_SnapType.VOICE_SNAP) {
        support = true;
      } else if (snapType == Snap_SnapType.JSON_SNAP) {
        support = KayeLeadLutherWhateverConundrum.isSupported(jsonContentObj);
      }
    }
    return support;
  }

  bool get isSnackShowType {
    bool support = false;
    if (type != null) {
      var snapType = Snap_SnapType.valueOf(type!);
      if (snapType == Snap_SnapType.VIDEO_SNAP ||
          snapType == Snap_SnapType.TXT_SNAP ||
          snapType == Snap_SnapType.IMG_SNAP) {
        support = true;
      }
    }
    return support;
  }

  bool get isLocalIdValid => isMine && localId != null && localId! > 0;

  KayeLeadLutherWhateverConundrum? get jsonContentObj {
    if (_jsonContentObj == null &&
        type == Snap_SnapType.JSON_SNAP.value &&
        jsonContent != null) {
      final jsonObj = (jsonDecode(jsonContent!) as Map).cast<String, dynamic>();
      _jsonContentObj = KayeLeadLutherWhateverConundrum.fromJson(jsonObj);
    }
    return _jsonContentObj;
  }

  bool get isCallJsonSnap =>
      type == Snap_SnapType.JSON_SNAP.value &&
      KayeLeadLutherWhateverConundrumBarnacle.isCallCategory(jsonContentObj);

  bool get isGiftJsonSnap =>
      type == Snap_SnapType.JSON_SNAP.value &&
      KayeLeadLutherWhateverConundrumBarnacle.isGiftCategory(jsonContentObj);
}
