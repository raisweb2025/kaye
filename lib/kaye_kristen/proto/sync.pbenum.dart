import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class SyncType extends $pb.ProtobufEnum {
  static const SyncType BUDDY = SyncType._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUDDY',
  );
  static const SyncType CHATBOX = SyncType._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CHATBOX',
  );
  static const SyncType SNAP = SyncType._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SNAP',
  );
  static const SyncType BUDDY_REQUEST = SyncType._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'BUDDY_REQUEST',
  );

  static const $core.List<SyncType> values = <SyncType>[
    BUDDY,
    CHATBOX,
    SNAP,
    BUDDY_REQUEST,
  ];

  static final $core.Map<$core.int, SyncType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static SyncType? valueOf($core.int value) => _byValue[value];

  const SyncType._($core.int v, $core.String n) : super(v, n);
}

class Sync_AfterSyncToDo extends $pb.ProtobufEnum {
  static const Sync_AfterSyncToDo TODO_NOTHING = Sync_AfterSyncToDo._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TODO_NOTHING',
  );
  static const Sync_AfterSyncToDo TODO_UPDATE_PARTYLIST = Sync_AfterSyncToDo._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TODO_UPDATE_PARTYLIST',
  );

  static const $core.List<Sync_AfterSyncToDo> values = <Sync_AfterSyncToDo>[
    TODO_NOTHING,
    TODO_UPDATE_PARTYLIST,
  ];

  static final $core.Map<$core.int, Sync_AfterSyncToDo> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static Sync_AfterSyncToDo? valueOf($core.int value) => _byValue[value];

  const Sync_AfterSyncToDo._($core.int v, $core.String n) : super(v, n);
}
