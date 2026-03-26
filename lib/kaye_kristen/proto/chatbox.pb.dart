import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'chatbox.pbenum.dart';
import 'google/protobuf/any.pb.dart' as $0;
import 'im_object.pb.dart' as $3;
import 'im_object.pbenum.dart' as $3;

export 'chatbox.pbenum.dart';

class CreateChatboxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CreateChatboxReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..p<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'memberIds',
          $pb.PbFieldType.KU6,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<CreateChatboxReq_SourceType>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sourceType',
          $pb.PbFieldType.OE,
          defaultOrMaker: CreateChatboxReq_SourceType.FROM_UNKNOWN,
          valueOf: CreateChatboxReq_SourceType.valueOf,
          enumValues: CreateChatboxReq_SourceType.values,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'fromChatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOB(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'isPublic',
        )
        ..aOS(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'name',
        )
        ..a<$fixnum.Int64>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'eventTime',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<$3.Chatbox_EventFrequency>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'eventFrequency',
          $pb.PbFieldType.OE,
          defaultOrMaker: $3.Chatbox_EventFrequency.NEVER,
          valueOf: $3.Chatbox_EventFrequency.valueOf,
          enumValues: $3.Chatbox_EventFrequency.values,
        )
        ..p<$fixnum.Int64>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'categoryIds',
          $pb.PbFieldType.KU6,
        )
        ..a<$fixnum.Int64>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'coverId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'description',
        )
        ..aOM<$0.Any>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  CreateChatboxReq._() : super();

  factory CreateChatboxReq({
    $core.Iterable<$fixnum.Int64>? memberIds,
    $fixnum.Int64? lastChatboxKey,
    CreateChatboxReq_SourceType? sourceType,
    $fixnum.Int64? fromChatboxId,
    $core.bool? isPublic,
    $core.String? name,
    $fixnum.Int64? eventTime,
    $3.Chatbox_EventFrequency? eventFrequency,
    $core.Iterable<$fixnum.Int64>? categoryIds,
    $fixnum.Int64? coverId,
    $core.String? description,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (memberIds != null) {
      _result.memberIds.addAll(memberIds);
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
    if (isPublic != null) {
      _result.isPublic = isPublic;
    }
    if (name != null) {
      _result.name = name;
    }
    if (eventTime != null) {
      _result.eventTime = eventTime;
    }
    if (eventFrequency != null) {
      _result.eventFrequency = eventFrequency;
    }
    if (categoryIds != null) {
      _result.categoryIds.addAll(categoryIds);
    }
    if (coverId != null) {
      _result.coverId = coverId;
    }
    if (description != null) {
      _result.description = description;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory CreateChatboxReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CreateChatboxReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CreateChatboxReq clone() => CreateChatboxReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CreateChatboxReq copyWith(void Function(CreateChatboxReq) updates) =>
      super.copyWith((message) => updates(message as CreateChatboxReq))
          as CreateChatboxReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateChatboxReq create() => CreateChatboxReq._();

  CreateChatboxReq createEmptyInstance() => create();

  static $pb.PbList<CreateChatboxReq> createRepeated() =>
      $pb.PbList<CreateChatboxReq>();

  @$core.pragma('dart2js:noInline')
  static CreateChatboxReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateChatboxReq>(create);
  static CreateChatboxReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get memberIds => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastChatboxKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastChatboxKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastChatboxKey() => clearField(2);

  @$pb.TagNumber(3)
  CreateChatboxReq_SourceType get sourceType => $_getN(2);

  @$pb.TagNumber(3)
  set sourceType(CreateChatboxReq_SourceType v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSourceType() => $_has(2);

  @$pb.TagNumber(3)
  void clearSourceType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fromChatboxId => $_getI64(3);

  @$pb.TagNumber(4)
  set fromChatboxId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasFromChatboxId() => $_has(3);

  @$pb.TagNumber(4)
  void clearFromChatboxId() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isPublic => $_getBF(4);

  @$pb.TagNumber(5)
  set isPublic($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsPublic() => $_has(4);

  @$pb.TagNumber(5)
  void clearIsPublic() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);

  @$pb.TagNumber(6)
  set name($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);

  @$pb.TagNumber(6)
  void clearName() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get eventTime => $_getI64(6);

  @$pb.TagNumber(7)
  set eventTime($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasEventTime() => $_has(6);

  @$pb.TagNumber(7)
  void clearEventTime() => clearField(7);

  @$pb.TagNumber(8)
  $3.Chatbox_EventFrequency get eventFrequency => $_getN(7);

  @$pb.TagNumber(8)
  set eventFrequency($3.Chatbox_EventFrequency v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEventFrequency() => $_has(7);

  @$pb.TagNumber(8)
  void clearEventFrequency() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$fixnum.Int64> get categoryIds => $_getList(8);

  @$pb.TagNumber(10)
  $fixnum.Int64 get coverId => $_getI64(9);

  @$pb.TagNumber(10)
  set coverId($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasCoverId() => $_has(9);

  @$pb.TagNumber(10)
  void clearCoverId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get description => $_getSZ(10);

  @$pb.TagNumber(11)
  set description($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDescription() => $_has(10);

  @$pb.TagNumber(11)
  void clearDescription() => clearField(11);

  @$pb.TagNumber(12)
  $0.Any get extensions => $_getN(11);

  @$pb.TagNumber(12)
  set extensions($0.Any v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasExtensions() => $_has(11);

  @$pb.TagNumber(12)
  void clearExtensions() => clearField(12);

  @$pb.TagNumber(12)
  $0.Any ensureExtensions() => $_ensure(11);
}

class CreateChatboxRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CreateChatboxRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..aOM<$3.Chatbox>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatbox',
          subBuilder: $3.Chatbox.create,
        )
        ..hasRequiredFields = false;

  CreateChatboxRsp._() : super();

  factory CreateChatboxRsp({
    $core.int? code,
    $core.String? msg,
    $3.Chatbox? chatbox,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (chatbox != null) {
      _result.chatbox = chatbox;
    }
    return _result;
  }

  factory CreateChatboxRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CreateChatboxRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CreateChatboxRsp clone() => CreateChatboxRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CreateChatboxRsp copyWith(void Function(CreateChatboxRsp) updates) =>
      super.copyWith((message) => updates(message as CreateChatboxRsp))
          as CreateChatboxRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateChatboxRsp create() => CreateChatboxRsp._();

  CreateChatboxRsp createEmptyInstance() => create();

  static $pb.PbList<CreateChatboxRsp> createRepeated() =>
      $pb.PbList<CreateChatboxRsp>();

  @$core.pragma('dart2js:noInline')
  static CreateChatboxRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateChatboxRsp>(create);
  static CreateChatboxRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $3.Chatbox get chatbox => $_getN(2);

  @$pb.TagNumber(3)
  set chatbox($3.Chatbox v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasChatbox() => $_has(2);

  @$pb.TagNumber(3)
  void clearChatbox() => clearField(3);

  @$pb.TagNumber(3)
  $3.Chatbox ensureChatbox() => $_ensure(2);
}

class SetChatboxNameReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SetChatboxNameReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'name',
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  SetChatboxNameReq._() : super();

  factory SetChatboxNameReq({
    $fixnum.Int64? chatboxId,
    $core.String? name,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory SetChatboxNameReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SetChatboxNameReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SetChatboxNameReq clone() => SetChatboxNameReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SetChatboxNameReq copyWith(void Function(SetChatboxNameReq) updates) =>
      super.copyWith((message) => updates(message as SetChatboxNameReq))
          as SetChatboxNameReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetChatboxNameReq create() => SetChatboxNameReq._();

  SetChatboxNameReq createEmptyInstance() => create();

  static $pb.PbList<SetChatboxNameReq> createRepeated() =>
      $pb.PbList<SetChatboxNameReq>();

  @$core.pragma('dart2js:noInline')
  static SetChatboxNameReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetChatboxNameReq>(create);
  static SetChatboxNameReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);

  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);

  @$pb.TagNumber(2)
  void clearName() => clearField(2);

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
}

class SetChatboxDescReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SetChatboxDescReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'description',
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  SetChatboxDescReq._() : super();

  factory SetChatboxDescReq({
    $fixnum.Int64? chatboxId,
    $core.String? description,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (description != null) {
      _result.description = description;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory SetChatboxDescReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SetChatboxDescReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SetChatboxDescReq clone() => SetChatboxDescReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SetChatboxDescReq copyWith(void Function(SetChatboxDescReq) updates) =>
      super.copyWith((message) => updates(message as SetChatboxDescReq))
          as SetChatboxDescReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetChatboxDescReq create() => SetChatboxDescReq._();

  SetChatboxDescReq createEmptyInstance() => create();

  static $pb.PbList<SetChatboxDescReq> createRepeated() =>
      $pb.PbList<SetChatboxDescReq>();

  @$core.pragma('dart2js:noInline')
  static SetChatboxDescReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetChatboxDescReq>(create);
  static SetChatboxDescReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);

  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);

  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

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
}

class SetChatboxCoverReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SetChatboxCoverReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'imageId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'imageUrl',
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  SetChatboxCoverReq._() : super();

  factory SetChatboxCoverReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? imageId,
    $core.String? imageUrl,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (imageId != null) {
      _result.imageId = imageId;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory SetChatboxCoverReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SetChatboxCoverReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SetChatboxCoverReq clone() => SetChatboxCoverReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SetChatboxCoverReq copyWith(void Function(SetChatboxCoverReq) updates) =>
      super.copyWith((message) => updates(message as SetChatboxCoverReq))
          as SetChatboxCoverReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetChatboxCoverReq create() => SetChatboxCoverReq._();

  SetChatboxCoverReq createEmptyInstance() => create();

  static $pb.PbList<SetChatboxCoverReq> createRepeated() =>
      $pb.PbList<SetChatboxCoverReq>();

  @$core.pragma('dart2js:noInline')
  static SetChatboxCoverReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetChatboxCoverReq>(create);
  static SetChatboxCoverReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get imageId => $_getI64(1);

  @$pb.TagNumber(2)
  set imageId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasImageId() => $_has(1);

  @$pb.TagNumber(2)
  void clearImageId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get imageUrl => $_getSZ(2);

  @$pb.TagNumber(3)
  set imageUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImageUrl() => $_has(2);

  @$pb.TagNumber(3)
  void clearImageUrl() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastChatboxKey => $_getI64(3);

  @$pb.TagNumber(4)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLastChatboxKey() => $_has(3);

  @$pb.TagNumber(4)
  void clearLastChatboxKey() => clearField(4);
}

class AddChatboxMemberReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'AddChatboxMemberReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..p<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'memberIds',
          $pb.PbFieldType.KU6,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  AddChatboxMemberReq._() : super();

  factory AddChatboxMemberReq({
    $fixnum.Int64? chatboxId,
    $core.Iterable<$fixnum.Int64>? memberIds,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (memberIds != null) {
      _result.memberIds.addAll(memberIds);
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory AddChatboxMemberReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory AddChatboxMemberReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  AddChatboxMemberReq clone() => AddChatboxMemberReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  AddChatboxMemberReq copyWith(void Function(AddChatboxMemberReq) updates) =>
      super.copyWith((message) => updates(message as AddChatboxMemberReq))
          as AddChatboxMemberReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddChatboxMemberReq create() => AddChatboxMemberReq._();

  AddChatboxMemberReq createEmptyInstance() => create();

  static $pb.PbList<AddChatboxMemberReq> createRepeated() =>
      $pb.PbList<AddChatboxMemberReq>();

  @$core.pragma('dart2js:noInline')
  static AddChatboxMemberReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddChatboxMemberReq>(create);
  static AddChatboxMemberReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get memberIds => $_getList(1);

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
}

class RemoveChatboxMemberReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'RemoveChatboxMemberReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..p<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'memberIds',
          $pb.PbFieldType.KU6,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  RemoveChatboxMemberReq._() : super();

  factory RemoveChatboxMemberReq({
    $fixnum.Int64? chatboxId,
    $core.Iterable<$fixnum.Int64>? memberIds,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (memberIds != null) {
      _result.memberIds.addAll(memberIds);
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory RemoveChatboxMemberReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RemoveChatboxMemberReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RemoveChatboxMemberReq clone() =>
      RemoveChatboxMemberReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RemoveChatboxMemberReq copyWith(
    void Function(RemoveChatboxMemberReq) updates,
  ) =>
      super.copyWith((message) => updates(message as RemoveChatboxMemberReq))
          as RemoveChatboxMemberReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveChatboxMemberReq create() => RemoveChatboxMemberReq._();

  RemoveChatboxMemberReq createEmptyInstance() => create();

  static $pb.PbList<RemoveChatboxMemberReq> createRepeated() =>
      $pb.PbList<RemoveChatboxMemberReq>();

  @$core.pragma('dart2js:noInline')
  static RemoveChatboxMemberReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveChatboxMemberReq>(create);
  static RemoveChatboxMemberReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get memberIds => $_getList(1);

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
}

class StarChaboxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'StarChaboxReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'operation',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  StarChaboxReq._() : super();

  factory StarChaboxReq({
    $fixnum.Int64? chatboxId,
    $core.int? operation,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (operation != null) {
      _result.operation = operation;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory StarChaboxReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory StarChaboxReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  StarChaboxReq clone() => StarChaboxReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  StarChaboxReq copyWith(void Function(StarChaboxReq) updates) =>
      super.copyWith((message) => updates(message as StarChaboxReq))
          as StarChaboxReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StarChaboxReq create() => StarChaboxReq._();

  StarChaboxReq createEmptyInstance() => create();

  static $pb.PbList<StarChaboxReq> createRepeated() =>
      $pb.PbList<StarChaboxReq>();

  @$core.pragma('dart2js:noInline')
  static StarChaboxReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StarChaboxReq>(create);
  static StarChaboxReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get operation => $_getIZ(1);

  @$pb.TagNumber(2)
  set operation($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOperation() => $_has(1);

  @$pb.TagNumber(2)
  void clearOperation() => clearField(2);

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
}

class MuteChatboxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'MuteChatboxReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'operation',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  MuteChatboxReq._() : super();

  factory MuteChatboxReq({
    $fixnum.Int64? chatboxId,
    $core.int? operation,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (operation != null) {
      _result.operation = operation;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory MuteChatboxReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory MuteChatboxReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  MuteChatboxReq clone() => MuteChatboxReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  MuteChatboxReq copyWith(void Function(MuteChatboxReq) updates) =>
      super.copyWith((message) => updates(message as MuteChatboxReq))
          as MuteChatboxReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MuteChatboxReq create() => MuteChatboxReq._();

  MuteChatboxReq createEmptyInstance() => create();

  static $pb.PbList<MuteChatboxReq> createRepeated() =>
      $pb.PbList<MuteChatboxReq>();

  @$core.pragma('dart2js:noInline')
  static MuteChatboxReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MuteChatboxReq>(create);
  static MuteChatboxReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get operation => $_getIZ(1);

  @$pb.TagNumber(2)
  set operation($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOperation() => $_has(1);

  @$pb.TagNumber(2)
  void clearOperation() => clearField(2);

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
}

class RemoveChatboxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'RemoveChatboxReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..p<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxIds',
          $pb.PbFieldType.KU6,
        )
        ..hasRequiredFields = false;

  RemoveChatboxReq._() : super();

  factory RemoveChatboxReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? lastChatboxKey,
    $core.Iterable<$fixnum.Int64>? chatboxIds,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    if (chatboxIds != null) {
      _result.chatboxIds.addAll(chatboxIds);
    }
    return _result;
  }

  factory RemoveChatboxReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RemoveChatboxReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RemoveChatboxReq clone() => RemoveChatboxReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RemoveChatboxReq copyWith(void Function(RemoveChatboxReq) updates) =>
      super.copyWith((message) => updates(message as RemoveChatboxReq))
          as RemoveChatboxReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveChatboxReq create() => RemoveChatboxReq._();

  RemoveChatboxReq createEmptyInstance() => create();

  static $pb.PbList<RemoveChatboxReq> createRepeated() =>
      $pb.PbList<RemoveChatboxReq>();

  @$core.pragma('dart2js:noInline')
  static RemoveChatboxReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveChatboxReq>(create);
  static RemoveChatboxReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastChatboxKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastChatboxKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastChatboxKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get chatboxIds => $_getList(2);
}

class ExitChatboxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ExitChatboxReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  ExitChatboxReq._() : super();

  factory ExitChatboxReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory ExitChatboxReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ExitChatboxReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ExitChatboxReq clone() => ExitChatboxReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ExitChatboxReq copyWith(void Function(ExitChatboxReq) updates) =>
      super.copyWith((message) => updates(message as ExitChatboxReq))
          as ExitChatboxReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExitChatboxReq create() => ExitChatboxReq._();

  ExitChatboxReq createEmptyInstance() => create();

  static $pb.PbList<ExitChatboxReq> createRepeated() =>
      $pb.PbList<ExitChatboxReq>();

  @$core.pragma('dart2js:noInline')
  static ExitChatboxReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExitChatboxReq>(create);
  static ExitChatboxReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastChatboxKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastChatboxKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastChatboxKey() => clearField(2);
}

class ReportChatboxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ReportChatboxReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<ReportChatboxReq_Type>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OE,
          defaultOrMaker: ReportChatboxReq_Type.AD,
          valueOf: ReportChatboxReq_Type.valueOf,
          enumValues: ReportChatboxReq_Type.values,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'reason',
        )
        ..hasRequiredFields = false;

  ReportChatboxReq._() : super();

  factory ReportChatboxReq({
    $fixnum.Int64? chatboxId,
    ReportChatboxReq_Type? type,
    $core.String? reason,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    return _result;
  }

  factory ReportChatboxReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ReportChatboxReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ReportChatboxReq clone() => ReportChatboxReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ReportChatboxReq copyWith(void Function(ReportChatboxReq) updates) =>
      super.copyWith((message) => updates(message as ReportChatboxReq))
          as ReportChatboxReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportChatboxReq create() => ReportChatboxReq._();

  ReportChatboxReq createEmptyInstance() => create();

  static $pb.PbList<ReportChatboxReq> createRepeated() =>
      $pb.PbList<ReportChatboxReq>();

  @$core.pragma('dart2js:noInline')
  static ReportChatboxReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportChatboxReq>(create);
  static ReportChatboxReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  ReportChatboxReq_Type get type => $_getN(1);

  @$pb.TagNumber(2)
  set type(ReportChatboxReq_Type v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);

  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get reason => $_getSZ(2);

  @$pb.TagNumber(3)
  set reason($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReason() => $_has(2);

  @$pb.TagNumber(3)
  void clearReason() => clearField(3);
}

class JoinChatboxReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'JoinChatboxReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'verifyCode',
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastSnapKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'reason',
        )
        ..hasRequiredFields = false;

  JoinChatboxReq._() : super();

  factory JoinChatboxReq({
    $fixnum.Int64? chatboxId,
    $core.String? verifyCode,
    $fixnum.Int64? lastSnapKey,
    $fixnum.Int64? lastChatboxKey,
    $core.String? reason,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (verifyCode != null) {
      _result.verifyCode = verifyCode;
    }
    if (lastSnapKey != null) {
      _result.lastSnapKey = lastSnapKey;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    return _result;
  }

  factory JoinChatboxReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory JoinChatboxReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  JoinChatboxReq clone() => JoinChatboxReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  JoinChatboxReq copyWith(void Function(JoinChatboxReq) updates) =>
      super.copyWith((message) => updates(message as JoinChatboxReq))
          as JoinChatboxReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinChatboxReq create() => JoinChatboxReq._();

  JoinChatboxReq createEmptyInstance() => create();

  static $pb.PbList<JoinChatboxReq> createRepeated() =>
      $pb.PbList<JoinChatboxReq>();

  @$core.pragma('dart2js:noInline')
  static JoinChatboxReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JoinChatboxReq>(create);
  static JoinChatboxReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get verifyCode => $_getSZ(1);

  @$pb.TagNumber(2)
  set verifyCode($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVerifyCode() => $_has(1);

  @$pb.TagNumber(2)
  void clearVerifyCode() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastSnapKey => $_getI64(2);

  @$pb.TagNumber(3)
  set lastSnapKey($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLastSnapKey() => $_has(2);

  @$pb.TagNumber(3)
  void clearLastSnapKey() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastChatboxKey => $_getI64(3);

  @$pb.TagNumber(4)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasLastChatboxKey() => $_has(3);

  @$pb.TagNumber(4)
  void clearLastChatboxKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get reason => $_getSZ(4);

  @$pb.TagNumber(5)
  set reason($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasReason() => $_has(4);

  @$pb.TagNumber(5)
  void clearReason() => clearField(5);
}

class JoinChatboxRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'JoinChatboxRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..aOM<$3.Chatbox>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatbox',
          subBuilder: $3.Chatbox.create,
        )
        ..hasRequiredFields = false;

  JoinChatboxRsp._() : super();

  factory JoinChatboxRsp({
    $core.int? code,
    $core.String? msg,
    $3.Chatbox? chatbox,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (chatbox != null) {
      _result.chatbox = chatbox;
    }
    return _result;
  }

  factory JoinChatboxRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory JoinChatboxRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  JoinChatboxRsp clone() => JoinChatboxRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  JoinChatboxRsp copyWith(void Function(JoinChatboxRsp) updates) =>
      super.copyWith((message) => updates(message as JoinChatboxRsp))
          as JoinChatboxRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinChatboxRsp create() => JoinChatboxRsp._();

  JoinChatboxRsp createEmptyInstance() => create();

  static $pb.PbList<JoinChatboxRsp> createRepeated() =>
      $pb.PbList<JoinChatboxRsp>();

  @$core.pragma('dart2js:noInline')
  static JoinChatboxRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JoinChatboxRsp>(create);
  static JoinChatboxRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $3.Chatbox get chatbox => $_getN(2);

  @$pb.TagNumber(3)
  set chatbox($3.Chatbox v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasChatbox() => $_has(2);

  @$pb.TagNumber(3)
  void clearChatbox() => clearField(3);

  @$pb.TagNumber(3)
  $3.Chatbox ensureChatbox() => $_ensure(2);
}

class UpdateChatboxReadedStatusReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UpdateChatboxReadedStatusReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastSnapKey',
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
        ..p<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxIds',
          $pb.PbFieldType.KU6,
        )
        ..hasRequiredFields = false;

  UpdateChatboxReadedStatusReq._() : super();

  factory UpdateChatboxReadedStatusReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? lastSnapKey,
    $fixnum.Int64? lastChatboxKey,
    $core.Iterable<$fixnum.Int64>? chatboxIds,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (lastSnapKey != null) {
      _result.lastSnapKey = lastSnapKey;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    if (chatboxIds != null) {
      _result.chatboxIds.addAll(chatboxIds);
    }
    return _result;
  }

  factory UpdateChatboxReadedStatusReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UpdateChatboxReadedStatusReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UpdateChatboxReadedStatusReq clone() =>
      UpdateChatboxReadedStatusReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UpdateChatboxReadedStatusReq copyWith(
    void Function(UpdateChatboxReadedStatusReq) updates,
  ) =>
      super.copyWith(
            (message) => updates(message as UpdateChatboxReadedStatusReq),
          )
          as UpdateChatboxReadedStatusReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateChatboxReadedStatusReq create() =>
      UpdateChatboxReadedStatusReq._();

  UpdateChatboxReadedStatusReq createEmptyInstance() => create();

  static $pb.PbList<UpdateChatboxReadedStatusReq> createRepeated() =>
      $pb.PbList<UpdateChatboxReadedStatusReq>();

  @$core.pragma('dart2js:noInline')
  static UpdateChatboxReadedStatusReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateChatboxReadedStatusReq>(create);
  static UpdateChatboxReadedStatusReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastSnapKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastSnapKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastSnapKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastSnapKey() => clearField(2);

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
  $core.List<$fixnum.Int64> get chatboxIds => $_getList(3);
}

class UpdateChatboxPublicSettingReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UpdateChatboxPublicSettingReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOB(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'isPublic',
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'eventTime',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<$3.Chatbox_EventFrequency>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'eventFrequency',
          $pb.PbFieldType.OE,
          defaultOrMaker: $3.Chatbox_EventFrequency.NEVER,
          valueOf: $3.Chatbox_EventFrequency.valueOf,
          enumValues: $3.Chatbox_EventFrequency.values,
        )
        ..hasRequiredFields = false;

  UpdateChatboxPublicSettingReq._() : super();

  factory UpdateChatboxPublicSettingReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? lastChatboxKey,
    $core.bool? isPublic,
    $fixnum.Int64? eventTime,
    $3.Chatbox_EventFrequency? eventFrequency,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    if (isPublic != null) {
      _result.isPublic = isPublic;
    }
    if (eventTime != null) {
      _result.eventTime = eventTime;
    }
    if (eventFrequency != null) {
      _result.eventFrequency = eventFrequency;
    }
    return _result;
  }

  factory UpdateChatboxPublicSettingReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UpdateChatboxPublicSettingReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UpdateChatboxPublicSettingReq clone() =>
      UpdateChatboxPublicSettingReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UpdateChatboxPublicSettingReq copyWith(
    void Function(UpdateChatboxPublicSettingReq) updates,
  ) =>
      super.copyWith(
            (message) => updates(message as UpdateChatboxPublicSettingReq),
          )
          as UpdateChatboxPublicSettingReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateChatboxPublicSettingReq create() =>
      UpdateChatboxPublicSettingReq._();

  UpdateChatboxPublicSettingReq createEmptyInstance() => create();

  static $pb.PbList<UpdateChatboxPublicSettingReq> createRepeated() =>
      $pb.PbList<UpdateChatboxPublicSettingReq>();

  @$core.pragma('dart2js:noInline')
  static UpdateChatboxPublicSettingReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateChatboxPublicSettingReq>(create);
  static UpdateChatboxPublicSettingReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastChatboxKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastChatboxKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastChatboxKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isPublic => $_getBF(2);

  @$pb.TagNumber(3)
  set isPublic($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsPublic() => $_has(2);

  @$pb.TagNumber(3)
  void clearIsPublic() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get eventTime => $_getI64(3);

  @$pb.TagNumber(4)
  set eventTime($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasEventTime() => $_has(3);

  @$pb.TagNumber(4)
  void clearEventTime() => clearField(4);

  @$pb.TagNumber(5)
  $3.Chatbox_EventFrequency get eventFrequency => $_getN(4);

  @$pb.TagNumber(5)
  set eventFrequency($3.Chatbox_EventFrequency v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasEventFrequency() => $_has(4);

  @$pb.TagNumber(5)
  void clearEventFrequency() => clearField(5);
}

class GetChatboxInfoReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetChatboxInfoReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  GetChatboxInfoReq._() : super();

  factory GetChatboxInfoReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory GetChatboxInfoReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetChatboxInfoReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetChatboxInfoReq clone() => GetChatboxInfoReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetChatboxInfoReq copyWith(void Function(GetChatboxInfoReq) updates) =>
      super.copyWith((message) => updates(message as GetChatboxInfoReq))
          as GetChatboxInfoReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetChatboxInfoReq create() => GetChatboxInfoReq._();

  GetChatboxInfoReq createEmptyInstance() => create();

  static $pb.PbList<GetChatboxInfoReq> createRepeated() =>
      $pb.PbList<GetChatboxInfoReq>();

  @$core.pragma('dart2js:noInline')
  static GetChatboxInfoReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetChatboxInfoReq>(create);
  static GetChatboxInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastChatboxKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastChatboxKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastChatboxKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastChatboxKey() => clearField(2);
}

class GetChatboxInfoRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetChatboxInfoRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..aOM<$3.Chatbox>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxInfo',
          subBuilder: $3.Chatbox.create,
        )
        ..hasRequiredFields = false;

  GetChatboxInfoRsp._() : super();

  factory GetChatboxInfoRsp({
    $core.int? code,
    $core.String? msg,
    $3.Chatbox? chatboxInfo,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (chatboxInfo != null) {
      _result.chatboxInfo = chatboxInfo;
    }
    return _result;
  }

  factory GetChatboxInfoRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetChatboxInfoRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetChatboxInfoRsp clone() => GetChatboxInfoRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetChatboxInfoRsp copyWith(void Function(GetChatboxInfoRsp) updates) =>
      super.copyWith((message) => updates(message as GetChatboxInfoRsp))
          as GetChatboxInfoRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetChatboxInfoRsp create() => GetChatboxInfoRsp._();

  GetChatboxInfoRsp createEmptyInstance() => create();

  static $pb.PbList<GetChatboxInfoRsp> createRepeated() =>
      $pb.PbList<GetChatboxInfoRsp>();

  @$core.pragma('dart2js:noInline')
  static GetChatboxInfoRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetChatboxInfoRsp>(create);
  static GetChatboxInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $3.Chatbox get chatboxInfo => $_getN(2);

  @$pb.TagNumber(3)
  set chatboxInfo($3.Chatbox v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasChatboxInfo() => $_has(2);

  @$pb.TagNumber(3)
  void clearChatboxInfo() => clearField(3);

  @$pb.TagNumber(3)
  $3.Chatbox ensureChatboxInfo() => $_ensure(2);
}

class UpdateChatboxCategoryReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UpdateChatboxCategoryReq',
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
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..p<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'categoryIds',
          $pb.PbFieldType.KU6,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastChatboxKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  UpdateChatboxCategoryReq._() : super();

  factory UpdateChatboxCategoryReq({
    $fixnum.Int64? chatboxId,
    $core.Iterable<$fixnum.Int64>? categoryIds,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (categoryIds != null) {
      _result.categoryIds.addAll(categoryIds);
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory UpdateChatboxCategoryReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UpdateChatboxCategoryReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UpdateChatboxCategoryReq clone() =>
      UpdateChatboxCategoryReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UpdateChatboxCategoryReq copyWith(
    void Function(UpdateChatboxCategoryReq) updates,
  ) =>
      super.copyWith((message) => updates(message as UpdateChatboxCategoryReq))
          as UpdateChatboxCategoryReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateChatboxCategoryReq create() => UpdateChatboxCategoryReq._();

  UpdateChatboxCategoryReq createEmptyInstance() => create();

  static $pb.PbList<UpdateChatboxCategoryReq> createRepeated() =>
      $pb.PbList<UpdateChatboxCategoryReq>();

  @$core.pragma('dart2js:noInline')
  static UpdateChatboxCategoryReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateChatboxCategoryReq>(create);
  static UpdateChatboxCategoryReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chatboxId => $_getI64(0);

  @$pb.TagNumber(1)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChatboxId() => $_has(0);

  @$pb.TagNumber(1)
  void clearChatboxId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get categoryIds => $_getList(1);

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
}

class BatchGetChatboxInfoReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'BatchGetChatboxInfoReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..p<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxIds',
          $pb.PbFieldType.KU6,
        )
        ..hasRequiredFields = false;

  BatchGetChatboxInfoReq._() : super();

  factory BatchGetChatboxInfoReq({$core.Iterable<$fixnum.Int64>? chatboxIds}) {
    final _result = create();
    if (chatboxIds != null) {
      _result.chatboxIds.addAll(chatboxIds);
    }
    return _result;
  }

  factory BatchGetChatboxInfoReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory BatchGetChatboxInfoReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  BatchGetChatboxInfoReq clone() =>
      BatchGetChatboxInfoReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  BatchGetChatboxInfoReq copyWith(
    void Function(BatchGetChatboxInfoReq) updates,
  ) =>
      super.copyWith((message) => updates(message as BatchGetChatboxInfoReq))
          as BatchGetChatboxInfoReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchGetChatboxInfoReq create() => BatchGetChatboxInfoReq._();

  BatchGetChatboxInfoReq createEmptyInstance() => create();

  static $pb.PbList<BatchGetChatboxInfoReq> createRepeated() =>
      $pb.PbList<BatchGetChatboxInfoReq>();

  @$core.pragma('dart2js:noInline')
  static BatchGetChatboxInfoReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchGetChatboxInfoReq>(create);
  static BatchGetChatboxInfoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get chatboxIds => $_getList(0);
}

class BatchGetChatboxInfoRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'BatchGetChatboxInfoRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..pc<$3.Chatbox>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxInfos',
          $pb.PbFieldType.PM,
          subBuilder: $3.Chatbox.create,
        )
        ..hasRequiredFields = false;

  BatchGetChatboxInfoRsp._() : super();

  factory BatchGetChatboxInfoRsp({
    $core.int? code,
    $core.String? msg,
    $core.Iterable<$3.Chatbox>? chatboxInfos,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (chatboxInfos != null) {
      _result.chatboxInfos.addAll(chatboxInfos);
    }
    return _result;
  }

  factory BatchGetChatboxInfoRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory BatchGetChatboxInfoRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  BatchGetChatboxInfoRsp clone() =>
      BatchGetChatboxInfoRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  BatchGetChatboxInfoRsp copyWith(
    void Function(BatchGetChatboxInfoRsp) updates,
  ) =>
      super.copyWith((message) => updates(message as BatchGetChatboxInfoRsp))
          as BatchGetChatboxInfoRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchGetChatboxInfoRsp create() => BatchGetChatboxInfoRsp._();

  BatchGetChatboxInfoRsp createEmptyInstance() => create();

  static $pb.PbList<BatchGetChatboxInfoRsp> createRepeated() =>
      $pb.PbList<BatchGetChatboxInfoRsp>();

  @$core.pragma('dart2js:noInline')
  static BatchGetChatboxInfoRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchGetChatboxInfoRsp>(create);
  static BatchGetChatboxInfoRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$3.Chatbox> get chatboxInfos => $_getList(2);
}
