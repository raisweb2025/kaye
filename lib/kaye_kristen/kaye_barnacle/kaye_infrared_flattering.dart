import 'dart:async';
import 'package:kaye/kaye_kristen/kaye_implant/kaye_lead_implant.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_fermion_breach.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/proto/auth.pb.dart';
import 'package:kaye/kaye_kristen/proto/kaye_infrared.pb.dart';
import 'package:kaye/kaye_kristen/proto/kaye_gray.pb.dart';
import 'package:kaye/kaye_kristen/proto/chatbox.pb.dart';
import 'package:kaye/kaye_kristen/proto/common.pb.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart' as ImOB;
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_franchise_creep_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import 'package:kaye/kaye_kristen/proto/object.pb.dart';
import 'package:kaye/kaye_kristen/proto/snap.pb.dart';
import 'package:kaye/kaye_kristen/proto/sync.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';
import '../kaye_implant/kaye_lead_jelly_implant.dart';
import '../kaye_implant/kaye_luther_hobo_implant.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_delta/kaye_jewelry_lava.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_classy/kaye_hand.dart';
import 'kaye_lead_luther_genitals_cultural.dart';

class KayeInfraredFlattering {
  KayeInfraredFlattering._internal();

  static KayeInfraredFlattering? _instance;

  static KayeInfraredFlattering get instance => _getInstance();

  factory KayeInfraredFlattering() => _getInstance();

  static KayeInfraredFlattering _getInstance() {
    return _instance ??= KayeInfraredFlattering._internal();
  }

  int _currentLiveId = 0;

  get currentLiveId => _currentLiveId;

  set currentLiveId(id) {
    _currentLiveId = id;
  }

  Future<CommonRsp?> keepAlive(int liveId) {
    final req = LiveKeepAlive.create();
    req.liveId = Int64(liveId);
    return KAYE.socket.sendWithReturn<CommonRsp>(req).then((resp) {
      if (resp != null && resp.code == 0) {
        return resp;
      }
      return null;
    });
  }

  Future<EnterLiveRsp?> kayeLooselyInfraredTool(int anchorId, int liveId) {
    final req = EnterLiveReq.create();
    req.liveId = Int64(liveId);
    req.anchorUid = Int64(anchorId);
    return KAYE.socket.sendWithReturn<EnterLiveRsp>(req).then((resp) {
      if (resp != null && resp.code == 0) {
        return resp;
      }
      if (resp?.code == 30003) {
        KayeKristenGlitterFlattering.clickLiveEvent(
          "LIVE_JOIN_REJECT_KICK_OUT",
          liveId,
        );
        Fluttertoast.showToast(msg: "kaye_trade_praise_infrared_element".tr);
      } else {
        KayeKristenGlitterFlattering.clickLiveEvent("LIVE_JOIN_ERROR", liveId);
        Fluttertoast.showToast(msg: "kaye_trade_infrared_praise_march".tr);
      }
      return null;
    });
  }

  void kayeUndressInfraredTool(int liveId) {
    final req = LiveLeaveReq.create();
    req.liveId = Int64(liveId);
    KAYE.socket.sendWithoutResp(req);
  }

  bool sendLiveMessage(String content, int liveId) {
    final req = SendMessageReq.create();
    req.liveId = Int64(liveId);
    req.text = content;
    return KAYE.socket.sendWithoutResp(req);
  }

  bool sendLiveGift(int giftId, int liveId) {
    final req = LiveGiftGiveReq.create();
    req.liveId = Int64(liveId);
    req.giftId = Int64(giftId);
    return KAYE.socket.sendWithoutResp(req);
  }

  bool sendLiveLikes(int count, int liveId) {
    final req = LiveLikeReq.create();
    req.liveId = Int64(liveId);
    req.likeCount = count;
    return KAYE.socket.sendWithoutResp(req);
  }
}
