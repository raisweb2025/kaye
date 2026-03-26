import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class SendBuddyRequestReq_SourceType extends $pb.ProtobufEnum {
  static const SendBuddyRequestReq_SourceType FROM_UNKNOWN =
      SendBuddyRequestReq_SourceType._(
        0,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_UNKNOWN',
      );
  static const SendBuddyRequestReq_SourceType FROM_PARTY =
      SendBuddyRequestReq_SourceType._(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_PARTY',
      );
  static const SendBuddyRequestReq_SourceType FROM_CHATBOX =
      SendBuddyRequestReq_SourceType._(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_CHATBOX',
      );
  static const SendBuddyRequestReq_SourceType FROM_SEARCH =
      SendBuddyRequestReq_SourceType._(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_SEARCH',
      );
  static const SendBuddyRequestReq_SourceType FROM_QRCODE =
      SendBuddyRequestReq_SourceType._(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_QRCODE',
      );
  static const SendBuddyRequestReq_SourceType FROM_SHARE =
      SendBuddyRequestReq_SourceType._(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_SHARE',
      );
  static const SendBuddyRequestReq_SourceType FROM_RECOMMEND =
      SendBuddyRequestReq_SourceType._(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_RECOMMEND',
      );
  static const SendBuddyRequestReq_SourceType FROM_CONTACT =
      SendBuddyRequestReq_SourceType._(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_CONTACT',
      );
  static const SendBuddyRequestReq_SourceType FROM_POPUP_RECOMMEND =
      SendBuddyRequestReq_SourceType._(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_POPUP_RECOMMEND',
      );

  static const $core.List<SendBuddyRequestReq_SourceType> values =
      <SendBuddyRequestReq_SourceType>[
        FROM_UNKNOWN,
        FROM_PARTY,
        FROM_CHATBOX,
        FROM_SEARCH,
        FROM_QRCODE,
        FROM_SHARE,
        FROM_RECOMMEND,
        FROM_CONTACT,
        FROM_POPUP_RECOMMEND,
      ];

  static final $core.Map<$core.int, SendBuddyRequestReq_SourceType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static SendBuddyRequestReq_SourceType? valueOf($core.int value) =>
      _byValue[value];

  const SendBuddyRequestReq_SourceType._($core.int v, $core.String n)
    : super(v, n);
}
