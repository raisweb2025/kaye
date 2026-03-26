import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class CommonToastNotify_ActionType extends $pb.ProtobufEnum {
  static const CommonToastNotify_ActionType ACTION_NONE =
      CommonToastNotify_ActionType._(
        0,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'ACTION_NONE',
      );
  static const CommonToastNotify_ActionType ACTION_POKEBUDDY =
      CommonToastNotify_ActionType._(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'ACTION_POKEBUDDY',
      );
  static const CommonToastNotify_ActionType ACTION_ADDBUDDY =
      CommonToastNotify_ActionType._(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'ACTION_ADDBUDDY',
      );
  static const CommonToastNotify_ActionType ACTION_INVITETOPARTY =
      CommonToastNotify_ActionType._(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'ACTION_INVITETOPARTY',
      );

  static const $core.List<CommonToastNotify_ActionType> values =
      <CommonToastNotify_ActionType>[
        ACTION_NONE,
        ACTION_POKEBUDDY,
        ACTION_ADDBUDDY,
        ACTION_INVITETOPARTY,
      ];

  static final $core.Map<$core.int, CommonToastNotify_ActionType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static CommonToastNotify_ActionType? valueOf($core.int value) =>
      _byValue[value];

  const CommonToastNotify_ActionType._($core.int v, $core.String n)
    : super(v, n);
}

class PopupNotify_PopupNotifyType extends $pb.ProtobufEnum {
  static const PopupNotify_PopupNotifyType COMMON_POPUP =
      PopupNotify_PopupNotifyType._(
        0,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'COMMON_POPUP',
      );
  static const PopupNotify_PopupNotifyType COMMON_SNACKBAR =
      PopupNotify_PopupNotifyType._(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'COMMON_SNACKBAR',
      );
  static const PopupNotify_PopupNotifyType COIN_REWARD =
      PopupNotify_PopupNotifyType._(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'COIN_REWARD',
      );

  static const $core.List<PopupNotify_PopupNotifyType> values =
      <PopupNotify_PopupNotifyType>[COMMON_POPUP, COMMON_SNACKBAR, COIN_REWARD];

  static final $core.Map<$core.int, PopupNotify_PopupNotifyType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static PopupNotify_PopupNotifyType? valueOf($core.int value) =>
      _byValue[value];

  const PopupNotify_PopupNotifyType._($core.int v, $core.String n)
    : super(v, n);
}
