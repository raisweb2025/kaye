import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Chatbox_Type extends $pb.ProtobufEnum {
  static const Chatbox_Type SINGLE = Chatbox_Type._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'SINGLE',
  );
  static const Chatbox_Type GROUP = Chatbox_Type._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GROUP',
  );
  static const Chatbox_Type HORDE = Chatbox_Type._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HORDE',
  );
  static const Chatbox_Type PARTY = Chatbox_Type._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PARTY',
  );
  static const Chatbox_Type ANONYMOUS = Chatbox_Type._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ANONYMOUS',
  );

  static const $core.List<Chatbox_Type> values = <Chatbox_Type>[
    SINGLE,
    GROUP,
    HORDE,
    PARTY,
    ANONYMOUS,
  ];

  static final $core.Map<$core.int, Chatbox_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Chatbox_Type? valueOf($core.int value) => _byValue[value];

  const Chatbox_Type._($core.int v, $core.String n) : super(v, n);
}

class Chatbox_EventFrequency extends $pb.ProtobufEnum {
  static const Chatbox_EventFrequency NEVER = Chatbox_EventFrequency._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NEVER',
  );
  static const Chatbox_EventFrequency EVERYDAY = Chatbox_EventFrequency._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'EVERYDAY',
  );
  static const Chatbox_EventFrequency EVERYWEEK = Chatbox_EventFrequency._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'EVERYWEEK',
  );
  static const Chatbox_EventFrequency EVERYMONTH = Chatbox_EventFrequency._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'EVERYMONTH',
  );

  static const $core.List<Chatbox_EventFrequency> values =
      <Chatbox_EventFrequency>[NEVER, EVERYDAY, EVERYWEEK, EVERYMONTH];

  static final $core.Map<$core.int, Chatbox_EventFrequency> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Chatbox_EventFrequency? valueOf($core.int value) => _byValue[value];

  const Chatbox_EventFrequency._($core.int v, $core.String n) : super(v, n);
}

class RedPacket_PacketType extends $pb.ProtobufEnum {
  static const RedPacket_PacketType NORMAL = RedPacket_PacketType._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'NORMAL',
  );
  static const RedPacket_PacketType LUCKY = RedPacket_PacketType._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LUCKY',
  );

  static const $core.List<RedPacket_PacketType> values = <RedPacket_PacketType>[
    NORMAL,
    LUCKY,
  ];

  static final $core.Map<$core.int, RedPacket_PacketType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static RedPacket_PacketType? valueOf($core.int value) => _byValue[value];

  const RedPacket_PacketType._($core.int v, $core.String n) : super(v, n);
}

class Snap_SnapType extends $pb.ProtobufEnum {
  static const Snap_SnapType VIDEO_SNAP = Snap_SnapType._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'VIDEO_SNAP',
  );
  static const Snap_SnapType TXT_SNAP = Snap_SnapType._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TXT_SNAP',
  );
  static const Snap_SnapType IMG_SNAP = Snap_SnapType._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'IMG_SNAP',
  );
  static const Snap_SnapType PARTY_SNAP = Snap_SnapType._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PARTY_SNAP',
  );
  static const Snap_SnapType WEAK_SNAP = Snap_SnapType._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'WEAK_SNAP',
  );
  static const Snap_SnapType VOICE_SNAP = Snap_SnapType._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'VOICE_SNAP',
  );
  static const Snap_SnapType JSON_SNAP = Snap_SnapType._(
    6,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'JSON_SNAP',
  );
  static const Snap_SnapType RED_PACKET_SNAP = Snap_SnapType._(
    7,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'RED_PACKET_SNAP',
  );
  static const Snap_SnapType STICKER_SNAP = Snap_SnapType._(
    9,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STICKER_SNAP',
  );
  static const Snap_SnapType LOCATION_SNAP = Snap_SnapType._(
    10,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'LOCATION_SNAP',
  );

  static const $core.List<Snap_SnapType> values = <Snap_SnapType>[
    VIDEO_SNAP,
    TXT_SNAP,
    IMG_SNAP,
    PARTY_SNAP,
    WEAK_SNAP,
    VOICE_SNAP,
    JSON_SNAP,
    RED_PACKET_SNAP,
    STICKER_SNAP,
    LOCATION_SNAP,
  ];

  static final $core.Map<$core.int, Snap_SnapType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Snap_SnapType? valueOf($core.int value) => _byValue[value];

  const Snap_SnapType._($core.int v, $core.String n) : super(v, n);
}
