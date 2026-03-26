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
  static const Message_Type DELETEBUDDYREQ = Message_Type._(
    100,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'DELETEBUDDYREQ',
  );
  static const Message_Type REMARKBUDDYREQ = Message_Type._(
    101,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REMARKBUDDYREQ',
  );
  static const Message_Type BLOCKBUDDYREQ = Message_Type._(
    102,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BLOCKBUDDYREQ',
  );
  static const Message_Type STARBUDDYREQ = Message_Type._(
    103,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STARBUDDYREQ',
  );
  static const Message_Type INVITECONTACTBUDDYREQ = Message_Type._(
    104,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'INVITECONTACTBUDDYREQ',
  );
  static const Message_Type IGNORERECOMMENDBUDDYREQ = Message_Type._(
    105,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'IGNORERECOMMENDBUDDYREQ',
  );
  static const Message_Type BATCHADDRECOMMENDBUDDYREQ = Message_Type._(
    106,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BATCHADDRECOMMENDBUDDYREQ',
  );
  static const Message_Type GETBUDDYINFOREQ = Message_Type._(
    107,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETBUDDYINFOREQ',
  );
  static const Message_Type GETBUDDYINFORSP = Message_Type._(
    108,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETBUDDYINFORSP',
  );
  static const Message_Type REPORTUSERREQ = Message_Type._(
    109,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REPORTUSERREQ',
  );
  static const Message_Type BATCHUNBLOCKBUDDYREQ = Message_Type._(
    110,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BATCHUNBLOCKBUDDYREQ',
  );
  static const Message_Type MAXBUDDYTYPE = Message_Type._(
    199,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MAXBUDDYTYPE',
  );
  static const Message_Type SENDBUDDYREQUESTREQ = Message_Type._(
    200,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SENDBUDDYREQUESTREQ',
  );
  static const Message_Type CONFIRMBUDDYREQUESTREQ = Message_Type._(
    201,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CONFIRMBUDDYREQUESTREQ',
  );
  static const Message_Type DELETEBUDDYREQUESTREQ = Message_Type._(
    202,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'DELETEBUDDYREQUESTREQ',
  );
  static const Message_Type SETALLBUDDYREQUESTREADEDREQ = Message_Type._(
    203,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SETALLBUDDYREQUESTREADEDREQ',
  );
  static const Message_Type MAXBUDDYREQUESTTYPE = Message_Type._(
    299,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MAXBUDDYREQUESTTYPE',
  );
  static const Message_Type CREATECHATBOXREQ = Message_Type._(
    300,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CREATECHATBOXREQ',
  );
  static const Message_Type SETCHATBOXNAMEREQ = Message_Type._(
    301,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SETCHATBOXNAMEREQ',
  );
  static const Message_Type SETCHATBOXCOVERREQ = Message_Type._(
    302,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SETCHATBOXCOVERREQ',
  );
  static const Message_Type ADDCHATBOXMEMBERREQ = Message_Type._(
    303,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ADDCHATBOXMEMBERREQ',
  );
  static const Message_Type REMOVECHATBOXMEMBERREQ = Message_Type._(
    304,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REMOVECHATBOXMEMBERREQ',
  );
  static const Message_Type STARCHABOXREQ = Message_Type._(
    305,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STARCHABOXREQ',
  );
  static const Message_Type MUTECHATBOXREQ = Message_Type._(
    306,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MUTECHATBOXREQ',
  );
  static const Message_Type REMOVECHATBOXREQ = Message_Type._(
    307,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REMOVECHATBOXREQ',
  );
  static const Message_Type EXITCHATBOXREQ = Message_Type._(
    308,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'EXITCHATBOXREQ',
  );
  static const Message_Type REPORTCHATBOXREQ = Message_Type._(
    309,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REPORTCHATBOXREQ',
  );
  static const Message_Type JOINCHATBOXREQ = Message_Type._(
    310,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'JOINCHATBOXREQ',
  );
  static const Message_Type JOINCHATBOXRSP = Message_Type._(
    311,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'JOINCHATBOXRSP',
  );
  static const Message_Type CREATECHATBOXRSP = Message_Type._(
    312,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CREATECHATBOXRSP',
  );
  static const Message_Type UPDATECHATBOXREADEDSTATUSREQ = Message_Type._(
    313,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UPDATECHATBOXREADEDSTATUSREQ',
  );
  static const Message_Type UPDATECHATBOXPUBLICSETTINGREQ = Message_Type._(
    314,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UPDATECHATBOXPUBLICSETTINGREQ',
  );
  static const Message_Type GETCHATBOXINFOREQ = Message_Type._(
    315,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETCHATBOXINFOREQ',
  );
  static const Message_Type GETCHATBOXINFORSP = Message_Type._(
    316,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETCHATBOXINFORSP',
  );
  static const Message_Type UPDATECHATBOXCATEGORYREQ = Message_Type._(
    317,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UPDATECHATBOXCATEGORYREQ',
  );
  static const Message_Type SETCHATBOXDESCREQ = Message_Type._(
    318,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SETCHATBOXDESCREQ',
  );
  static const Message_Type BATCHGETCHATBOXINFOREQ = Message_Type._(
    319,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BATCHGETCHATBOXINFOREQ',
  );
  static const Message_Type BATCHGETCHATBOXINFORSP = Message_Type._(
    320,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BATCHGETCHATBOXINFORSP',
  );
  static const Message_Type MAXCHATBOXTYPE = Message_Type._(
    399,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MAXCHATBOXTYPE',
  );
  static const Message_Type CREATESNAPREQ = Message_Type._(
    400,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CREATESNAPREQ',
  );
  static const Message_Type CREATESNAPRSP = Message_Type._(
    401,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CREATESNAPRSP',
  );
  static const Message_Type STARTRECORDSNAPNOTIFY = Message_Type._(
    402,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STARTRECORDSNAPNOTIFY',
  );
  static const Message_Type STOPRECORDSNAPNOTIFY = Message_Type._(
    403,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STOPRECORDSNAPNOTIFY',
  );
  static const Message_Type STARTPLAYSNAPNOTIFY = Message_Type._(
    404,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STARTPLAYSNAPNOTIFY',
  );
  static const Message_Type STOPPLAYSNAPNOTIFY = Message_Type._(
    405,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STOPPLAYSNAPNOTIFY',
  );
  static const Message_Type DELETESNAPREQ = Message_Type._(
    406,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'DELETESNAPREQ',
  );
  static const Message_Type GETMORESNAPSFROMREQ = Message_Type._(
    407,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETMORESNAPSFROMREQ',
  );
  static const Message_Type GETMORESNAPSFROMRSP = Message_Type._(
    408,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETMORESNAPSFROMRSP',
  );
  static const Message_Type UPDATESNAPREADEDSTATUSREQ = Message_Type._(
    409,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UPDATESNAPREADEDSTATUSREQ',
  );
  static const Message_Type CHECKREDPACKETREQ = Message_Type._(
    410,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHECKREDPACKETREQ',
  );
  static const Message_Type CHECKREDPACKETRSP = Message_Type._(
    411,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHECKREDPACKETRSP',
  );
  static const Message_Type RECEIVEREDPACKETREQ = Message_Type._(
    412,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RECEIVEREDPACKETREQ',
  );
  static const Message_Type RECEIVEREDPACKETRSP = Message_Type._(
    413,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RECEIVEREDPACKETRSP',
  );
  static const Message_Type GETREDPACKETINFOTREQ = Message_Type._(
    414,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETREDPACKETINFOTREQ',
  );
  static const Message_Type GETREDPACKETINFOTRSP = Message_Type._(
    415,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GETREDPACKETINFOTRSP',
  );
  static const Message_Type READSNAPREQ = Message_Type._(
    416,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'READSNAPREQ',
  );
  static const Message_Type MAXSNAPTYPE = Message_Type._(
    499,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MAXSNAPTYPE',
  );
  static const Message_Type SYNC = Message_Type._(
    700,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC',
  );
  static const Message_Type SYNCNOTIFY = Message_Type._(
    701,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SYNCNOTIFY',
  );
  static const Message_Type SYNCKEYCONFIRMNOTIFY = Message_Type._(
    702,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SYNCKEYCONFIRMNOTIFY',
  );
  static const Message_Type SYNCPSH = Message_Type._(
    703,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SYNCPSH',
  );
  static const Message_Type MAXSYNCTYPE = Message_Type._(
    799,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MAXSYNCTYPE',
  );

  static const $core.List<Message_Type> values = <Message_Type>[
    UNKNOWN,
    DELETEBUDDYREQ,
    REMARKBUDDYREQ,
    BLOCKBUDDYREQ,
    STARBUDDYREQ,
    INVITECONTACTBUDDYREQ,
    IGNORERECOMMENDBUDDYREQ,
    BATCHADDRECOMMENDBUDDYREQ,
    GETBUDDYINFOREQ,
    GETBUDDYINFORSP,
    REPORTUSERREQ,
    BATCHUNBLOCKBUDDYREQ,
    MAXBUDDYTYPE,
    SENDBUDDYREQUESTREQ,
    CONFIRMBUDDYREQUESTREQ,
    DELETEBUDDYREQUESTREQ,
    SETALLBUDDYREQUESTREADEDREQ,
    MAXBUDDYREQUESTTYPE,
    CREATECHATBOXREQ,
    SETCHATBOXNAMEREQ,
    SETCHATBOXCOVERREQ,
    ADDCHATBOXMEMBERREQ,
    REMOVECHATBOXMEMBERREQ,
    STARCHABOXREQ,
    MUTECHATBOXREQ,
    REMOVECHATBOXREQ,
    EXITCHATBOXREQ,
    REPORTCHATBOXREQ,
    JOINCHATBOXREQ,
    JOINCHATBOXRSP,
    CREATECHATBOXRSP,
    UPDATECHATBOXREADEDSTATUSREQ,
    UPDATECHATBOXPUBLICSETTINGREQ,
    GETCHATBOXINFOREQ,
    GETCHATBOXINFORSP,
    UPDATECHATBOXCATEGORYREQ,
    SETCHATBOXDESCREQ,
    BATCHGETCHATBOXINFOREQ,
    BATCHGETCHATBOXINFORSP,
    MAXCHATBOXTYPE,
    CREATESNAPREQ,
    CREATESNAPRSP,
    STARTRECORDSNAPNOTIFY,
    STOPRECORDSNAPNOTIFY,
    STARTPLAYSNAPNOTIFY,
    STOPPLAYSNAPNOTIFY,
    DELETESNAPREQ,
    GETMORESNAPSFROMREQ,
    GETMORESNAPSFROMRSP,
    UPDATESNAPREADEDSTATUSREQ,
    CHECKREDPACKETREQ,
    CHECKREDPACKETRSP,
    RECEIVEREDPACKETREQ,
    RECEIVEREDPACKETRSP,
    GETREDPACKETINFOTREQ,
    GETREDPACKETINFOTRSP,
    READSNAPREQ,
    MAXSNAPTYPE,
    SYNC,
    SYNCNOTIFY,
    SYNCKEYCONFIRMNOTIFY,
    SYNCPSH,
    MAXSYNCTYPE,
  ];

  static final $core.Map<$core.int, Message_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Message_Type? valueOf($core.int value) => _byValue[value];

  const Message_Type._($core.int v, $core.String n) : super(v, n);
}
