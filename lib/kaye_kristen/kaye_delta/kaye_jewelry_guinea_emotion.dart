import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/proto/auth.pb.dart';
import 'package:kaye/kaye_kristen/proto/kaye_infrared.pb.dart';
import 'package:kaye/kaye_kristen/proto/kaye_gray.pb.dart';
import 'package:kaye/kaye_kristen/proto/chatbox.pb.dart';
import 'package:kaye/kaye_kristen/proto/kaye_goal.pb.dart';
import 'package:kaye/kaye_kristen/proto/common.pb.dart';
import 'package:kaye/kaye_kristen/proto/google/protobuf/any.pb.dart';
import 'package:kaye/kaye_kristen/proto/im_message.pb.dart' as IM;
import 'package:kaye/kaye_kristen/proto/kaye_cousin.pb.dart' as Flash;
import 'package:kaye/kaye_kristen/proto/live_message.pb.dart' as LIVE;
import 'package:kaye/kaye_kristen/proto/message.pb.dart';
import 'package:kaye/kaye_kristen/proto/snap.pb.dart';
import 'package:kaye/kaye_kristen/proto/sync.pb.dart';
import 'package:protobuf/protobuf.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../proto/kaye_dutch.pb.dart';
import 'kaye_beverly.dart';

typedef KayeJewelryCousinPrius = dynamic Function();

