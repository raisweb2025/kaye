import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Message_Category extends $pb.ProtobufEnum {
  static const Message_Category BASE = Message_Category._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BASE',
  );
  static const Message_Category IM = Message_Category._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IM',
  );
  static const Message_Category FUN = Message_Category._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FUN',
  );
  static const Message_Category kaye_lead = Message_Category._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'kaye_lead',
  );
  static const Message_Category LIVE = Message_Category._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIVE',
  );
  static const Message_Category MAXCATE = Message_Category._(
    99,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MAXCATE',
  );

  static const $core.List<Message_Category> values = <Message_Category>[
    BASE,
    IM,
    FUN,
    kaye_lead,
    LIVE,
    MAXCATE,
  ];

  static final $core.Map<$core.int, Message_Category> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Message_Category? valueOf($core.int value) => _byValue[value];

  const Message_Category._($core.int v, $core.String n) : super(v, n);
}

class Message_Type extends $pb.ProtobufEnum {
  static const Message_Type HEARTBEAT = Message_Type._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'HEARTBEAT',
  );
  static const Message_Type COMMONRSP = Message_Type._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'COMMONRSP',
  );
  static const Message_Type COMMONACK = Message_Type._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'COMMONACK',
  );
  static const Message_Type COMMONSERVICEERR = Message_Type._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'COMMONSERVICEERR',
  );
  static const Message_Type AUTHREQ = Message_Type._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'AUTHREQ',
  );
  static const Message_Type GUIDEAUTHREQ = Message_Type._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'GUIDEAUTHREQ',
  );
  static const Message_Type AUTHRSP = Message_Type._(
    6,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'AUTHRSP',
  );
  static const Message_Type USEROFFLINEPSH = Message_Type._(
    7,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'USEROFFLINEPSH',
  );
  static const Message_Type USERONLINEPSH = Message_Type._(
    8,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'USERONLINEPSH',
  );
  static const Message_Type SESSIONINVALIDNOTIFY = Message_Type._(
    9,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SESSIONINVALIDNOTIFY',
  );
  static const Message_Type ADVERTISEMENTNOTIFY = Message_Type._(
    10,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ADVERTISEMENTNOTIFY',
  );
  static const Message_Type COMMONTOASTNOTIFY = Message_Type._(
    11,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'COMMONTOASTNOTIFY',
  );
  static const Message_Type APPTRACK = Message_Type._(
    12,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'APPTRACK',
  );
  static const Message_Type USERRUNTIMEPSH = Message_Type._(
    13,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'USERRUNTIMEPSH',
  );
  static const Message_Type USERSTATUSPSH = Message_Type._(
    14,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'USERSTATUSPSH',
  );
  static const Message_Type POPUPNOTIFY = Message_Type._(
    15,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'POPUPNOTIFY',
  );
  static const Message_Type MAXBASETYPE = Message_Type._(
    99,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MAXBASETYPE',
  );

  static const $core.List<Message_Type> values = <Message_Type>[
    HEARTBEAT,
    COMMONRSP,
    COMMONACK,
    COMMONSERVICEERR,
    AUTHREQ,
    GUIDEAUTHREQ,
    AUTHRSP,
    USEROFFLINEPSH,
    USERONLINEPSH,
    SESSIONINVALIDNOTIFY,
    ADVERTISEMENTNOTIFY,
    COMMONTOASTNOTIFY,
    APPTRACK,
    USERRUNTIMEPSH,
    USERSTATUSPSH,
    POPUPNOTIFY,
    MAXBASETYPE,
  ];

  static final $core.Map<$core.int, Message_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Message_Type? valueOf($core.int value) => _byValue[value];

  const Message_Type._($core.int v, $core.String n) : super(v, n);
}
