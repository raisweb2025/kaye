import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Message_Type extends $pb.ProtobufEnum {
  static const Message_Type UNKNOWN = Message_Type._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UNKNOWN',
  );
  static const Message_Type CREATEROOMREQ = Message_Type._(
    2000,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CREATEROOMREQ',
  );
  static const Message_Type CREATEROOMRSP = Message_Type._(
    2001,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CREATEROOMRSP',
  );
  static const Message_Type JOINROOMREQ = Message_Type._(
    2002,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'JOINROOMREQ',
  );
  static const Message_Type JOINROOMRSP = Message_Type._(
    2003,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'JOINROOMRSP',
  );
  static const Message_Type SENDROOMMESSAGEREQ = Message_Type._(
    2004,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SENDROOMMESSAGEREQ',
  );
  static const Message_Type SENDROOMMGIFTREQ = Message_Type._(
    2005,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SENDROOMMGIFTREQ',
  );
  static const Message_Type APPLYCHATREQ = Message_Type._(
    2006,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'APPLYCHATREQ',
  );
  static const Message_Type INVITECHATREQ = Message_Type._(
    2007,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'INVITECHATREQ',
  );
  static const Message_Type CONFIRMCHATINVITEREQ = Message_Type._(
    2008,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CONFIRMCHATINVITEREQ',
  );
  static const Message_Type REJECTCHATAPPLYREQ = Message_Type._(
    2009,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REJECTCHATAPPLYREQ',
  );
  static const Message_Type QUITCHATREQ = Message_Type._(
    2010,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'QUITCHATREQ',
  );
  static const Message_Type ROOMPAYLOADNOTIFY = Message_Type._(
    2011,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ROOMPAYLOADNOTIFY',
  );
  static const Message_Type UPDATECAMMICSTATUSREQ = Message_Type._(
    2012,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UPDATECAMMICSTATUSREQ',
  );
  static const Message_Type RESUMEROOMREQ = Message_Type._(
    2013,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RESUMEROOMREQ',
  );
  static const Message_Type ENDROOMREQ = Message_Type._(
    2014,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ENDROOMREQ',
  );
  static const Message_Type ENDROOMRSP = Message_Type._(
    2015,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ENDROOMRSP',
  );
  static const Message_Type KICKMEMBERREQ = Message_Type._(
    2016,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'KICKMEMBERREQ',
  );
  static const Message_Type GETROOMMEMBERSREQ = Message_Type._(
    2017,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETROOMMEMBERSREQ',
  );
  static const Message_Type GETROOMMEMBERSRSP = Message_Type._(
    2018,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETROOMMEMBERSRSP',
  );
  static const Message_Type GETROOMINFOREQ = Message_Type._(
    2019,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETROOMINFOREQ',
  );
  static const Message_Type GETROOMINFORSP = Message_Type._(
    2020,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETROOMINFORSP',
  );
  static const Message_Type GETUSERONLINETIMEREQ = Message_Type._(
    2021,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETUSERONLINETIMEREQ',
  );
  static const Message_Type GETUSERONLINETIMERSP = Message_Type._(
    2022,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETUSERONLINETIMERSP',
  );
  static const Message_Type QUITROOMREQ = Message_Type._(
    2023,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'QUITROOMREQ',
  );
  static const Message_Type KICKCHATMEMBERREQ = Message_Type._(
    2024,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'KICKCHATMEMBERREQ',
  );
  static const Message_Type CANCELCHATINVITEREQ = Message_Type._(
    2025,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CANCELCHATINVITEREQ',
  );
  static const Message_Type ORDERSTATUSNOTIFY = Message_Type._(
    2026,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ORDERSTATUSNOTIFY',
  );
  static const Message_Type SYSNOTIFICATIONNOTIFY = Message_Type._(
    2027,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SYSNOTIFICATIONNOTIFY',
  );
  static const Message_Type ACTIVITYNOTIFY = Message_Type._(
    2028,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ACTIVITYNOTIFY',
  );
  static const Message_Type FEEDFOLLOWNOTIFY = Message_Type._(
    2029,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'FEEDFOLLOWNOTIFY',
  );
  static const Message_Type MODIFYROOMREQ = Message_Type._(
    2030,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MODIFYROOMREQ',
  );
  static const Message_Type MODIFYROOMRSP = Message_Type._(
    2031,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MODIFYROOMRSP',
  );
  static const Message_Type ORDERREFUNDSTATUSNOTIFY = Message_Type._(
    2032,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ORDERREFUNDSTATUSNOTIFY',
  );
  static const Message_Type MARKUSERSTARREQ = Message_Type._(
    2033,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MARKUSERSTARREQ',
  );
  static const Message_Type CANCELCHATAPPLYREQ = Message_Type._(
    2034,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CANCELCHATAPPLYREQ',
  );
  static const Message_Type REJECTCHATINVITEREQ = Message_Type._(
    2035,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REJECTCHATINVITEREQ',
  );
  static const Message_Type CHATCALLREQ = Message_Type._(
    2036,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATCALLREQ',
  );
  static const Message_Type CHATCALLRSP = Message_Type._(
    2037,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATCALLRSP',
  );
  static const Message_Type CHATCALLPSH = Message_Type._(
    2038,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATCALLPSH',
  );
  static const Message_Type USERSKILLAUDITSTATUSCHANGE = Message_Type._(
    2039,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'USERSKILLAUDITSTATUSCHANGE',
  );
  static const Message_Type GODSTATUSCHANGE = Message_Type._(
    2040,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GODSTATUSCHANGE',
  );
  static const Message_Type AVATARAUDITSTATUSCHANGE = Message_Type._(
    2041,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'AVATARAUDITSTATUSCHANGE',
  );
  static const Message_Type CUSTOMERSERVICEREQ = Message_Type._(
    2042,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CUSTOMERSERVICEREQ',
  );
  static const Message_Type CUSTOMERSERVICERSP = Message_Type._(
    2043,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CUSTOMERSERVICERSP',
  );
  static const Message_Type RESTOREROOMPSH = Message_Type._(
    2044,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RESTOREROOMPSH',
  );
  static const Message_Type ASSIGNROOMMANAGERREQ = Message_Type._(
    2045,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ASSIGNROOMMANAGERREQ',
  );
  static const Message_Type CANCELROOMMANAGERREQ = Message_Type._(
    2046,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CANCELROOMMANAGERREQ',
  );
  static const Message_Type UNBLOCKROOMMEMBERREQ = Message_Type._(
    2047,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UNBLOCKROOMMEMBERREQ',
  );
  static const Message_Type PUBLISHROOMANNOUNCEMENTREQ = Message_Type._(
    2048,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PUBLISHROOMANNOUNCEMENTREQ',
  );
  static const Message_Type DELETEROOMANNOUNCEMENTREQ = Message_Type._(
    2049,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'DELETEROOMANNOUNCEMENTREQ',
  );
  static const Message_Type RECRUITROOMMEMBERREQ = Message_Type._(
    2050,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RECRUITROOMMEMBERREQ',
  );
  static const Message_Type RECRUITROOMMEMBERPSH = Message_Type._(
    2051,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RECRUITROOMMEMBERPSH',
  );
  static const Message_Type LOCKROOMMICSREQ = Message_Type._(
    2052,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LOCKROOMMICSREQ',
  );
  static const Message_Type BANROOMMEMBERMICREQ = Message_Type._(
    2053,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BANROOMMEMBERMICREQ',
  );
  static const Message_Type GETROOMMEMBERINFOREQ = Message_Type._(
    2054,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETROOMMEMBERINFOREQ',
  );
  static const Message_Type GETROOMMEMBERINFORSP = Message_Type._(
    2055,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETROOMMEMBERINFORSP',
  );
  static const Message_Type SENDCHATCALLGIFTREQ = Message_Type._(
    2056,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SENDCHATCALLGIFTREQ',
  );
  static const Message_Type CHATCALLGIFTPSH = Message_Type._(
    2057,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATCALLGIFTPSH',
  );
  static const Message_Type RATECHATCALLREQ = Message_Type._(
    2058,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RATECHATCALLREQ',
  );
  static const Message_Type CHECKCALLREQ = Message_Type._(
    2059,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHECKCALLREQ',
  );
  static const Message_Type CHECKCALLRSP = Message_Type._(
    2060,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHECKCALLRSP',
  );
  static const Message_Type CHATCALLMATCHREQ = Message_Type._(
    2061,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATCALLMATCHREQ',
  );
  static const Message_Type CHATCALLMATCHRSP = Message_Type._(
    2062,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATCALLMATCHRSP',
  );
  static const Message_Type CHATCALLMATCHPSH = Message_Type._(
    2063,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATCALLMATCHPSH',
  );
  static const Message_Type CANCELCHATCALLMATCHREQ = Message_Type._(
    2064,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CANCELCHATCALLMATCHREQ',
  );
  static const Message_Type TIPNOTIFY = Message_Type._(
    2065,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TIPNOTIFY',
  );
  static const Message_Type BALANCEINSUFFICIENTNOTIFY = Message_Type._(
    2066,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BALANCEINSUFFICIENTNOTIFY',
  );
  static const Message_Type CUSTOMERONLINENOTIY = Message_Type._(
    2067,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CUSTOMERONLINENOTIY',
  );
  static const Message_Type PICVIDEOSAUDITSTATUSCHANGENOTIFY = Message_Type._(
    2068,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PICVIDEOSAUDITSTATUSCHANGENOTIFY',
  );
  static const Message_Type RECOVERSTATEREQ = Message_Type._(
    2069,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RECOVERSTATEREQ',
  );
  static const Message_Type VIEWAICVIDEOREQ = Message_Type._(
    2070,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'VIEWAICVIDEOREQ',
  );
  static const Message_Type AICALLREQ = Message_Type._(
    2071,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'AICALLREQ',
  );
  static const Message_Type RATEAPPNOTIFY = Message_Type._(
    2072,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RATEAPPNOTIFY',
  );
  static const Message_Type BEGGIFTREQ = Message_Type._(
    2073,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BEGGIFTREQ',
  );
  static const Message_Type BEGGIFTPSH = Message_Type._(
    2074,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BEGGIFTPSH',
  );
  static const Message_Type CONFIRMCHATCALLMATCHREQ = Message_Type._(
    2075,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CONFIRMCHATCALLMATCHREQ',
  );
  static const Message_Type TEMPAWAYNOTIFY = Message_Type._(
    2076,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TEMPAWAYNOTIFY',
  );
  static const Message_Type ALERTNOTIFY = Message_Type._(
    2077,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ALERTNOTIFY',
  );
  static const Message_Type GETONLINEANCHORSREQ = Message_Type._(
    2078,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETONLINEANCHORSREQ',
  );
  static const Message_Type GETONLINEANCHORSRSP = Message_Type._(
    2079,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETONLINEANCHORSRSP',
  );
  static const Message_Type ANCHORMATCHINVITE = Message_Type._(
    2080,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ANCHORMATCHINVITE',
  );

  static const $core.List<Message_Type> values = <Message_Type>[
    UNKNOWN,
    CREATEROOMREQ,
    CREATEROOMRSP,
    JOINROOMREQ,
    JOINROOMRSP,
    SENDROOMMESSAGEREQ,
    SENDROOMMGIFTREQ,
    APPLYCHATREQ,
    INVITECHATREQ,
    CONFIRMCHATINVITEREQ,
    REJECTCHATAPPLYREQ,
    QUITCHATREQ,
    ROOMPAYLOADNOTIFY,
    UPDATECAMMICSTATUSREQ,
    RESUMEROOMREQ,
    ENDROOMREQ,
    ENDROOMRSP,
    KICKMEMBERREQ,
    GETROOMMEMBERSREQ,
    GETROOMMEMBERSRSP,
    GETROOMINFOREQ,
    GETROOMINFORSP,
    GETUSERONLINETIMEREQ,
    GETUSERONLINETIMERSP,
    QUITROOMREQ,
    KICKCHATMEMBERREQ,
    CANCELCHATINVITEREQ,
    ORDERSTATUSNOTIFY,
    SYSNOTIFICATIONNOTIFY,
    ACTIVITYNOTIFY,
    FEEDFOLLOWNOTIFY,
    MODIFYROOMREQ,
    MODIFYROOMRSP,
    ORDERREFUNDSTATUSNOTIFY,
    MARKUSERSTARREQ,
    CANCELCHATAPPLYREQ,
    REJECTCHATINVITEREQ,
    CHATCALLREQ,
    CHATCALLRSP,
    CHATCALLPSH,
    USERSKILLAUDITSTATUSCHANGE,
    GODSTATUSCHANGE,
    AVATARAUDITSTATUSCHANGE,
    CUSTOMERSERVICEREQ,
    CUSTOMERSERVICERSP,
    RESTOREROOMPSH,
    ASSIGNROOMMANAGERREQ,
    CANCELROOMMANAGERREQ,
    UNBLOCKROOMMEMBERREQ,
    PUBLISHROOMANNOUNCEMENTREQ,
    DELETEROOMANNOUNCEMENTREQ,
    RECRUITROOMMEMBERREQ,
    RECRUITROOMMEMBERPSH,
    LOCKROOMMICSREQ,
    BANROOMMEMBERMICREQ,
    GETROOMMEMBERINFOREQ,
    GETROOMMEMBERINFORSP,
    SENDCHATCALLGIFTREQ,
    CHATCALLGIFTPSH,
    RATECHATCALLREQ,
    CHECKCALLREQ,
    CHECKCALLRSP,
    CHATCALLMATCHREQ,
    CHATCALLMATCHRSP,
    CHATCALLMATCHPSH,
    CANCELCHATCALLMATCHREQ,
    TIPNOTIFY,
    BALANCEINSUFFICIENTNOTIFY,
    CUSTOMERONLINENOTIY,
    PICVIDEOSAUDITSTATUSCHANGENOTIFY,
    RECOVERSTATEREQ,
    VIEWAICVIDEOREQ,
    AICALLREQ,
    RATEAPPNOTIFY,
    BEGGIFTREQ,
    BEGGIFTPSH,
    CONFIRMCHATCALLMATCHREQ,
    TEMPAWAYNOTIFY,
    ALERTNOTIFY,
    GETONLINEANCHORSREQ,
    GETONLINEANCHORSRSP,
    ANCHORMATCHINVITE,
  ];

  static final $core.Map<$core.int, Message_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Message_Type? valueOf($core.int value) => _byValue[value];

  const Message_Type._($core.int v, $core.String n) : super(v, n);
}
