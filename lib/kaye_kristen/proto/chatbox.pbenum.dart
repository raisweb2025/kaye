import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class CreateChatboxReq_SourceType extends $pb.ProtobufEnum {
  static const CreateChatboxReq_SourceType FROM_UNKNOWN =
      CreateChatboxReq_SourceType._(
        0,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_UNKNOWN',
      );
  static const CreateChatboxReq_SourceType FROM_PARTY =
      CreateChatboxReq_SourceType._(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_PARTY',
      );
  static const CreateChatboxReq_SourceType FROM_CHATBOX =
      CreateChatboxReq_SourceType._(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_CHATBOX',
      );
  static const CreateChatboxReq_SourceType FROM_SEARCH =
      CreateChatboxReq_SourceType._(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_SEARCH',
      );
  static const CreateChatboxReq_SourceType FROM_QRCODE =
      CreateChatboxReq_SourceType._(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_QRCODE',
      );
  static const CreateChatboxReq_SourceType FROM_SHARE =
      CreateChatboxReq_SourceType._(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_SHARE',
      );
  static const CreateChatboxReq_SourceType FROM_CLUB =
      CreateChatboxReq_SourceType._(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_CLUB',
      );
  static const CreateChatboxReq_SourceType FROM_RECOMMEND =
      CreateChatboxReq_SourceType._(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_RECOMMEND',
      );
  static const CreateChatboxReq_SourceType FROM_BUDDY =
      CreateChatboxReq_SourceType._(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'FROM_BUDDY',
      );

  static const $core.List<CreateChatboxReq_SourceType> values =
      <CreateChatboxReq_SourceType>[
        FROM_UNKNOWN,
        FROM_PARTY,
        FROM_CHATBOX,
        FROM_SEARCH,
        FROM_QRCODE,
        FROM_SHARE,
        FROM_CLUB,
        FROM_RECOMMEND,
        FROM_BUDDY,
      ];

  static final $core.Map<$core.int, CreateChatboxReq_SourceType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static CreateChatboxReq_SourceType? valueOf($core.int value) =>
      _byValue[value];

  const CreateChatboxReq_SourceType._($core.int v, $core.String n)
    : super(v, n);
}

class ReportChatboxReq_Type extends $pb.ProtobufEnum {
  static const ReportChatboxReq_Type AD = ReportChatboxReq_Type._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AD',
  );
  static const ReportChatboxReq_Type CHEAT = ReportChatboxReq_Type._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHEAT',
  );
  static const ReportChatboxReq_Type PORN = ReportChatboxReq_Type._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PORN',
  );
  static const ReportChatboxReq_Type ILLEGAL = ReportChatboxReq_Type._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ILLEGAL',
  );
  static const ReportChatboxReq_Type OTHER = ReportChatboxReq_Type._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OTHER',
  );

  static const $core.List<ReportChatboxReq_Type> values =
      <ReportChatboxReq_Type>[AD, CHEAT, PORN, ILLEGAL, OTHER];

  static final $core.Map<$core.int, ReportChatboxReq_Type> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ReportChatboxReq_Type? valueOf($core.int value) => _byValue[value];

  const ReportChatboxReq_Type._($core.int v, $core.String n) : super(v, n);
}
