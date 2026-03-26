import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'buddy_request.pbenum.dart';

export 'buddy_request.pbenum.dart';

class SendBuddyRequestReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SendBuddyRequestReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'buddyId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastBuddyKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<SendBuddyRequestReq_SourceType>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sourceType',
          $pb.PbFieldType.OE,
          defaultOrMaker: SendBuddyRequestReq_SourceType.FROM_UNKNOWN,
          valueOf: SendBuddyRequestReq_SourceType.valueOf,
          enumValues: SendBuddyRequestReq_SourceType.values,
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'fromChatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'recommendType',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..hasRequiredFields = false;

  SendBuddyRequestReq._() : super();

  factory SendBuddyRequestReq({
    $fixnum.Int64? buddyId,
    $fixnum.Int64? lastBuddyKey,
    $fixnum.Int64? lastChatboxKey,
    SendBuddyRequestReq_SourceType? sourceType,
    $fixnum.Int64? fromChatboxId,
    $core.int? recommendType,
    $core.String? msg,
  }) {
    final _result = create();
    if (buddyId != null) {
      _result.buddyId = buddyId;
    }
    if (lastBuddyKey != null) {
      _result.lastBuddyKey = lastBuddyKey;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    if (sourceType != null) {
      _result.sourceType = sourceType;
    }
    if (fromChatboxId != null) {
      _result.fromChatboxId = fromChatboxId;
    }
    if (recommendType != null) {
      _result.recommendType = recommendType;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }

  factory SendBuddyRequestReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SendBuddyRequestReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SendBuddyRequestReq clone() => SendBuddyRequestReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SendBuddyRequestReq copyWith(void Function(SendBuddyRequestReq) updates) =>
      super.copyWith((message) => updates(message as SendBuddyRequestReq))
          as SendBuddyRequestReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendBuddyRequestReq create() => SendBuddyRequestReq._();

  SendBuddyRequestReq createEmptyInstance() => create();

  static $pb.PbList<SendBuddyRequestReq> createRepeated() =>
      $pb.PbList<SendBuddyRequestReq>();

  @$core.pragma('dart2js:noInline')
  static SendBuddyRequestReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendBuddyRequestReq>(create);
  static SendBuddyRequestReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get buddyId => $_getI64(0);

  @$pb.TagNumber(1)
  set buddyId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBuddyId() => $_has(0);

  @$pb.TagNumber(1)
  void clearBuddyId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastBuddyKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastBuddyKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastBuddyKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastBuddyKey() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastChatboxKey => $_getI64(2);

  @$pb.TagNumber(3)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLastChatboxKey() => $_has(2);

  @$pb.TagNumber(3)
  void clearLastChatboxKey() => clearField(3);

  @$pb.TagNumber(4)
  SendBuddyRequestReq_SourceType get sourceType => $_getN(3);

  @$pb.TagNumber(4)
  set sourceType(SendBuddyRequestReq_SourceType v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSourceType() => $_has(3);

  @$pb.TagNumber(4)
  void clearSourceType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get fromChatboxId => $_getI64(4);

  @$pb.TagNumber(5)
  set fromChatboxId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFromChatboxId() => $_has(4);

  @$pb.TagNumber(5)
  void clearFromChatboxId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get recommendType => $_getIZ(5);

  @$pb.TagNumber(6)
  set recommendType($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRecommendType() => $_has(5);

  @$pb.TagNumber(6)
  void clearRecommendType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get msg => $_getSZ(6);

  @$pb.TagNumber(7)
  set msg($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMsg() => $_has(6);

  @$pb.TagNumber(7)
  void clearMsg() => clearField(7);
}

class ConfirmBuddyRequestReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ConfirmBuddyRequestReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'buddyrequestId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastBuddyKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastBuddyrequestKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  ConfirmBuddyRequestReq._() : super();

  factory ConfirmBuddyRequestReq({
    $fixnum.Int64? buddyrequestId,
    $fixnum.Int64? lastBuddyKey,
    $fixnum.Int64? lastChatboxKey,
    $fixnum.Int64? lastBuddyrequestKey,
  }) {
    final _result = create();
    if (buddyrequestId != null) {
      _result.buddyrequestId = buddyrequestId;
    }
    if (lastBuddyKey != null) {
      _result.lastBuddyKey = lastBuddyKey;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    if (lastBuddyrequestKey != null) {
      _result.lastBuddyrequestKey = lastBuddyrequestKey;
    }
    return _result;
  }

  factory ConfirmBuddyRequestReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ConfirmBuddyRequestReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ConfirmBuddyRequestReq clone() =>
      ConfirmBuddyRequestReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ConfirmBuddyRequestReq copyWith(
    void Function(ConfirmBuddyRequestReq) updates,
  ) =>
      super.copyWith((message) => updates(message as ConfirmBuddyRequestReq))
          as ConfirmBuddyRequestReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfirmBuddyRequestReq create() => ConfirmBuddyRequestReq._();

  ConfirmBuddyRequestReq createEmptyInstance() => create();

  static $pb.PbList<ConfirmBuddyRequestReq> createRepeated() =>
      $pb.PbList<ConfirmBuddyRequestReq>();

  @$core.pragma('dart2js:noInline')
  static ConfirmBuddyRequestReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfirmBuddyRequestReq>(create);
  static ConfirmBuddyRequestReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get buddyrequestId => $_getI64(0);

  @$pb.TagNumber(1)
  set buddyrequestId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBuddyrequestId() => $_has(0);

  @$pb.TagNumber(1)
  void clearBuddyrequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastBuddyKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastBuddyKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastBuddyKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastBuddyKey() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastChatboxKey => $_getI64(2);

  @$pb.TagNumber(3)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLastChatboxKey() => $_has(2);

  @$pb.TagNumber(3)
  void clearLastChatboxKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastBuddyrequestKey => $_getI64(3);

  @$pb.TagNumber(4)
  set lastBuddyrequestKey($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLastBuddyrequestKey() => $_has(3);

  @$pb.TagNumber(4)
  void clearLastBuddyrequestKey() => clearField(4);
}

class DeleteBuddyRequestReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'DeleteBuddyRequestReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'buddyrequestId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastBuddyrequestKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  DeleteBuddyRequestReq._() : super();

  factory DeleteBuddyRequestReq({
    $fixnum.Int64? buddyrequestId,
    $fixnum.Int64? lastBuddyrequestKey,
  }) {
    final _result = create();
    if (buddyrequestId != null) {
      _result.buddyrequestId = buddyrequestId;
    }
    if (lastBuddyrequestKey != null) {
      _result.lastBuddyrequestKey = lastBuddyrequestKey;
    }
    return _result;
  }

  factory DeleteBuddyRequestReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory DeleteBuddyRequestReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  DeleteBuddyRequestReq clone() =>
      DeleteBuddyRequestReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  DeleteBuddyRequestReq copyWith(
    void Function(DeleteBuddyRequestReq) updates,
  ) =>
      super.copyWith((message) => updates(message as DeleteBuddyRequestReq))
          as DeleteBuddyRequestReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBuddyRequestReq create() => DeleteBuddyRequestReq._();

  DeleteBuddyRequestReq createEmptyInstance() => create();

  static $pb.PbList<DeleteBuddyRequestReq> createRepeated() =>
      $pb.PbList<DeleteBuddyRequestReq>();

  @$core.pragma('dart2js:noInline')
  static DeleteBuddyRequestReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteBuddyRequestReq>(create);
  static DeleteBuddyRequestReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get buddyrequestId => $_getI64(0);

  @$pb.TagNumber(1)
  set buddyrequestId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBuddyrequestId() => $_has(0);

  @$pb.TagNumber(1)
  void clearBuddyrequestId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastBuddyrequestKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastBuddyrequestKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastBuddyrequestKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastBuddyrequestKey() => clearField(2);
}

class SetAllBuddyRequestReadedReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SetAllBuddyRequestReadedReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastBuddyrequestKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  SetAllBuddyRequestReadedReq._() : super();

  factory SetAllBuddyRequestReadedReq({$fixnum.Int64? lastBuddyrequestKey}) {
    final _result = create();
    if (lastBuddyrequestKey != null) {
      _result.lastBuddyrequestKey = lastBuddyrequestKey;
    }
    return _result;
  }

  factory SetAllBuddyRequestReadedReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SetAllBuddyRequestReadedReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SetAllBuddyRequestReadedReq clone() =>
      SetAllBuddyRequestReadedReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SetAllBuddyRequestReadedReq copyWith(
    void Function(SetAllBuddyRequestReadedReq) updates,
  ) =>
      super.copyWith(
            (message) => updates(message as SetAllBuddyRequestReadedReq),
          )
          as SetAllBuddyRequestReadedReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAllBuddyRequestReadedReq create() =>
      SetAllBuddyRequestReadedReq._();

  SetAllBuddyRequestReadedReq createEmptyInstance() => create();

  static $pb.PbList<SetAllBuddyRequestReadedReq> createRepeated() =>
      $pb.PbList<SetAllBuddyRequestReadedReq>();

  @$core.pragma('dart2js:noInline')
  static SetAllBuddyRequestReadedReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetAllBuddyRequestReadedReq>(create);
  static SetAllBuddyRequestReadedReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get lastBuddyrequestKey => $_getI64(0);

  @$pb.TagNumber(1)
  set lastBuddyrequestKey($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLastBuddyrequestKey() => $_has(0);

  @$pb.TagNumber(1)
  void clearLastBuddyrequestKey() => clearField(1);
}
