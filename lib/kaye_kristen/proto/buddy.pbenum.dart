import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class ReportUserReq_ReportType extends $pb.ProtobufEnum {
  static const ReportUserReq_ReportType AD = ReportUserReq_ReportType._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AD',
  );
  static const ReportUserReq_ReportType CHEAT = ReportUserReq_ReportType._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHEAT',
  );
  static const ReportUserReq_ReportType PORN = ReportUserReq_ReportType._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PORN',
  );
  static const ReportUserReq_ReportType ILLEGAL = ReportUserReq_ReportType._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ILLEGAL',
  );
  static const ReportUserReq_ReportType OTHER = ReportUserReq_ReportType._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OTHER',
  );

  static const $core.List<ReportUserReq_ReportType> values =
      <ReportUserReq_ReportType>[AD, CHEAT, PORN, ILLEGAL, OTHER];

  static final $core.Map<$core.int, ReportUserReq_ReportType> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static ReportUserReq_ReportType? valueOf($core.int value) => _byValue[value];

  const ReportUserReq_ReportType._($core.int v, $core.String n) : super(v, n);
}
