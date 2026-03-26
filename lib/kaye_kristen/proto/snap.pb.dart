import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $0;
import 'im_object.pb.dart' as $3;
import 'im_object.pbenum.dart' as $3;
import 'object.pb.dart' as $2;

class CreateSnapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CreateSnapReq',
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
        ..e<$3.Snap_SnapType>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'snapType',
          $pb.PbFieldType.OE,
          defaultOrMaker: $3.Snap_SnapType.VIDEO_SNAP,
          valueOf: $3.Snap_SnapType.valueOf,
          enumValues: $3.Snap_SnapType.values,
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'textContent',
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'imgId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'videoId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'voiceId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'jsonContent',
        )
        ..a<$fixnum.Int64>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'localId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$0.Any>(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..aOM<$3.RedPacket>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'redPacket',
          subBuilder: $3.RedPacket.create,
        )
        ..p<$fixnum.Int64>(
          13,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'multiImgIds',
          $pb.PbFieldType.KU6,
        )
        ..a<$fixnum.Int64>(
          14,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'repliedSnapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$2.Location>(
          15,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'location',
          subBuilder: $2.Location.create,
        )
        ..aOS(
          16,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'textTrans',
        )
        ..a<$fixnum.Int64>(
          17,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CreateSnapReq._() : super();

  factory CreateSnapReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? lastSnapKey,
    $fixnum.Int64? lastChatboxKey,
    $3.Snap_SnapType? snapType,
    $core.String? textContent,
    $fixnum.Int64? imgId,
    $fixnum.Int64? videoId,
    $fixnum.Int64? voiceId,
    $core.String? jsonContent,
    $fixnum.Int64? localId,
    $0.Any? extensions,
    $3.RedPacket? redPacket,
    $core.Iterable<$fixnum.Int64>? multiImgIds,
    $fixnum.Int64? repliedSnapId,
    $2.Location? location,
    $core.String? textTrans,
    $fixnum.Int64? toUid,
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
    if (snapType != null) {
      _result.snapType = snapType;
    }
    if (textContent != null) {
      _result.textContent = textContent;
    }
    if (imgId != null) {
      _result.imgId = imgId;
    }
    if (videoId != null) {
      _result.videoId = videoId;
    }
    if (voiceId != null) {
      _result.voiceId = voiceId;
    }
    if (jsonContent != null) {
      _result.jsonContent = jsonContent;
    }
    if (localId != null) {
      _result.localId = localId;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    if (redPacket != null) {
      _result.redPacket = redPacket;
    }
    if (multiImgIds != null) {
      _result.multiImgIds.addAll(multiImgIds);
    }
    if (repliedSnapId != null) {
      _result.repliedSnapId = repliedSnapId;
    }
    if (location != null) {
      _result.location = location;
    }
    if (textTrans != null) {
      _result.textTrans = textTrans;
    }
    if (toUid != null) {
      _result.toUid = toUid;
    }
    return _result;
  }

  factory CreateSnapReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CreateSnapReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CreateSnapReq clone() => CreateSnapReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CreateSnapReq copyWith(void Function(CreateSnapReq) updates) =>
      super.copyWith((message) => updates(message as CreateSnapReq))
          as CreateSnapReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSnapReq create() => CreateSnapReq._();

  CreateSnapReq createEmptyInstance() => create();

  static $pb.PbList<CreateSnapReq> createRepeated() =>
      $pb.PbList<CreateSnapReq>();

  @$core.pragma('dart2js:noInline')
  static CreateSnapReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSnapReq>(create);
  static CreateSnapReq? _defaultInstance;

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
  $3.Snap_SnapType get snapType => $_getN(3);

  @$pb.TagNumber(4)
  set snapType($3.Snap_SnapType v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSnapType() => $_has(3);

  @$pb.TagNumber(4)
  void clearSnapType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get textContent => $_getSZ(4);

  @$pb.TagNumber(5)
  set textContent($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTextContent() => $_has(4);

  @$pb.TagNumber(5)
  void clearTextContent() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get imgId => $_getI64(5);

  @$pb.TagNumber(6)
  set imgId($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasImgId() => $_has(5);

  @$pb.TagNumber(6)
  void clearImgId() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get videoId => $_getI64(6);

  @$pb.TagNumber(7)
  set videoId($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasVideoId() => $_has(6);

  @$pb.TagNumber(7)
  void clearVideoId() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get voiceId => $_getI64(7);

  @$pb.TagNumber(8)
  set voiceId($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasVoiceId() => $_has(7);

  @$pb.TagNumber(8)
  void clearVoiceId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get jsonContent => $_getSZ(8);

  @$pb.TagNumber(9)
  set jsonContent($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasJsonContent() => $_has(8);

  @$pb.TagNumber(9)
  void clearJsonContent() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get localId => $_getI64(9);

  @$pb.TagNumber(10)
  set localId($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasLocalId() => $_has(9);

  @$pb.TagNumber(10)
  void clearLocalId() => clearField(10);

  @$pb.TagNumber(11)
  $0.Any get extensions => $_getN(10);

  @$pb.TagNumber(11)
  set extensions($0.Any v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasExtensions() => $_has(10);

  @$pb.TagNumber(11)
  void clearExtensions() => clearField(11);

  @$pb.TagNumber(11)
  $0.Any ensureExtensions() => $_ensure(10);

  @$pb.TagNumber(12)
  $3.RedPacket get redPacket => $_getN(11);

  @$pb.TagNumber(12)
  set redPacket($3.RedPacket v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasRedPacket() => $_has(11);

  @$pb.TagNumber(12)
  void clearRedPacket() => clearField(12);

  @$pb.TagNumber(12)
  $3.RedPacket ensureRedPacket() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.List<$fixnum.Int64> get multiImgIds => $_getList(12);

  @$pb.TagNumber(14)
  $fixnum.Int64 get repliedSnapId => $_getI64(13);

  @$pb.TagNumber(14)
  set repliedSnapId($fixnum.Int64 v) {
    $_setInt64(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasRepliedSnapId() => $_has(13);

  @$pb.TagNumber(14)
  void clearRepliedSnapId() => clearField(14);

  @$pb.TagNumber(15)
  $2.Location get location => $_getN(14);

  @$pb.TagNumber(15)
  set location($2.Location v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasLocation() => $_has(14);

  @$pb.TagNumber(15)
  void clearLocation() => clearField(15);

  @$pb.TagNumber(15)
  $2.Location ensureLocation() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get textTrans => $_getSZ(15);

  @$pb.TagNumber(16)
  set textTrans($core.String v) {
    $_setString(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasTextTrans() => $_has(15);

  @$pb.TagNumber(16)
  void clearTextTrans() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get toUid => $_getI64(16);

  @$pb.TagNumber(17)
  set toUid($fixnum.Int64 v) {
    $_setInt64(16, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasToUid() => $_has(16);

  @$pb.TagNumber(17)
  void clearToUid() => clearField(17);
}

class CreateSnapRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CreateSnapRsp',
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
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'snapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pushUrl',
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'localId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CreateSnapRsp._() : super();

  factory CreateSnapRsp({
    $core.int? code,
    $core.String? msg,
    $fixnum.Int64? snapId,
    $core.String? pushUrl,
    $fixnum.Int64? localId,
    $fixnum.Int64? chatboxId,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (snapId != null) {
      _result.snapId = snapId;
    }
    if (pushUrl != null) {
      _result.pushUrl = pushUrl;
    }
    if (localId != null) {
      _result.localId = localId;
    }
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    return _result;
  }

  factory CreateSnapRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CreateSnapRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CreateSnapRsp clone() => CreateSnapRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CreateSnapRsp copyWith(void Function(CreateSnapRsp) updates) =>
      super.copyWith((message) => updates(message as CreateSnapRsp))
          as CreateSnapRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSnapRsp create() => CreateSnapRsp._();

  CreateSnapRsp createEmptyInstance() => create();

  static $pb.PbList<CreateSnapRsp> createRepeated() =>
      $pb.PbList<CreateSnapRsp>();

  @$core.pragma('dart2js:noInline')
  static CreateSnapRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSnapRsp>(create);
  static CreateSnapRsp? _defaultInstance;

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
  $fixnum.Int64 get snapId => $_getI64(2);

  @$pb.TagNumber(3)
  set snapId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSnapId() => $_has(2);

  @$pb.TagNumber(3)
  void clearSnapId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pushUrl => $_getSZ(3);

  @$pb.TagNumber(4)
  set pushUrl($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPushUrl() => $_has(3);

  @$pb.TagNumber(4)
  void clearPushUrl() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get localId => $_getI64(4);

  @$pb.TagNumber(5)
  set localId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLocalId() => $_has(4);

  @$pb.TagNumber(5)
  void clearLocalId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get chatboxId => $_getI64(5);

  @$pb.TagNumber(6)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasChatboxId() => $_has(5);

  @$pb.TagNumber(6)
  void clearChatboxId() => clearField(6);
}

class UpdateSnapReadedStatusReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UpdateSnapReadedStatusReq',
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
              : 'snapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  UpdateSnapReadedStatusReq._() : super();

  factory UpdateSnapReadedStatusReq({$fixnum.Int64? snapId}) {
    final _result = create();
    if (snapId != null) {
      _result.snapId = snapId;
    }
    return _result;
  }

  factory UpdateSnapReadedStatusReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UpdateSnapReadedStatusReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UpdateSnapReadedStatusReq clone() =>
      UpdateSnapReadedStatusReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UpdateSnapReadedStatusReq copyWith(
    void Function(UpdateSnapReadedStatusReq) updates,
  ) =>
      super.copyWith((message) => updates(message as UpdateSnapReadedStatusReq))
          as UpdateSnapReadedStatusReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSnapReadedStatusReq create() => UpdateSnapReadedStatusReq._();

  UpdateSnapReadedStatusReq createEmptyInstance() => create();

  static $pb.PbList<UpdateSnapReadedStatusReq> createRepeated() =>
      $pb.PbList<UpdateSnapReadedStatusReq>();

  @$core.pragma('dart2js:noInline')
  static UpdateSnapReadedStatusReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSnapReadedStatusReq>(create);
  static UpdateSnapReadedStatusReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get snapId => $_getI64(0);

  @$pb.TagNumber(1)
  set snapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSnapId() => $_has(0);

  @$pb.TagNumber(1)
  void clearSnapId() => clearField(1);
}

class StartRecordSnapNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'StartRecordSnapNotify',
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
              : 'snapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  StartRecordSnapNotify._() : super();

  factory StartRecordSnapNotify({$fixnum.Int64? snapId}) {
    final _result = create();
    if (snapId != null) {
      _result.snapId = snapId;
    }
    return _result;
  }

  factory StartRecordSnapNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory StartRecordSnapNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  StartRecordSnapNotify clone() =>
      StartRecordSnapNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  StartRecordSnapNotify copyWith(
    void Function(StartRecordSnapNotify) updates,
  ) =>
      super.copyWith((message) => updates(message as StartRecordSnapNotify))
          as StartRecordSnapNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartRecordSnapNotify create() => StartRecordSnapNotify._();

  StartRecordSnapNotify createEmptyInstance() => create();

  static $pb.PbList<StartRecordSnapNotify> createRepeated() =>
      $pb.PbList<StartRecordSnapNotify>();

  @$core.pragma('dart2js:noInline')
  static StartRecordSnapNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartRecordSnapNotify>(create);
  static StartRecordSnapNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get snapId => $_getI64(0);

  @$pb.TagNumber(1)
  set snapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSnapId() => $_has(0);

  @$pb.TagNumber(1)
  void clearSnapId() => clearField(1);
}

class StopRecordSnapNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'StopRecordSnapNotify',
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
              : 'snapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  StopRecordSnapNotify._() : super();

  factory StopRecordSnapNotify({$fixnum.Int64? snapId}) {
    final _result = create();
    if (snapId != null) {
      _result.snapId = snapId;
    }
    return _result;
  }

  factory StopRecordSnapNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory StopRecordSnapNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  StopRecordSnapNotify clone() =>
      StopRecordSnapNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  StopRecordSnapNotify copyWith(void Function(StopRecordSnapNotify) updates) =>
      super.copyWith((message) => updates(message as StopRecordSnapNotify))
          as StopRecordSnapNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopRecordSnapNotify create() => StopRecordSnapNotify._();

  StopRecordSnapNotify createEmptyInstance() => create();

  static $pb.PbList<StopRecordSnapNotify> createRepeated() =>
      $pb.PbList<StopRecordSnapNotify>();

  @$core.pragma('dart2js:noInline')
  static StopRecordSnapNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StopRecordSnapNotify>(create);
  static StopRecordSnapNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get snapId => $_getI64(0);

  @$pb.TagNumber(1)
  set snapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSnapId() => $_has(0);

  @$pb.TagNumber(1)
  void clearSnapId() => clearField(1);
}

class StartPlaySnapNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'StartPlaySnapNotify',
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
              : 'snapId',
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
        ..hasRequiredFields = false;

  StartPlaySnapNotify._() : super();

  factory StartPlaySnapNotify({
    $fixnum.Int64? snapId,
    $fixnum.Int64? lastSnapKey,
    $fixnum.Int64? lastChatboxKey,
  }) {
    final _result = create();
    if (snapId != null) {
      _result.snapId = snapId;
    }
    if (lastSnapKey != null) {
      _result.lastSnapKey = lastSnapKey;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    return _result;
  }

  factory StartPlaySnapNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory StartPlaySnapNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  StartPlaySnapNotify clone() => StartPlaySnapNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  StartPlaySnapNotify copyWith(void Function(StartPlaySnapNotify) updates) =>
      super.copyWith((message) => updates(message as StartPlaySnapNotify))
          as StartPlaySnapNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartPlaySnapNotify create() => StartPlaySnapNotify._();

  StartPlaySnapNotify createEmptyInstance() => create();

  static $pb.PbList<StartPlaySnapNotify> createRepeated() =>
      $pb.PbList<StartPlaySnapNotify>();

  @$core.pragma('dart2js:noInline')
  static StartPlaySnapNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartPlaySnapNotify>(create);
  static StartPlaySnapNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get snapId => $_getI64(0);

  @$pb.TagNumber(1)
  set snapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSnapId() => $_has(0);

  @$pb.TagNumber(1)
  void clearSnapId() => clearField(1);

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
}

class StopPlaySnapNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'StopPlaySnapNotify',
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
              : 'snapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  StopPlaySnapNotify._() : super();

  factory StopPlaySnapNotify({$fixnum.Int64? snapId}) {
    final _result = create();
    if (snapId != null) {
      _result.snapId = snapId;
    }
    return _result;
  }

  factory StopPlaySnapNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory StopPlaySnapNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  StopPlaySnapNotify clone() => StopPlaySnapNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  StopPlaySnapNotify copyWith(void Function(StopPlaySnapNotify) updates) =>
      super.copyWith((message) => updates(message as StopPlaySnapNotify))
          as StopPlaySnapNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopPlaySnapNotify create() => StopPlaySnapNotify._();

  StopPlaySnapNotify createEmptyInstance() => create();

  static $pb.PbList<StopPlaySnapNotify> createRepeated() =>
      $pb.PbList<StopPlaySnapNotify>();

  @$core.pragma('dart2js:noInline')
  static StopPlaySnapNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StopPlaySnapNotify>(create);
  static StopPlaySnapNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get snapId => $_getI64(0);

  @$pb.TagNumber(1)
  set snapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSnapId() => $_has(0);

  @$pb.TagNumber(1)
  void clearSnapId() => clearField(1);
}

class DeleteSnapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'DeleteSnapReq',
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
              : 'snapId',
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
        ..aOM<$0.Any>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  DeleteSnapReq._() : super();

  factory DeleteSnapReq({
    $fixnum.Int64? snapId,
    $fixnum.Int64? lastSnapKey,
    $fixnum.Int64? lastChatboxKey,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (snapId != null) {
      _result.snapId = snapId;
    }
    if (lastSnapKey != null) {
      _result.lastSnapKey = lastSnapKey;
    }
    if (lastChatboxKey != null) {
      _result.lastChatboxKey = lastChatboxKey;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory DeleteSnapReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory DeleteSnapReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  DeleteSnapReq clone() => DeleteSnapReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  DeleteSnapReq copyWith(void Function(DeleteSnapReq) updates) =>
      super.copyWith((message) => updates(message as DeleteSnapReq))
          as DeleteSnapReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSnapReq create() => DeleteSnapReq._();

  DeleteSnapReq createEmptyInstance() => create();

  static $pb.PbList<DeleteSnapReq> createRepeated() =>
      $pb.PbList<DeleteSnapReq>();

  @$core.pragma('dart2js:noInline')
  static DeleteSnapReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSnapReq>(create);
  static DeleteSnapReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get snapId => $_getI64(0);

  @$pb.TagNumber(1)
  set snapId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSnapId() => $_has(0);

  @$pb.TagNumber(1)
  void clearSnapId() => clearField(1);

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
  $0.Any get extensions => $_getN(3);

  @$pb.TagNumber(4)
  set extensions($0.Any v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExtensions() => $_has(3);

  @$pb.TagNumber(4)
  void clearExtensions() => clearField(4);

  @$pb.TagNumber(4)
  $0.Any ensureExtensions() => $_ensure(3);
}

class GetMoreSnapsFromReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetMoreSnapsFromReq',
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
              : 'fromSnapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toSnapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'count',
          $pb.PbFieldType.O3,
        )
        ..aOM<$0.Any>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  GetMoreSnapsFromReq._() : super();

  factory GetMoreSnapsFromReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? fromSnapId,
    $fixnum.Int64? toSnapId,
    $core.int? count,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (fromSnapId != null) {
      _result.fromSnapId = fromSnapId;
    }
    if (toSnapId != null) {
      _result.toSnapId = toSnapId;
    }
    if (count != null) {
      _result.count = count;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory GetMoreSnapsFromReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetMoreSnapsFromReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetMoreSnapsFromReq clone() => GetMoreSnapsFromReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetMoreSnapsFromReq copyWith(void Function(GetMoreSnapsFromReq) updates) =>
      super.copyWith((message) => updates(message as GetMoreSnapsFromReq))
          as GetMoreSnapsFromReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMoreSnapsFromReq create() => GetMoreSnapsFromReq._();

  GetMoreSnapsFromReq createEmptyInstance() => create();

  static $pb.PbList<GetMoreSnapsFromReq> createRepeated() =>
      $pb.PbList<GetMoreSnapsFromReq>();

  @$core.pragma('dart2js:noInline')
  static GetMoreSnapsFromReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMoreSnapsFromReq>(create);
  static GetMoreSnapsFromReq? _defaultInstance;

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
  $fixnum.Int64 get fromSnapId => $_getI64(1);

  @$pb.TagNumber(2)
  set fromSnapId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromSnapId() => $_has(1);

  @$pb.TagNumber(2)
  void clearFromSnapId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get toSnapId => $_getI64(2);

  @$pb.TagNumber(3)
  set toSnapId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasToSnapId() => $_has(2);

  @$pb.TagNumber(3)
  void clearToSnapId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get count => $_getIZ(3);

  @$pb.TagNumber(4)
  set count($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);

  @$pb.TagNumber(4)
  void clearCount() => clearField(4);

  @$pb.TagNumber(5)
  $0.Any get extensions => $_getN(4);

  @$pb.TagNumber(5)
  set extensions($0.Any v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExtensions() => $_has(4);

  @$pb.TagNumber(5)
  void clearExtensions() => clearField(5);

  @$pb.TagNumber(5)
  $0.Any ensureExtensions() => $_ensure(4);
}

class GetMoreSnapsFromRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetMoreSnapsFromRsp',
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
        ..pc<$3.Snap>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'snaps',
          $pb.PbFieldType.PM,
          subBuilder: $3.Snap.create,
        )
        ..hasRequiredFields = false;

  GetMoreSnapsFromRsp._() : super();

  factory GetMoreSnapsFromRsp({
    $core.int? code,
    $core.String? msg,
    $core.Iterable<$3.Snap>? snaps,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (snaps != null) {
      _result.snaps.addAll(snaps);
    }
    return _result;
  }

  factory GetMoreSnapsFromRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetMoreSnapsFromRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetMoreSnapsFromRsp clone() => GetMoreSnapsFromRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetMoreSnapsFromRsp copyWith(void Function(GetMoreSnapsFromRsp) updates) =>
      super.copyWith((message) => updates(message as GetMoreSnapsFromRsp))
          as GetMoreSnapsFromRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMoreSnapsFromRsp create() => GetMoreSnapsFromRsp._();

  GetMoreSnapsFromRsp createEmptyInstance() => create();

  static $pb.PbList<GetMoreSnapsFromRsp> createRepeated() =>
      $pb.PbList<GetMoreSnapsFromRsp>();

  @$core.pragma('dart2js:noInline')
  static GetMoreSnapsFromRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMoreSnapsFromRsp>(create);
  static GetMoreSnapsFromRsp? _defaultInstance;

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
  $core.List<$3.Snap> get snaps => $_getList(2);
}

class CheckRedPacketReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CheckRedPacketReq',
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
              : 'packetId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$0.Any>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  CheckRedPacketReq._() : super();

  factory CheckRedPacketReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? packetId,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (packetId != null) {
      _result.packetId = packetId;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory CheckRedPacketReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CheckRedPacketReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CheckRedPacketReq clone() => CheckRedPacketReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CheckRedPacketReq copyWith(void Function(CheckRedPacketReq) updates) =>
      super.copyWith((message) => updates(message as CheckRedPacketReq))
          as CheckRedPacketReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckRedPacketReq create() => CheckRedPacketReq._();

  CheckRedPacketReq createEmptyInstance() => create();

  static $pb.PbList<CheckRedPacketReq> createRepeated() =>
      $pb.PbList<CheckRedPacketReq>();

  @$core.pragma('dart2js:noInline')
  static CheckRedPacketReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckRedPacketReq>(create);
  static CheckRedPacketReq? _defaultInstance;

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
  $fixnum.Int64 get packetId => $_getI64(1);

  @$pb.TagNumber(2)
  set packetId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPacketId() => $_has(1);

  @$pb.TagNumber(2)
  void clearPacketId() => clearField(2);

  @$pb.TagNumber(3)
  $0.Any get extensions => $_getN(2);

  @$pb.TagNumber(3)
  set extensions($0.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasExtensions() => $_has(2);

  @$pb.TagNumber(3)
  void clearExtensions() => clearField(3);

  @$pb.TagNumber(3)
  $0.Any ensureExtensions() => $_ensure(2);
}

class CheckRedPacketRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CheckRedPacketRsp',
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
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'packetId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  CheckRedPacketRsp._() : super();

  factory CheckRedPacketRsp({
    $core.int? code,
    $core.String? msg,
    $fixnum.Int64? packetId,
    $core.int? status,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (packetId != null) {
      _result.packetId = packetId;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }

  factory CheckRedPacketRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CheckRedPacketRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CheckRedPacketRsp clone() => CheckRedPacketRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CheckRedPacketRsp copyWith(void Function(CheckRedPacketRsp) updates) =>
      super.copyWith((message) => updates(message as CheckRedPacketRsp))
          as CheckRedPacketRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckRedPacketRsp create() => CheckRedPacketRsp._();

  CheckRedPacketRsp createEmptyInstance() => create();

  static $pb.PbList<CheckRedPacketRsp> createRepeated() =>
      $pb.PbList<CheckRedPacketRsp>();

  @$core.pragma('dart2js:noInline')
  static CheckRedPacketRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckRedPacketRsp>(create);
  static CheckRedPacketRsp? _defaultInstance;

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
  $fixnum.Int64 get packetId => $_getI64(2);

  @$pb.TagNumber(3)
  set packetId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPacketId() => $_has(2);

  @$pb.TagNumber(3)
  void clearPacketId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);

  @$pb.TagNumber(4)
  set status($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);

  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);
}

class ReceiveRedPacketReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ReceiveRedPacketReq',
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
              : 'packetId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$0.Any>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  ReceiveRedPacketReq._() : super();

  factory ReceiveRedPacketReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? packetId,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (packetId != null) {
      _result.packetId = packetId;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory ReceiveRedPacketReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ReceiveRedPacketReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ReceiveRedPacketReq clone() => ReceiveRedPacketReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ReceiveRedPacketReq copyWith(void Function(ReceiveRedPacketReq) updates) =>
      super.copyWith((message) => updates(message as ReceiveRedPacketReq))
          as ReceiveRedPacketReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReceiveRedPacketReq create() => ReceiveRedPacketReq._();

  ReceiveRedPacketReq createEmptyInstance() => create();

  static $pb.PbList<ReceiveRedPacketReq> createRepeated() =>
      $pb.PbList<ReceiveRedPacketReq>();

  @$core.pragma('dart2js:noInline')
  static ReceiveRedPacketReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReceiveRedPacketReq>(create);
  static ReceiveRedPacketReq? _defaultInstance;

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
  $fixnum.Int64 get packetId => $_getI64(1);

  @$pb.TagNumber(2)
  set packetId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPacketId() => $_has(1);

  @$pb.TagNumber(2)
  void clearPacketId() => clearField(2);

  @$pb.TagNumber(3)
  $0.Any get extensions => $_getN(2);

  @$pb.TagNumber(3)
  set extensions($0.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasExtensions() => $_has(2);

  @$pb.TagNumber(3)
  void clearExtensions() => clearField(3);

  @$pb.TagNumber(3)
  $0.Any ensureExtensions() => $_ensure(2);
}

class ReceiveRedPacketRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ReceiveRedPacketRsp',
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
        ..aOM<$3.RedPacketDetail>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'packetDetail',
          subBuilder: $3.RedPacketDetail.create,
        )
        ..hasRequiredFields = false;

  ReceiveRedPacketRsp._() : super();

  factory ReceiveRedPacketRsp({
    $core.int? code,
    $core.String? msg,
    $3.RedPacketDetail? packetDetail,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (packetDetail != null) {
      _result.packetDetail = packetDetail;
    }
    return _result;
  }

  factory ReceiveRedPacketRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ReceiveRedPacketRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ReceiveRedPacketRsp clone() => ReceiveRedPacketRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ReceiveRedPacketRsp copyWith(void Function(ReceiveRedPacketRsp) updates) =>
      super.copyWith((message) => updates(message as ReceiveRedPacketRsp))
          as ReceiveRedPacketRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReceiveRedPacketRsp create() => ReceiveRedPacketRsp._();

  ReceiveRedPacketRsp createEmptyInstance() => create();

  static $pb.PbList<ReceiveRedPacketRsp> createRepeated() =>
      $pb.PbList<ReceiveRedPacketRsp>();

  @$core.pragma('dart2js:noInline')
  static ReceiveRedPacketRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReceiveRedPacketRsp>(create);
  static ReceiveRedPacketRsp? _defaultInstance;

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
  $3.RedPacketDetail get packetDetail => $_getN(2);

  @$pb.TagNumber(3)
  set packetDetail($3.RedPacketDetail v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPacketDetail() => $_has(2);

  @$pb.TagNumber(3)
  void clearPacketDetail() => clearField(3);

  @$pb.TagNumber(3)
  $3.RedPacketDetail ensurePacketDetail() => $_ensure(2);
}

class GetRedPacketInfoReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetRedPacketInfoReq',
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
              : 'packetId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$0.Any>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  GetRedPacketInfoReq._() : super();

  factory GetRedPacketInfoReq({
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? packetId,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (packetId != null) {
      _result.packetId = packetId;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory GetRedPacketInfoReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetRedPacketInfoReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetRedPacketInfoReq clone() => GetRedPacketInfoReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetRedPacketInfoReq copyWith(void Function(GetRedPacketInfoReq) updates) =>
      super.copyWith((message) => updates(message as GetRedPacketInfoReq))
          as GetRedPacketInfoReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRedPacketInfoReq create() => GetRedPacketInfoReq._();

  GetRedPacketInfoReq createEmptyInstance() => create();

  static $pb.PbList<GetRedPacketInfoReq> createRepeated() =>
      $pb.PbList<GetRedPacketInfoReq>();

  @$core.pragma('dart2js:noInline')
  static GetRedPacketInfoReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRedPacketInfoReq>(create);
  static GetRedPacketInfoReq? _defaultInstance;

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
  $fixnum.Int64 get packetId => $_getI64(1);

  @$pb.TagNumber(2)
  set packetId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPacketId() => $_has(1);

  @$pb.TagNumber(2)
  void clearPacketId() => clearField(2);

  @$pb.TagNumber(3)
  $0.Any get extensions => $_getN(2);

  @$pb.TagNumber(3)
  set extensions($0.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasExtensions() => $_has(2);

  @$pb.TagNumber(3)
  void clearExtensions() => clearField(3);

  @$pb.TagNumber(3)
  $0.Any ensureExtensions() => $_ensure(2);
}

class GetRedPacketInfoRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetRedPacketInfoRsp',
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
        ..aOM<$3.RedPacket>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'redPacket',
          subBuilder: $3.RedPacket.create,
        )
        ..hasRequiredFields = false;

  GetRedPacketInfoRsp._() : super();

  factory GetRedPacketInfoRsp({
    $core.int? code,
    $core.String? msg,
    $3.RedPacket? redPacket,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (redPacket != null) {
      _result.redPacket = redPacket;
    }
    return _result;
  }

  factory GetRedPacketInfoRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetRedPacketInfoRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetRedPacketInfoRsp clone() => GetRedPacketInfoRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetRedPacketInfoRsp copyWith(void Function(GetRedPacketInfoRsp) updates) =>
      super.copyWith((message) => updates(message as GetRedPacketInfoRsp))
          as GetRedPacketInfoRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRedPacketInfoRsp create() => GetRedPacketInfoRsp._();

  GetRedPacketInfoRsp createEmptyInstance() => create();

  static $pb.PbList<GetRedPacketInfoRsp> createRepeated() =>
      $pb.PbList<GetRedPacketInfoRsp>();

  @$core.pragma('dart2js:noInline')
  static GetRedPacketInfoRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRedPacketInfoRsp>(create);
  static GetRedPacketInfoRsp? _defaultInstance;

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
  $3.RedPacket get redPacket => $_getN(2);

  @$pb.TagNumber(3)
  set redPacket($3.RedPacket v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRedPacket() => $_has(2);

  @$pb.TagNumber(3)
  void clearRedPacket() => clearField(3);

  @$pb.TagNumber(3)
  $3.RedPacket ensureRedPacket() => $_ensure(2);
}

class ReadSnapReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ReadSnapReq',
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
              : 'snapIds',
          $pb.PbFieldType.KU6,
        )
        ..hasRequiredFields = false;

  ReadSnapReq._() : super();

  factory ReadSnapReq({
    $fixnum.Int64? chatboxId,
    $core.Iterable<$fixnum.Int64>? snapIds,
  }) {
    final _result = create();
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (snapIds != null) {
      _result.snapIds.addAll(snapIds);
    }
    return _result;
  }

  factory ReadSnapReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ReadSnapReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ReadSnapReq clone() => ReadSnapReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ReadSnapReq copyWith(void Function(ReadSnapReq) updates) =>
      super.copyWith((message) => updates(message as ReadSnapReq))
          as ReadSnapReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadSnapReq create() => ReadSnapReq._();

  ReadSnapReq createEmptyInstance() => create();

  static $pb.PbList<ReadSnapReq> createRepeated() => $pb.PbList<ReadSnapReq>();

  @$core.pragma('dart2js:noInline')
  static ReadSnapReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadSnapReq>(create);
  static ReadSnapReq? _defaultInstance;

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
  $core.List<$fixnum.Int64> get snapIds => $_getList(1);
}
