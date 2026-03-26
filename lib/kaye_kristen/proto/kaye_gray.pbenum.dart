import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class ChatCall_Status extends $pb.ProtobufEnum {
  static const ChatCall_Status TRYING = ChatCall_Status._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TRYING',
  );
  static const ChatCall_Status RINGING = ChatCall_Status._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RINGING',
  );
  static const ChatCall_Status PICK_UP = ChatCall_Status._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PICK_UP',
  );
  static const ChatCall_Status CONFIRMED = ChatCall_Status._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CONFIRMED',
  );
  static const ChatCall_Status REQUEST_TIMEOUT = ChatCall_Status._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REQUEST_TIMEOUT',
  );
  static const ChatCall_Status BUSY_HERE = ChatCall_Status._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BUSY_HERE',
  );
  static const ChatCall_Status REJECTED = ChatCall_Status._(
    6,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'REJECTED',
  );
  static const ChatCall_Status CANCELED = ChatCall_Status._(
    7,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CANCELED',
  );
  static const ChatCall_Status UNREACHABLE = ChatCall_Status._(
    8,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UNREACHABLE',
  );
  static const ChatCall_Status BYE = ChatCall_Status._(
    9,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BYE',
  );

  static const $core.List<ChatCall_Status> values = <ChatCall_Status>[
    TRYING,
    RINGING,
    PICK_UP,
    CONFIRMED,
    REQUEST_TIMEOUT,
    BUSY_HERE,
    REJECTED,
    CANCELED,
    UNREACHABLE,
    BYE,
  ];

  static final $core.Map<$core.int, ChatCall_Status> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ChatCall_Status? valueOf($core.int value) => _byValue[value];

  const ChatCall_Status._($core.int v, $core.String n) : super(v, n);
}
