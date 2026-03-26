import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class ChatCallReq_Opt extends $pb.ProtobufEnum {
  static const ChatCallReq_Opt INVITE = ChatCallReq_Opt._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'INVITE',
  );
  static const ChatCallReq_Opt RING = ChatCallReq_Opt._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RING',
  );
  static const ChatCallReq_Opt BUSY = ChatCallReq_Opt._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUSY',
  );
  static const ChatCallReq_Opt PICK_UP = ChatCallReq_Opt._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PICK_UP',
  );
  static const ChatCallReq_Opt CONFIRMED = ChatCallReq_Opt._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CONFIRMED',
  );
  static const ChatCallReq_Opt CANCEL = ChatCallReq_Opt._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CANCEL',
  );
  static const ChatCallReq_Opt UPDATE = ChatCallReq_Opt._(
    6,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UPDATE',
  );
  static const ChatCallReq_Opt REJECT = ChatCallReq_Opt._(
    7,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REJECT',
  );
  static const ChatCallReq_Opt BYE = ChatCallReq_Opt._(
    8,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BYE',
  );
  static const ChatCallReq_Opt SYNC = ChatCallReq_Opt._(
    9,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SYNC',
  );
  static const ChatCallReq_Opt OPTIONS = ChatCallReq_Opt._(
    10,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPTIONS',
  );
  static const ChatCallReq_Opt RESPOND = ChatCallReq_Opt._(
    11,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RESPOND',
  );

  static const $core.List<ChatCallReq_Opt> values = <ChatCallReq_Opt>[
    INVITE,
    RING,
    BUSY,
    PICK_UP,
    CONFIRMED,
    CANCEL,
    UPDATE,
    REJECT,
    BYE,
    SYNC,
    OPTIONS,
    RESPOND,
  ];

  static final $core.Map<$core.int, ChatCallReq_Opt> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ChatCallReq_Opt? valueOf($core.int value) => _byValue[value];

  const ChatCallReq_Opt._($core.int v, $core.String n) : super(v, n);
}

class ChatCallReq_Quality extends $pb.ProtobufEnum {
  static const ChatCallReq_Quality UNKNOWN = ChatCallReq_Quality._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UNKNOWN',
  );
  static const ChatCallReq_Quality EXCELLENT = ChatCallReq_Quality._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'EXCELLENT',
  );
  static const ChatCallReq_Quality GOOD = ChatCallReq_Quality._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GOOD',
  );
  static const ChatCallReq_Quality POOR = ChatCallReq_Quality._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'POOR',
  );
  static const ChatCallReq_Quality BAD = ChatCallReq_Quality._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BAD',
  );
  static const ChatCallReq_Quality VBAD = ChatCallReq_Quality._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VBAD',
  );
  static const ChatCallReq_Quality DOWN = ChatCallReq_Quality._(
    6,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOWN',
  );
  static const ChatCallReq_Quality DETECTING = ChatCallReq_Quality._(
    8,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'DETECTING',
  );

  static const $core.List<ChatCallReq_Quality> values = <ChatCallReq_Quality>[
    UNKNOWN,
    EXCELLENT,
    GOOD,
    POOR,
    BAD,
    VBAD,
    DOWN,
    DETECTING,
  ];

  static final $core.Map<$core.int, ChatCallReq_Quality> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ChatCallReq_Quality? valueOf($core.int value) => _byValue[value];

  const ChatCallReq_Quality._($core.int v, $core.String n) : super(v, n);
}