class KayeJewelryGuineaEmotion {
  static void init() {
    _req(AuthReq(), Message_Category.BASE, Message_Type.AUTHREQ);
    _req(AppTrackRecord(), Message_Category.BASE, Message_Type.APPTRACK);
    _req(
      GetUserOnlineTimeReq(),
      Message_Category.kaye_lead,
      Flash.Message_Type.GETUSERONLINETIMEREQ,
    );
    _req(
      ChatCallReq(),
      Message_Category.kaye_lead,
      Flash.Message_Type.CHATCALLREQ,
    );
    _req(AiCallReq(), Message_Category.kaye_lead, Flash.Message_Type.AICALLREQ);
    _req(
      SendChatCallGiftReq(),
      Message_Category.kaye_lead,
      Flash.Message_Type.SENDCHATCALLGIFTREQ,
    );
    _req(
      RateChatCallReq(),
      Message_Category.kaye_lead,
      Flash.Message_Type.RATECHATCALLREQ,
    );
    _req(
      ConfirmChatCallMatchReq(),
      Message_Category.kaye_lead,
      Flash.Message_Type.CONFIRMCHATCALLMATCHREQ,
    );
    _req(
      CheckCallReq(),
      Message_Category.kaye_lead,
      Flash.Message_Type.CHECKCALLREQ,
    );

    _resp(Message_Category.BASE, Message_Type.AUTHRSP, () => AuthRsp());
    _resp(
      Message_Category.kaye_lead,
      Flash.Message_Type.GETUSERONLINETIMERSP,
      () => GetUserOnlineTimeRsp(),
    );
    _resp(Message_Category.IM, IM.Message_Type.SYNCNOTIFY, () => SyncNotify());
    _resp(Message_Category.IM, IM.Message_Type.SYNC, () => Sync());
    _resp(
      Message_Category.kaye_lead,
      Flash.Message_Type.CHECKCALLRSP,
      () => CheckCallRsp(),
    );
    _resp(
      Message_Category.kaye_lead,
      Flash.Message_Type.CHATCALLRSP,
      () => ChatCallRsp(),
    );

    _resp(Message_Category.BASE, Message_Type.COMMONRSP, () => CommonRsp());
    _resp(
      Message_Category.BASE,
      Message_Type.USERRUNTIMEPSH,
      () => UserRuntimePSH(),
    );
    _resp(
      Message_Category.BASE,
      Message_Type.USERSTATUSPSH,
      () => UserStatus(),
    );

    _req(Sync(), Message_Category.IM, IM.Message_Type.SYNC);
    _req(
      SyncKeyConfirmNotify(),
      Message_Category.IM,
      IM.Message_Type.SYNCKEYCONFIRMNOTIFY,
    );

    _req(CreateSnapReq(), Message_Category.IM, IM.Message_Type.CREATESNAPREQ);
    _resp(
      Message_Category.IM,
      IM.Message_Type.CREATESNAPRSP,
      () => CreateSnapRsp(),
    );

    _req(
      BatchGetChatboxInfoReq(),
      Message_Category.IM,
      IM.Message_Type.BATCHGETCHATBOXINFOREQ,
    );
    _resp(
      Message_Category.IM,
      IM.Message_Type.BATCHGETCHATBOXINFORSP,
      () => BatchGetChatboxInfoRsp(),
    );

    _req(
      UpdateChatboxReadedStatusReq(),
      Message_Category.IM,
      IM.Message_Type.UPDATECHATBOXREADEDSTATUSREQ,
    );

    _req(
      CreateChatboxReq(),
      Message_Category.IM,
      IM.Message_Type.CREATECHATBOXREQ,
    );
    _resp(
      Message_Category.IM,
      IM.Message_Type.CREATECHATBOXRSP,
      () => CreateChatboxRsp(),
    );

    _req(
      GetChatboxInfoReq(),
      Message_Category.IM,
      IM.Message_Type.GETCHATBOXINFOREQ,
    );
    _resp(
      Message_Category.IM,
      IM.Message_Type.GETCHATBOXINFORSP,
      () => GetChatboxInfoRsp(),
    );

    _req(
      RemoveChatboxReq(),
      Message_Category.IM,
      IM.Message_Type.REMOVECHATBOXREQ,
    );
    _req(ReadSnapReq(), Message_Category.IM, IM.Message_Type.READSNAPREQ);

    _resp(
      Message_Category.kaye_lead,
      Flash.Message_Type.SYSNOTIFICATIONNOTIFY,
      () => SysNotify(),
    );

    _psh(
      Message_Category.kaye_lead,
      Flash.Message_Type.CHATCALLPSH,
      () => ChatCallPsh(),
    );
    _psh(
      Message_Category.kaye_lead,
      Flash.Message_Type.BEGGIFTPSH,
      () => BegGiftPSH(),
    );
    _psh(
      Message_Category.kaye_lead,
      Flash.Message_Type.ALERTNOTIFY,
      () => AlertNotify(),
    );
    _psh(Message_Category.BASE, Message_Type.POPUPNOTIFY, () => PopupNotify());

    _req(EnterLiveReq(), Message_Category.LIVE, LIVE.Message_Type.ENTERLIVEREQ);
    _resp(
      Message_Category.LIVE,
      LIVE.Message_Type.ENTERLIVERSP,
      () => EnterLiveRsp(),
    );

    _req(
      SendMessageReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.SENDMESSAGEREQ,
    );
    _req(
      LiveGiftGiveReq(),
      Message_Category.LIVE,
      LIVE.Message_Type.LIVEGIFTGIVEREQ,
    );
    _req(LiveLikeReq(), Message_Category.LIVE, LIVE.Message_Type.LIVELIKEREQ);
    _req(
      LiveKeepAlive(),
      Message_Category.LIVE,
      LIVE.Message_Type.LIVEKEEPALIVE,
    );

    _req(LiveLeaveReq(), Message_Category.LIVE, LIVE.Message_Type.LIVELEAVEREQ);

    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.CALLKICKPSH,
      () => CallKickPsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.CALLINVITEPSH,
      () => CallInvitePsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVEENDPSH,
      () => LiveEndPsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVEFEEDPSH,
      () => LiveFeedPsh(),
    );
    _psh(
      Message_Category.LIVE,
      LIVE.Message_Type.LIVELIKEPSH,
      () => LiveLikePsh(),
    );
  }

  static Map<int, Map<int, KayeJewelryCousinPrius>> _messageFacotoryMap = {};

  static Map<Type, KayeBeverly> _employeeFactoryMap = {};

  static void _psh(
    Message_Category cate,
    ProtobufEnum type,
    KayeJewelryCousinPrius factory,
  ) {
    _resp(cate, type, factory);
  }

  static void _req(
    GeneratedMessage msg,
    Message_Category cate,
    ProtobufEnum type,
  ) {
    _employeeFactoryMap[msg.runtimeType] = KayeBeverly(
      cate.value,
      type.value,
      null,
    );
  }

  static void _resp(
    Message_Category cate,
    ProtobufEnum type,
    KayeJewelryCousinPrius factory,
  ) {
    Map<int, KayeJewelryCousinPrius>? typeFactoryMap =
        _messageFacotoryMap[cate.value];
    if (typeFactoryMap == null) {
      typeFactoryMap = {};
      _messageFacotoryMap[cate.value] = typeFactoryMap;
    }

    typeFactoryMap[type.value] = factory;
  }

  static T? parse<T extends GeneratedMessage>(Message rawEmployee) {
    Map<int, KayeJewelryCousinPrius>? typeFactoryMap =
        _messageFacotoryMap[rawEmployee.messageCate];
    if (typeFactoryMap == null) {
      return null;
    }

    KayeJewelryCousinPrius? factory = typeFactoryMap[rawEmployee.messageType];
    if (factory == null) {
      return null;
    }

    if (rawEmployee.messageObject == null) {
      return null;
    }
    try {
      return rawEmployee.messageObject.unpackInto(factory());
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10036, e, stack);
      return null;
    }
  }

  static Message build(GeneratedMessage msg) {
    KayeBeverly? emp = _employeeFactoryMap[msg.runtimeType];
    if (emp == null) {
      throw Exception("未找到消息类型, runtimeType:${msg.runtimeType}, msg:$msg");
    }

    Message rawEmployee = Message();
    rawEmployee.messageCate = emp.cate;
    rawEmployee.messageType = emp.type;
    rawEmployee.messageObject = Any.pack(msg);
    return rawEmployee;
  }
}
