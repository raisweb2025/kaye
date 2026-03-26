import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'kaye_goal.pbenum.dart';
import 'kaye_gray.pb.dart' as $1;
import 'object.pb.dart' as $2;

export 'kaye_goal.pbenum.dart';

class ChatCallReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'localId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'media',
          $pb.PbFieldType.OU3,
        )
        ..e<ChatCallReq_Opt>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'opt',
          $pb.PbFieldType.OE,
          defaultOrMaker: ChatCallReq_Opt.INVITE,
          valueOf: ChatCallReq_Opt.valueOf,
          enumValues: ChatCallReq_Opt.values,
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'subscriberId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sourceType',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sourceId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<ChatCallReq_Quality>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'quality',
          $pb.PbFieldType.OE,
          defaultOrMaker: ChatCallReq_Quality.UNKNOWN,
          valueOf: ChatCallReq_Quality.valueOf,
          enumValues: ChatCallReq_Quality.values,
        )
        ..a<$core.int>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'appStatus',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'faceDetect',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'speakDetect',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  ChatCallReq._() : super();

  factory ChatCallReq({
    $fixnum.Int64? id,
    $fixnum.Int64? localId,
    $fixnum.Int64? chatId,
    $core.int? media,
    ChatCallReq_Opt? opt,
    $fixnum.Int64? subscriberId,
    $core.int? sourceType,
    $fixnum.Int64? sourceId,
    ChatCallReq_Quality? quality,
    $core.int? appStatus,
    $core.int? faceDetect,
    $core.int? speakDetect,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (localId != null) {
      _result.localId = localId;
    }
    if (chatId != null) {
      _result.chatId = chatId;
    }
    if (media != null) {
      _result.media = media;
    }
    if (opt != null) {
      _result.opt = opt;
    }
    if (subscriberId != null) {
      _result.subscriberId = subscriberId;
    }
    if (sourceType != null) {
      _result.sourceType = sourceType;
    }
    if (sourceId != null) {
      _result.sourceId = sourceId;
    }
    if (quality != null) {
      _result.quality = quality;
    }
    if (appStatus != null) {
      _result.appStatus = appStatus;
    }
    if (faceDetect != null) {
      _result.faceDetect = faceDetect;
    }
    if (speakDetect != null) {
      _result.speakDetect = speakDetect;
    }
    return _result;
  }

  factory ChatCallReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallReq clone() => ChatCallReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallReq copyWith(void Function(ChatCallReq) updates) =>
      super.copyWith((message) => updates(message as ChatCallReq))
          as ChatCallReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallReq create() => ChatCallReq._();

  ChatCallReq createEmptyInstance() => create();

  static $pb.PbList<ChatCallReq> createRepeated() => $pb.PbList<ChatCallReq>();

  @$core.pragma('dart2js:noInline')
  static ChatCallReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallReq>(create);
  static ChatCallReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);

  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);

  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get localId => $_getI64(1);

  @$pb.TagNumber(2)
  set localId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLocalId() => $_has(1);

  @$pb.TagNumber(2)
  void clearLocalId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get chatId => $_getI64(2);

  @$pb.TagNumber(3)
  set chatId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasChatId() => $_has(2);

  @$pb.TagNumber(3)
  void clearChatId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get media => $_getIZ(3);

  @$pb.TagNumber(4)
  set media($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMedia() => $_has(3);

  @$pb.TagNumber(4)
  void clearMedia() => clearField(4);

  @$pb.TagNumber(5)
  ChatCallReq_Opt get opt => $_getN(4);

  @$pb.TagNumber(5)
  set opt(ChatCallReq_Opt v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOpt() => $_has(4);

  @$pb.TagNumber(5)
  void clearOpt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get subscriberId => $_getI64(5);

  @$pb.TagNumber(6)
  set subscriberId($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSubscriberId() => $_has(5);

  @$pb.TagNumber(6)
  void clearSubscriberId() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get sourceType => $_getIZ(6);

  @$pb.TagNumber(7)
  set sourceType($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSourceType() => $_has(6);

  @$pb.TagNumber(7)
  void clearSourceType() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get sourceId => $_getI64(7);

  @$pb.TagNumber(8)
  set sourceId($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSourceId() => $_has(7);

  @$pb.TagNumber(8)
  void clearSourceId() => clearField(8);

  @$pb.TagNumber(9)
  ChatCallReq_Quality get quality => $_getN(8);

  @$pb.TagNumber(9)
  set quality(ChatCallReq_Quality v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasQuality() => $_has(8);

  @$pb.TagNumber(9)
  void clearQuality() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get appStatus => $_getIZ(9);

  @$pb.TagNumber(10)
  set appStatus($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasAppStatus() => $_has(9);

  @$pb.TagNumber(10)
  void clearAppStatus() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get faceDetect => $_getIZ(10);

  @$pb.TagNumber(11)
  set faceDetect($core.int v) {
    $_setUnsignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasFaceDetect() => $_has(10);

  @$pb.TagNumber(11)
  void clearFaceDetect() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get speakDetect => $_getIZ(11);

  @$pb.TagNumber(12)
  set speakDetect($core.int v) {
    $_setUnsignedInt32(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasSpeakDetect() => $_has(11);

  @$pb.TagNumber(12)
  void clearSpeakDetect() => clearField(12);
}

class ChatCallRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
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
        ..aOM<$1.ChatCall>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'call',
          subBuilder: $1.ChatCall.create,
        )
        ..hasRequiredFields = false;

  ChatCallRsp._() : super();

  factory ChatCallRsp({$core.int? code, $core.String? msg, $1.ChatCall? call}) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (call != null) {
      _result.call = call;
    }
    return _result;
  }

  factory ChatCallRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallRsp clone() => ChatCallRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallRsp copyWith(void Function(ChatCallRsp) updates) =>
      super.copyWith((message) => updates(message as ChatCallRsp))
          as ChatCallRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallRsp create() => ChatCallRsp._();

  ChatCallRsp createEmptyInstance() => create();

  static $pb.PbList<ChatCallRsp> createRepeated() => $pb.PbList<ChatCallRsp>();

  @$core.pragma('dart2js:noInline')
  static ChatCallRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallRsp>(create);
  static ChatCallRsp? _defaultInstance;

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
  $1.ChatCall get call => $_getN(2);

  @$pb.TagNumber(3)
  set call($1.ChatCall v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCall() => $_has(2);

  @$pb.TagNumber(3)
  void clearCall() => clearField(3);

  @$pb.TagNumber(3)
  $1.ChatCall ensureCall() => $_ensure(2);
}

class ChatCallPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..aOM<$1.ChatCall>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'call',
          subBuilder: $1.ChatCall.create,
        )
        ..aOM<$2.User>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'user',
          subBuilder: $2.User.create,
        )
        ..aOM<$2.Country>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'userCountry',
          subBuilder: $2.Country.create,
        )
        ..p<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'popSecs',
          $pb.PbFieldType.KU3,
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'tagIds',
        )
        ..aOS(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'languages',
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'height',
          $pb.PbFieldType.O3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'weight',
          $pb.PbFieldType.O3,
        )
        ..a<$core.int>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'level',
          $pb.PbFieldType.O3,
        )
        ..hasRequiredFields = false;

  ChatCallPsh._() : super();

  factory ChatCallPsh({
    $1.ChatCall? call,
    $2.User? user,
    $2.Country? userCountry,
    $core.Iterable<$core.int>? popSecs,
    $core.String? tagIds,
    $core.String? languages,
    $core.int? height,
    $core.int? weight,
    $core.int? level,
  }) {
    final _result = create();
    if (call != null) {
      _result.call = call;
    }
    if (user != null) {
      _result.user = user;
    }
    if (userCountry != null) {
      _result.userCountry = userCountry;
    }
    if (popSecs != null) {
      _result.popSecs.addAll(popSecs);
    }
    if (tagIds != null) {
      _result.tagIds = tagIds;
    }
    if (languages != null) {
      _result.languages = languages;
    }
    if (height != null) {
      _result.height = height;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    if (level != null) {
      _result.level = level;
    }
    return _result;
  }

  factory ChatCallPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallPsh clone() => ChatCallPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallPsh copyWith(void Function(ChatCallPsh) updates) =>
      super.copyWith((message) => updates(message as ChatCallPsh))
          as ChatCallPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallPsh create() => ChatCallPsh._();

  ChatCallPsh createEmptyInstance() => create();

  static $pb.PbList<ChatCallPsh> createRepeated() => $pb.PbList<ChatCallPsh>();

  @$core.pragma('dart2js:noInline')
  static ChatCallPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallPsh>(create);
  static ChatCallPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ChatCall get call => $_getN(0);

  @$pb.TagNumber(1)
  set call($1.ChatCall v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCall() => $_has(0);

  @$pb.TagNumber(1)
  void clearCall() => clearField(1);

  @$pb.TagNumber(1)
  $1.ChatCall ensureCall() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.User get user => $_getN(1);

  @$pb.TagNumber(2)
  set user($2.User v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);

  @$pb.TagNumber(2)
  void clearUser() => clearField(2);

  @$pb.TagNumber(2)
  $2.User ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Country get userCountry => $_getN(2);

  @$pb.TagNumber(3)
  set userCountry($2.Country v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUserCountry() => $_has(2);

  @$pb.TagNumber(3)
  void clearUserCountry() => clearField(3);

  @$pb.TagNumber(3)
  $2.Country ensureUserCountry() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get popSecs => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get tagIds => $_getSZ(4);

  @$pb.TagNumber(5)
  set tagIds($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTagIds() => $_has(4);

  @$pb.TagNumber(5)
  void clearTagIds() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get languages => $_getSZ(5);

  @$pb.TagNumber(6)
  set languages($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLanguages() => $_has(5);

  @$pb.TagNumber(6)
  void clearLanguages() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get height => $_getIZ(6);

  @$pb.TagNumber(7)
  set height($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);

  @$pb.TagNumber(7)
  void clearHeight() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get weight => $_getIZ(7);

  @$pb.TagNumber(8)
  set weight($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasWeight() => $_has(7);

  @$pb.TagNumber(8)
  void clearWeight() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get level => $_getIZ(8);

  @$pb.TagNumber(9)
  set level($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasLevel() => $_has(8);

  @$pb.TagNumber(9)
  void clearLevel() => clearField(9);
}

class ChatCallMessageSendReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallMessageSendReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'callId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'text',
        )
        ..hasRequiredFields = false;

  ChatCallMessageSendReq._() : super();

  factory ChatCallMessageSendReq({$fixnum.Int64? callId, $core.String? text}) {
    final _result = create();
    if (callId != null) {
      _result.callId = callId;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }

  factory ChatCallMessageSendReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallMessageSendReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallMessageSendReq clone() =>
      ChatCallMessageSendReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallMessageSendReq copyWith(
    void Function(ChatCallMessageSendReq) updates,
  ) =>
      super.copyWith((message) => updates(message as ChatCallMessageSendReq))
          as ChatCallMessageSendReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallMessageSendReq create() => ChatCallMessageSendReq._();

  ChatCallMessageSendReq createEmptyInstance() => create();

  static $pb.PbList<ChatCallMessageSendReq> createRepeated() =>
      $pb.PbList<ChatCallMessageSendReq>();

  @$core.pragma('dart2js:noInline')
  static ChatCallMessageSendReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallMessageSendReq>(create);
  static ChatCallMessageSendReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);

  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);

  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);

  @$pb.TagNumber(2)
  set text($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);

  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class ChatCallMessageSendPsh extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallMessageSendPsh',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'callId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'text',
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'time',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  ChatCallMessageSendPsh._() : super();

  factory ChatCallMessageSendPsh({
    $fixnum.Int64? callId,
    $core.String? text,
    $fixnum.Int64? time,
  }) {
    final _result = create();
    if (callId != null) {
      _result.callId = callId;
    }
    if (text != null) {
      _result.text = text;
    }
    if (time != null) {
      _result.time = time;
    }
    return _result;
  }

  factory ChatCallMessageSendPsh.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallMessageSendPsh.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallMessageSendPsh clone() =>
      ChatCallMessageSendPsh()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallMessageSendPsh copyWith(
    void Function(ChatCallMessageSendPsh) updates,
  ) =>
      super.copyWith((message) => updates(message as ChatCallMessageSendPsh))
          as ChatCallMessageSendPsh;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallMessageSendPsh create() => ChatCallMessageSendPsh._();

  ChatCallMessageSendPsh createEmptyInstance() => create();

  static $pb.PbList<ChatCallMessageSendPsh> createRepeated() =>
      $pb.PbList<ChatCallMessageSendPsh>();

  @$core.pragma('dart2js:noInline')
  static ChatCallMessageSendPsh getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallMessageSendPsh>(create);
  static ChatCallMessageSendPsh? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);

  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);

  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);

  @$pb.TagNumber(2)
  set text($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);

  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);

  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);

  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

class BegGiftReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'BegGiftReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'giftId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sceneType',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sceneId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  BegGiftReq._() : super();

  factory BegGiftReq({
    $fixnum.Int64? giftId,
    $fixnum.Int64? toUid,
    $core.int? sceneType,
    $fixnum.Int64? sceneId,
  }) {
    final _result = create();
    if (giftId != null) {
      _result.giftId = giftId;
    }
    if (toUid != null) {
      _result.toUid = toUid;
    }
    if (sceneType != null) {
      _result.sceneType = sceneType;
    }
    if (sceneId != null) {
      _result.sceneId = sceneId;
    }
    return _result;
  }

  factory BegGiftReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory BegGiftReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  BegGiftReq clone() => BegGiftReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  BegGiftReq copyWith(void Function(BegGiftReq) updates) =>
      super.copyWith((message) => updates(message as BegGiftReq)) as BegGiftReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BegGiftReq create() => BegGiftReq._();

  BegGiftReq createEmptyInstance() => create();

  static $pb.PbList<BegGiftReq> createRepeated() => $pb.PbList<BegGiftReq>();

  @$core.pragma('dart2js:noInline')
  static BegGiftReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BegGiftReq>(create);
  static BegGiftReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get giftId => $_getI64(0);

  @$pb.TagNumber(1)
  set giftId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGiftId() => $_has(0);

  @$pb.TagNumber(1)
  void clearGiftId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get toUid => $_getI64(1);

  @$pb.TagNumber(2)
  set toUid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToUid() => $_has(1);

  @$pb.TagNumber(2)
  void clearToUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sceneType => $_getIZ(2);

  @$pb.TagNumber(3)
  set sceneType($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSceneType() => $_has(2);

  @$pb.TagNumber(3)
  void clearSceneType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sceneId => $_getI64(3);

  @$pb.TagNumber(4)
  set sceneId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSceneId() => $_has(3);

  @$pb.TagNumber(4)
  void clearSceneId() => clearField(4);
}

class BegGiftPSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'BegGiftPSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..aOM<$1.Gift>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'gift',
          subBuilder: $1.Gift.create,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'fromUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sceneType',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sceneId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'begId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  BegGiftPSH._() : super();

  factory BegGiftPSH({
    $1.Gift? gift,
    $fixnum.Int64? fromUid,
    $core.int? sceneType,
    $fixnum.Int64? sceneId,
    $fixnum.Int64? begId,
  }) {
    final _result = create();
    if (gift != null) {
      _result.gift = gift;
    }
    if (fromUid != null) {
      _result.fromUid = fromUid;
    }
    if (sceneType != null) {
      _result.sceneType = sceneType;
    }
    if (sceneId != null) {
      _result.sceneId = sceneId;
    }
    if (begId != null) {
      _result.begId = begId;
    }
    return _result;
  }

  factory BegGiftPSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory BegGiftPSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  BegGiftPSH clone() => BegGiftPSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  BegGiftPSH copyWith(void Function(BegGiftPSH) updates) =>
      super.copyWith((message) => updates(message as BegGiftPSH)) as BegGiftPSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BegGiftPSH create() => BegGiftPSH._();

  BegGiftPSH createEmptyInstance() => create();

  static $pb.PbList<BegGiftPSH> createRepeated() => $pb.PbList<BegGiftPSH>();

  @$core.pragma('dart2js:noInline')
  static BegGiftPSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BegGiftPSH>(create);
  static BegGiftPSH? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Gift get gift => $_getN(0);

  @$pb.TagNumber(1)
  set gift($1.Gift v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGift() => $_has(0);

  @$pb.TagNumber(1)
  void clearGift() => clearField(1);

  @$pb.TagNumber(1)
  $1.Gift ensureGift() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fromUid => $_getI64(1);

  @$pb.TagNumber(2)
  set fromUid($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromUid() => $_has(1);

  @$pb.TagNumber(2)
  void clearFromUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sceneType => $_getIZ(2);

  @$pb.TagNumber(3)
  set sceneType($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSceneType() => $_has(2);

  @$pb.TagNumber(3)
  void clearSceneType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sceneId => $_getI64(3);

  @$pb.TagNumber(4)
  set sceneId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSceneId() => $_has(3);

  @$pb.TagNumber(4)
  void clearSceneId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get begId => $_getI64(4);

  @$pb.TagNumber(5)
  set begId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBegId() => $_has(4);

  @$pb.TagNumber(5)
  void clearBegId() => clearField(5);
}

class SendChatCallGiftReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SendChatCallGiftReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'callId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'giftId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'quantity',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'begId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  SendChatCallGiftReq._() : super();

  factory SendChatCallGiftReq({
    $fixnum.Int64? callId,
    $fixnum.Int64? giftId,
    $core.int? quantity,
    $fixnum.Int64? toUid,
    $fixnum.Int64? begId,
  }) {
    final _result = create();
    if (callId != null) {
      _result.callId = callId;
    }
    if (giftId != null) {
      _result.giftId = giftId;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (toUid != null) {
      _result.toUid = toUid;
    }
    if (begId != null) {
      _result.begId = begId;
    }
    return _result;
  }

  factory SendChatCallGiftReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SendChatCallGiftReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SendChatCallGiftReq clone() => SendChatCallGiftReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SendChatCallGiftReq copyWith(void Function(SendChatCallGiftReq) updates) =>
      super.copyWith((message) => updates(message as SendChatCallGiftReq))
          as SendChatCallGiftReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendChatCallGiftReq create() => SendChatCallGiftReq._();

  SendChatCallGiftReq createEmptyInstance() => create();

  static $pb.PbList<SendChatCallGiftReq> createRepeated() =>
      $pb.PbList<SendChatCallGiftReq>();

  @$core.pragma('dart2js:noInline')
  static SendChatCallGiftReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SendChatCallGiftReq>(create);
  static SendChatCallGiftReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);

  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);

  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get giftId => $_getI64(1);

  @$pb.TagNumber(2)
  set giftId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGiftId() => $_has(1);

  @$pb.TagNumber(2)
  void clearGiftId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get quantity => $_getIZ(2);

  @$pb.TagNumber(3)
  set quantity($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);

  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get toUid => $_getI64(3);

  @$pb.TagNumber(4)
  set toUid($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasToUid() => $_has(3);

  @$pb.TagNumber(4)
  void clearToUid() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get begId => $_getI64(4);

  @$pb.TagNumber(5)
  set begId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBegId() => $_has(4);

  @$pb.TagNumber(5)
  void clearBegId() => clearField(5);
}

class ChatCallGiftPSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallGiftPSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'callId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$1.Gift>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'gift',
          subBuilder: $1.Gift.create,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'quantity',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'fromUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'createTime',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  ChatCallGiftPSH._() : super();

  factory ChatCallGiftPSH({
    $fixnum.Int64? callId,
    $1.Gift? gift,
    $core.int? quantity,
    $fixnum.Int64? toUid,
    $fixnum.Int64? fromUid,
    $fixnum.Int64? createTime,
  }) {
    final _result = create();
    if (callId != null) {
      _result.callId = callId;
    }
    if (gift != null) {
      _result.gift = gift;
    }
    if (quantity != null) {
      _result.quantity = quantity;
    }
    if (toUid != null) {
      _result.toUid = toUid;
    }
    if (fromUid != null) {
      _result.fromUid = fromUid;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    return _result;
  }

  factory ChatCallGiftPSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallGiftPSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallGiftPSH clone() => ChatCallGiftPSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallGiftPSH copyWith(void Function(ChatCallGiftPSH) updates) =>
      super.copyWith((message) => updates(message as ChatCallGiftPSH))
          as ChatCallGiftPSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallGiftPSH create() => ChatCallGiftPSH._();

  ChatCallGiftPSH createEmptyInstance() => create();

  static $pb.PbList<ChatCallGiftPSH> createRepeated() =>
      $pb.PbList<ChatCallGiftPSH>();

  @$core.pragma('dart2js:noInline')
  static ChatCallGiftPSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallGiftPSH>(create);
  static ChatCallGiftPSH? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);

  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);

  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $1.Gift get gift => $_getN(1);

  @$pb.TagNumber(2)
  set gift($1.Gift v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasGift() => $_has(1);

  @$pb.TagNumber(2)
  void clearGift() => clearField(2);

  @$pb.TagNumber(2)
  $1.Gift ensureGift() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get quantity => $_getIZ(2);

  @$pb.TagNumber(3)
  set quantity($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);

  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get toUid => $_getI64(3);

  @$pb.TagNumber(4)
  set toUid($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasToUid() => $_has(3);

  @$pb.TagNumber(4)
  void clearToUid() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get fromUid => $_getI64(4);

  @$pb.TagNumber(5)
  set fromUid($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFromUid() => $_has(4);

  @$pb.TagNumber(5)
  void clearFromUid() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createTime => $_getI64(5);

  @$pb.TagNumber(6)
  set createTime($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCreateTime() => $_has(5);

  @$pb.TagNumber(6)
  void clearCreateTime() => clearField(6);
}

class RateChatCallReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'RateChatCallReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'callId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'snapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'rating',
          $pb.PbFieldType.OU3,
        )
        ..p<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'tagIds',
          $pb.PbFieldType.KU3,
        )
        ..hasRequiredFields = false;

  RateChatCallReq._() : super();

  factory RateChatCallReq({
    $fixnum.Int64? callId,
    $fixnum.Int64? snapId,
    $core.int? rating,
    $core.Iterable<$core.int>? tagIds,
  }) {
    final _result = create();
    if (callId != null) {
      _result.callId = callId;
    }
    if (snapId != null) {
      _result.snapId = snapId;
    }
    if (rating != null) {
      _result.rating = rating;
    }
    if (tagIds != null) {
      _result.tagIds.addAll(tagIds);
    }
    return _result;
  }

  factory RateChatCallReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RateChatCallReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RateChatCallReq clone() => RateChatCallReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RateChatCallReq copyWith(void Function(RateChatCallReq) updates) =>
      super.copyWith((message) => updates(message as RateChatCallReq))
          as RateChatCallReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RateChatCallReq create() => RateChatCallReq._();

  RateChatCallReq createEmptyInstance() => create();

  static $pb.PbList<RateChatCallReq> createRepeated() =>
      $pb.PbList<RateChatCallReq>();

  @$core.pragma('dart2js:noInline')
  static RateChatCallReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RateChatCallReq>(create);
  static RateChatCallReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get callId => $_getI64(0);

  @$pb.TagNumber(1)
  set callId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCallId() => $_has(0);

  @$pb.TagNumber(1)
  void clearCallId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get snapId => $_getI64(1);

  @$pb.TagNumber(2)
  set snapId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSnapId() => $_has(1);

  @$pb.TagNumber(2)
  void clearSnapId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rating => $_getIZ(2);

  @$pb.TagNumber(3)
  set rating($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRating() => $_has(2);

  @$pb.TagNumber(3)
  void clearRating() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get tagIds => $_getList(3);
}

class CheckCallReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CheckCallReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CheckCallReq._() : super();

  factory CheckCallReq({$fixnum.Int64? toUid}) {
    final _result = create();
    if (toUid != null) {
      _result.toUid = toUid;
    }
    return _result;
  }

  factory CheckCallReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CheckCallReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CheckCallReq clone() => CheckCallReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CheckCallReq copyWith(void Function(CheckCallReq) updates) =>
      super.copyWith((message) => updates(message as CheckCallReq))
          as CheckCallReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckCallReq create() => CheckCallReq._();

  CheckCallReq createEmptyInstance() => create();

  static $pb.PbList<CheckCallReq> createRepeated() =>
      $pb.PbList<CheckCallReq>();

  @$core.pragma('dart2js:noInline')
  static CheckCallReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckCallReq>(create);
  static CheckCallReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get toUid => $_getI64(0);

  @$pb.TagNumber(1)
  set toUid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasToUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearToUid() => clearField(1);
}

class CheckCallRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CheckCallRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
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
              : 'balance',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatPrice',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'firstPay',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'noDisturb',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'hasExpCard',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'onlineStatus',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'actionType',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toastType',
          $pb.PbFieldType.OU3,
        )
        ..aOM<$2.User>(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'user',
          subBuilder: $2.User.create,
        )
        ..aOM<$2.Country>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'userCountry',
          subBuilder: $2.Country.create,
        )
        ..hasRequiredFields = false;

  CheckCallRsp._() : super();

  factory CheckCallRsp({
    $core.int? code,
    $core.String? msg,
    $fixnum.Int64? balance,
    $fixnum.Int64? chatPrice,
    $core.int? firstPay,
    $core.int? noDisturb,
    $core.int? hasExpCard,
    $core.int? onlineStatus,
    $core.int? actionType,
    $core.int? toastType,
    $2.User? user,
    $2.Country? userCountry,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (balance != null) {
      _result.balance = balance;
    }
    if (chatPrice != null) {
      _result.chatPrice = chatPrice;
    }
    if (firstPay != null) {
      _result.firstPay = firstPay;
    }
    if (noDisturb != null) {
      _result.noDisturb = noDisturb;
    }
    if (hasExpCard != null) {
      _result.hasExpCard = hasExpCard;
    }
    if (onlineStatus != null) {
      _result.onlineStatus = onlineStatus;
    }
    if (actionType != null) {
      _result.actionType = actionType;
    }
    if (toastType != null) {
      _result.toastType = toastType;
    }
    if (user != null) {
      _result.user = user;
    }
    if (userCountry != null) {
      _result.userCountry = userCountry;
    }
    return _result;
  }

  factory CheckCallRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CheckCallRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CheckCallRsp clone() => CheckCallRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CheckCallRsp copyWith(void Function(CheckCallRsp) updates) =>
      super.copyWith((message) => updates(message as CheckCallRsp))
          as CheckCallRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckCallRsp create() => CheckCallRsp._();

  CheckCallRsp createEmptyInstance() => create();

  static $pb.PbList<CheckCallRsp> createRepeated() =>
      $pb.PbList<CheckCallRsp>();

  @$core.pragma('dart2js:noInline')
  static CheckCallRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckCallRsp>(create);
  static CheckCallRsp? _defaultInstance;

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
  $fixnum.Int64 get balance => $_getI64(2);

  @$pb.TagNumber(3)
  set balance($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBalance() => $_has(2);

  @$pb.TagNumber(3)
  void clearBalance() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get chatPrice => $_getI64(3);

  @$pb.TagNumber(4)
  set chatPrice($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasChatPrice() => $_has(3);

  @$pb.TagNumber(4)
  void clearChatPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get firstPay => $_getIZ(4);

  @$pb.TagNumber(5)
  set firstPay($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFirstPay() => $_has(4);

  @$pb.TagNumber(5)
  void clearFirstPay() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get noDisturb => $_getIZ(5);

  @$pb.TagNumber(6)
  set noDisturb($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNoDisturb() => $_has(5);

  @$pb.TagNumber(6)
  void clearNoDisturb() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get hasExpCard => $_getIZ(6);

  @$pb.TagNumber(7)
  set hasExpCard($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasHasExpCard() => $_has(6);

  @$pb.TagNumber(7)
  void clearHasExpCard() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get onlineStatus => $_getIZ(7);

  @$pb.TagNumber(8)
  set onlineStatus($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasOnlineStatus() => $_has(7);

  @$pb.TagNumber(8)
  void clearOnlineStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get actionType => $_getIZ(8);

  @$pb.TagNumber(9)
  set actionType($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasActionType() => $_has(8);

  @$pb.TagNumber(9)
  void clearActionType() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get toastType => $_getIZ(9);

  @$pb.TagNumber(10)
  set toastType($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasToastType() => $_has(9);

  @$pb.TagNumber(10)
  void clearToastType() => clearField(10);

  @$pb.TagNumber(11)
  $2.User get user => $_getN(10);

  @$pb.TagNumber(11)
  set user($2.User v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasUser() => $_has(10);

  @$pb.TagNumber(11)
  void clearUser() => clearField(11);

  @$pb.TagNumber(11)
  $2.User ensureUser() => $_ensure(10);

  @$pb.TagNumber(12)
  $2.Country get userCountry => $_getN(11);

  @$pb.TagNumber(12)
  set userCountry($2.Country v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasUserCountry() => $_has(11);

  @$pb.TagNumber(12)
  void clearUserCountry() => clearField(12);

  @$pb.TagNumber(12)
  $2.Country ensureUserCountry() => $_ensure(11);
}

class ChatCallMatchReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallMatchReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'gender',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'region',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchType',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  ChatCallMatchReq._() : super();

  factory ChatCallMatchReq({
    $core.int? gender,
    $core.int? type,
    $core.String? region,
    $core.int? matchType,
  }) {
    final _result = create();
    if (gender != null) {
      _result.gender = gender;
    }
    if (type != null) {
      _result.type = type;
    }
    if (region != null) {
      _result.region = region;
    }
    if (matchType != null) {
      _result.matchType = matchType;
    }
    return _result;
  }

  factory ChatCallMatchReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallMatchReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallMatchReq clone() => ChatCallMatchReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallMatchReq copyWith(void Function(ChatCallMatchReq) updates) =>
      super.copyWith((message) => updates(message as ChatCallMatchReq))
          as ChatCallMatchReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallMatchReq create() => ChatCallMatchReq._();

  ChatCallMatchReq createEmptyInstance() => create();

  static $pb.PbList<ChatCallMatchReq> createRepeated() =>
      $pb.PbList<ChatCallMatchReq>();

  @$core.pragma('dart2js:noInline')
  static ChatCallMatchReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallMatchReq>(create);
  static ChatCallMatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gender => $_getIZ(0);

  @$pb.TagNumber(1)
  set gender($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasGender() => $_has(0);

  @$pb.TagNumber(1)
  void clearGender() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);

  @$pb.TagNumber(2)
  set type($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);

  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get region => $_getSZ(2);

  @$pb.TagNumber(3)
  set region($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRegion() => $_has(2);

  @$pb.TagNumber(3)
  void clearRegion() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get matchType => $_getIZ(3);

  @$pb.TagNumber(4)
  set matchType($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMatchType() => $_has(3);

  @$pb.TagNumber(4)
  void clearMatchType() => clearField(4);
}

class ChatCallMatchRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallMatchRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
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
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'waitCount',
          $pb.PbFieldType.OU3,
        )
        ..pPS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'randomAvatars',
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchType',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'remainCount',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'limitCount',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  ChatCallMatchRsp._() : super();

  factory ChatCallMatchRsp({
    $core.int? code,
    $core.String? msg,
    $core.int? waitCount,
    $core.Iterable<$core.String>? randomAvatars,
    $core.int? matchType,
    $core.int? remainCount,
    $core.int? limitCount,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (waitCount != null) {
      _result.waitCount = waitCount;
    }
    if (randomAvatars != null) {
      _result.randomAvatars.addAll(randomAvatars);
    }
    if (matchType != null) {
      _result.matchType = matchType;
    }
    if (remainCount != null) {
      _result.remainCount = remainCount;
    }
    if (limitCount != null) {
      _result.limitCount = limitCount;
    }
    return _result;
  }

  factory ChatCallMatchRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallMatchRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallMatchRsp clone() => ChatCallMatchRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallMatchRsp copyWith(void Function(ChatCallMatchRsp) updates) =>
      super.copyWith((message) => updates(message as ChatCallMatchRsp))
          as ChatCallMatchRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallMatchRsp create() => ChatCallMatchRsp._();

  ChatCallMatchRsp createEmptyInstance() => create();

  static $pb.PbList<ChatCallMatchRsp> createRepeated() =>
      $pb.PbList<ChatCallMatchRsp>();

  @$core.pragma('dart2js:noInline')
  static ChatCallMatchRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallMatchRsp>(create);
  static ChatCallMatchRsp? _defaultInstance;

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
  $core.int get waitCount => $_getIZ(2);

  @$pb.TagNumber(3)
  set waitCount($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWaitCount() => $_has(2);

  @$pb.TagNumber(3)
  void clearWaitCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get randomAvatars => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get matchType => $_getIZ(4);

  @$pb.TagNumber(5)
  set matchType($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMatchType() => $_has(4);

  @$pb.TagNumber(5)
  void clearMatchType() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get remainCount => $_getIZ(5);

  @$pb.TagNumber(6)
  set remainCount($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasRemainCount() => $_has(5);

  @$pb.TagNumber(6)
  void clearRemainCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get limitCount => $_getIZ(6);

  @$pb.TagNumber(7)
  set limitCount($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasLimitCount() => $_has(6);

  @$pb.TagNumber(7)
  void clearLimitCount() => clearField(7);
}

class CancelChatCallMatchReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CancelChatCallMatchReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchType',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  CancelChatCallMatchReq._() : super();

  factory CancelChatCallMatchReq({
    $fixnum.Int64? matchId,
    $core.int? matchType,
  }) {
    final _result = create();
    if (matchId != null) {
      _result.matchId = matchId;
    }
    if (matchType != null) {
      _result.matchType = matchType;
    }
    return _result;
  }

  factory CancelChatCallMatchReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CancelChatCallMatchReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CancelChatCallMatchReq clone() =>
      CancelChatCallMatchReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CancelChatCallMatchReq copyWith(
    void Function(CancelChatCallMatchReq) updates,
  ) =>
      super.copyWith((message) => updates(message as CancelChatCallMatchReq))
          as CancelChatCallMatchReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelChatCallMatchReq create() => CancelChatCallMatchReq._();

  CancelChatCallMatchReq createEmptyInstance() => create();

  static $pb.PbList<CancelChatCallMatchReq> createRepeated() =>
      $pb.PbList<CancelChatCallMatchReq>();

  @$core.pragma('dart2js:noInline')
  static CancelChatCallMatchReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CancelChatCallMatchReq>(create);
  static CancelChatCallMatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get matchId => $_getI64(0);

  @$pb.TagNumber(1)
  set matchId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMatchId() => $_has(0);

  @$pb.TagNumber(1)
  void clearMatchId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get matchType => $_getIZ(1);

  @$pb.TagNumber(2)
  set matchType($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMatchType() => $_has(1);

  @$pb.TagNumber(2)
  void clearMatchType() => clearField(2);
}

class ConfirmChatCallMatchReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ConfirmChatCallMatchReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  ConfirmChatCallMatchReq._() : super();

  factory ConfirmChatCallMatchReq({$fixnum.Int64? matchId}) {
    final _result = create();
    if (matchId != null) {
      _result.matchId = matchId;
    }
    return _result;
  }

  factory ConfirmChatCallMatchReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ConfirmChatCallMatchReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ConfirmChatCallMatchReq clone() =>
      ConfirmChatCallMatchReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ConfirmChatCallMatchReq copyWith(
    void Function(ConfirmChatCallMatchReq) updates,
  ) =>
      super.copyWith((message) => updates(message as ConfirmChatCallMatchReq))
          as ConfirmChatCallMatchReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfirmChatCallMatchReq create() => ConfirmChatCallMatchReq._();

  ConfirmChatCallMatchReq createEmptyInstance() => create();

  static $pb.PbList<ConfirmChatCallMatchReq> createRepeated() =>
      $pb.PbList<ConfirmChatCallMatchReq>();

  @$core.pragma('dart2js:noInline')
  static ConfirmChatCallMatchReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfirmChatCallMatchReq>(create);
  static ConfirmChatCallMatchReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get matchId => $_getI64(0);

  @$pb.TagNumber(1)
  set matchId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMatchId() => $_has(0);

  @$pb.TagNumber(1)
  void clearMatchId() => clearField(1);
}

class ChatCallMatchPSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ChatCallMatchPSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..aOM<$1.ChatCall>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'call',
          subBuilder: $1.ChatCall.create,
        )
        ..aOM<$2.User>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchUser',
          subBuilder: $2.User.create,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchId',
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
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'autoCall',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'matchType',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'videoUrl',
        )
        ..hasRequiredFields = false;

  ChatCallMatchPSH._() : super();

  factory ChatCallMatchPSH({
    $1.ChatCall? call,
    $2.User? matchUser,
    $fixnum.Int64? matchId,
    $core.int? status,
    $core.int? autoCall,
    $core.int? matchType,
    $core.String? videoUrl,
  }) {
    final _result = create();
    if (call != null) {
      _result.call = call;
    }
    if (matchUser != null) {
      _result.matchUser = matchUser;
    }
    if (matchId != null) {
      _result.matchId = matchId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (autoCall != null) {
      _result.autoCall = autoCall;
    }
    if (matchType != null) {
      _result.matchType = matchType;
    }
    if (videoUrl != null) {
      _result.videoUrl = videoUrl;
    }
    return _result;
  }

  factory ChatCallMatchPSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ChatCallMatchPSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ChatCallMatchPSH clone() => ChatCallMatchPSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ChatCallMatchPSH copyWith(void Function(ChatCallMatchPSH) updates) =>
      super.copyWith((message) => updates(message as ChatCallMatchPSH))
          as ChatCallMatchPSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCallMatchPSH create() => ChatCallMatchPSH._();

  ChatCallMatchPSH createEmptyInstance() => create();

  static $pb.PbList<ChatCallMatchPSH> createRepeated() =>
      $pb.PbList<ChatCallMatchPSH>();

  @$core.pragma('dart2js:noInline')
  static ChatCallMatchPSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCallMatchPSH>(create);
  static ChatCallMatchPSH? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ChatCall get call => $_getN(0);

  @$pb.TagNumber(1)
  set call($1.ChatCall v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCall() => $_has(0);

  @$pb.TagNumber(1)
  void clearCall() => clearField(1);

  @$pb.TagNumber(1)
  $1.ChatCall ensureCall() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.User get matchUser => $_getN(1);

  @$pb.TagNumber(2)
  set matchUser($2.User v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMatchUser() => $_has(1);

  @$pb.TagNumber(2)
  void clearMatchUser() => clearField(2);

  @$pb.TagNumber(2)
  $2.User ensureMatchUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get matchId => $_getI64(2);

  @$pb.TagNumber(3)
  set matchId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMatchId() => $_has(2);

  @$pb.TagNumber(3)
  void clearMatchId() => clearField(3);

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

  @$pb.TagNumber(5)
  $core.int get autoCall => $_getIZ(4);

  @$pb.TagNumber(5)
  set autoCall($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAutoCall() => $_has(4);

  @$pb.TagNumber(5)
  void clearAutoCall() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get matchType => $_getIZ(5);

  @$pb.TagNumber(6)
  set matchType($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMatchType() => $_has(5);

  @$pb.TagNumber(6)
  void clearMatchType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get videoUrl => $_getSZ(6);

  @$pb.TagNumber(7)
  set videoUrl($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasVideoUrl() => $_has(6);

  @$pb.TagNumber(7)
  void clearVideoUrl() => clearField(7);
}

class ViewAicVideoReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'ViewAicVideoReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'aicUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  ViewAicVideoReq._() : super();

  factory ViewAicVideoReq({$fixnum.Int64? aicUid}) {
    final _result = create();
    if (aicUid != null) {
      _result.aicUid = aicUid;
    }
    return _result;
  }

  factory ViewAicVideoReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory ViewAicVideoReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  ViewAicVideoReq clone() => ViewAicVideoReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  ViewAicVideoReq copyWith(void Function(ViewAicVideoReq) updates) =>
      super.copyWith((message) => updates(message as ViewAicVideoReq))
          as ViewAicVideoReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ViewAicVideoReq create() => ViewAicVideoReq._();

  ViewAicVideoReq createEmptyInstance() => create();

  static $pb.PbList<ViewAicVideoReq> createRepeated() =>
      $pb.PbList<ViewAicVideoReq>();

  @$core.pragma('dart2js:noInline')
  static ViewAicVideoReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ViewAicVideoReq>(create);
  static ViewAicVideoReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get aicUid => $_getI64(0);

  @$pb.TagNumber(1)
  set aicUid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAicUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearAicUid() => clearField(1);
}

class AiCallReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'AiCallReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..e<ChatCallReq_Opt>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'opt',
          $pb.PbFieldType.OE,
          defaultOrMaker: ChatCallReq_Opt.INVITE,
          valueOf: ChatCallReq_Opt.valueOf,
          enumValues: ChatCallReq_Opt.values,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'rejectReason',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'duration',
          $pb.PbFieldType.OU3,
        )
        ..aOM<VideoPlaySummary>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'videoPlaySummary',
          protoName: 'videoPlaySummary',
          subBuilder: VideoPlaySummary.create,
        )
        ..hasRequiredFields = false;

  AiCallReq._() : super();

  factory AiCallReq({
    $fixnum.Int64? id,
    $fixnum.Int64? chatId,
    $core.int? type,
    ChatCallReq_Opt? opt,
    $core.int? rejectReason,
    $core.int? duration,
    VideoPlaySummary? videoPlaySummary,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (chatId != null) {
      _result.chatId = chatId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (opt != null) {
      _result.opt = opt;
    }
    if (rejectReason != null) {
      _result.rejectReason = rejectReason;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (videoPlaySummary != null) {
      _result.videoPlaySummary = videoPlaySummary;
    }
    return _result;
  }

  factory AiCallReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory AiCallReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  AiCallReq clone() => AiCallReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  AiCallReq copyWith(void Function(AiCallReq) updates) =>
      super.copyWith((message) => updates(message as AiCallReq)) as AiCallReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiCallReq create() => AiCallReq._();

  AiCallReq createEmptyInstance() => create();

  static $pb.PbList<AiCallReq> createRepeated() => $pb.PbList<AiCallReq>();

  @$core.pragma('dart2js:noInline')
  static AiCallReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AiCallReq>(create);
  static AiCallReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);

  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);

  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get chatId => $_getI64(1);

  @$pb.TagNumber(2)
  set chatId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasChatId() => $_has(1);

  @$pb.TagNumber(2)
  void clearChatId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);

  @$pb.TagNumber(3)
  set type($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);

  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  ChatCallReq_Opt get opt => $_getN(3);

  @$pb.TagNumber(4)
  set opt(ChatCallReq_Opt v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOpt() => $_has(3);

  @$pb.TagNumber(4)
  void clearOpt() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get rejectReason => $_getIZ(4);

  @$pb.TagNumber(5)
  set rejectReason($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRejectReason() => $_has(4);

  @$pb.TagNumber(5)
  void clearRejectReason() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get duration => $_getIZ(5);

  @$pb.TagNumber(6)
  set duration($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDuration() => $_has(5);

  @$pb.TagNumber(6)
  void clearDuration() => clearField(6);

  @$pb.TagNumber(7)
  VideoPlaySummary get videoPlaySummary => $_getN(6);

  @$pb.TagNumber(7)
  set videoPlaySummary(VideoPlaySummary v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasVideoPlaySummary() => $_has(6);

  @$pb.TagNumber(7)
  void clearVideoPlaySummary() => clearField(7);

  @$pb.TagNumber(7)
  VideoPlaySummary ensureVideoPlaySummary() => $_ensure(6);
}

class VideoPlaySummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'VideoPlaySummary',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'preBufferDuration',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'bufferingTimes',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'bufferingTotalDuration',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'closeType',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'progress',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'popupsTimes',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  VideoPlaySummary._() : super();

  factory VideoPlaySummary({
    $core.int? preBufferDuration,
    $core.int? bufferingTimes,
    $core.int? bufferingTotalDuration,
    $core.int? closeType,
    $core.int? progress,
    $core.int? popupsTimes,
  }) {
    final _result = create();
    if (preBufferDuration != null) {
      _result.preBufferDuration = preBufferDuration;
    }
    if (bufferingTimes != null) {
      _result.bufferingTimes = bufferingTimes;
    }
    if (bufferingTotalDuration != null) {
      _result.bufferingTotalDuration = bufferingTotalDuration;
    }
    if (closeType != null) {
      _result.closeType = closeType;
    }
    if (progress != null) {
      _result.progress = progress;
    }
    if (popupsTimes != null) {
      _result.popupsTimes = popupsTimes;
    }
    return _result;
  }

  factory VideoPlaySummary.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory VideoPlaySummary.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  VideoPlaySummary clone() => VideoPlaySummary()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  VideoPlaySummary copyWith(void Function(VideoPlaySummary) updates) =>
      super.copyWith((message) => updates(message as VideoPlaySummary))
          as VideoPlaySummary;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoPlaySummary create() => VideoPlaySummary._();

  VideoPlaySummary createEmptyInstance() => create();

  static $pb.PbList<VideoPlaySummary> createRepeated() =>
      $pb.PbList<VideoPlaySummary>();

  @$core.pragma('dart2js:noInline')
  static VideoPlaySummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoPlaySummary>(create);
  static VideoPlaySummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get preBufferDuration => $_getIZ(0);

  @$pb.TagNumber(1)
  set preBufferDuration($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPreBufferDuration() => $_has(0);

  @$pb.TagNumber(1)
  void clearPreBufferDuration() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bufferingTimes => $_getIZ(1);

  @$pb.TagNumber(2)
  set bufferingTimes($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBufferingTimes() => $_has(1);

  @$pb.TagNumber(2)
  void clearBufferingTimes() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get bufferingTotalDuration => $_getIZ(2);

  @$pb.TagNumber(3)
  set bufferingTotalDuration($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBufferingTotalDuration() => $_has(2);

  @$pb.TagNumber(3)
  void clearBufferingTotalDuration() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get closeType => $_getIZ(3);

  @$pb.TagNumber(4)
  set closeType($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCloseType() => $_has(3);

  @$pb.TagNumber(4)
  void clearCloseType() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get progress => $_getIZ(4);

  @$pb.TagNumber(5)
  set progress($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasProgress() => $_has(4);

  @$pb.TagNumber(5)
  void clearProgress() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get popupsTimes => $_getIZ(5);

  @$pb.TagNumber(6)
  set popupsTimes($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPopupsTimes() => $_has(5);

  @$pb.TagNumber(6)
  void clearPopupsTimes() => clearField(6);
}

class GetOnlineAnchorsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetOnlineAnchorsReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  GetOnlineAnchorsReq._() : super();

  factory GetOnlineAnchorsReq({$fixnum.Int64? uid}) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }

  factory GetOnlineAnchorsReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetOnlineAnchorsReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetOnlineAnchorsReq clone() => GetOnlineAnchorsReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetOnlineAnchorsReq copyWith(void Function(GetOnlineAnchorsReq) updates) =>
      super.copyWith((message) => updates(message as GetOnlineAnchorsReq))
          as GetOnlineAnchorsReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOnlineAnchorsReq create() => GetOnlineAnchorsReq._();

  GetOnlineAnchorsReq createEmptyInstance() => create();

  static $pb.PbList<GetOnlineAnchorsReq> createRepeated() =>
      $pb.PbList<GetOnlineAnchorsReq>();

  @$core.pragma('dart2js:noInline')
  static GetOnlineAnchorsReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetOnlineAnchorsReq>(create);
  static GetOnlineAnchorsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);

  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class GetOnlineAnchorsRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetOnlineAnchorsRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..pc<Anchor>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'anchors',
          $pb.PbFieldType.PM,
          subBuilder: Anchor.create,
        )
        ..hasRequiredFields = false;

  GetOnlineAnchorsRsp._() : super();

  factory GetOnlineAnchorsRsp({$core.Iterable<Anchor>? anchors}) {
    final _result = create();
    if (anchors != null) {
      _result.anchors.addAll(anchors);
    }
    return _result;
  }

  factory GetOnlineAnchorsRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetOnlineAnchorsRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetOnlineAnchorsRsp clone() => GetOnlineAnchorsRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetOnlineAnchorsRsp copyWith(void Function(GetOnlineAnchorsRsp) updates) =>
      super.copyWith((message) => updates(message as GetOnlineAnchorsRsp))
          as GetOnlineAnchorsRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOnlineAnchorsRsp create() => GetOnlineAnchorsRsp._();

  GetOnlineAnchorsRsp createEmptyInstance() => create();

  static $pb.PbList<GetOnlineAnchorsRsp> createRepeated() =>
      $pb.PbList<GetOnlineAnchorsRsp>();

  @$core.pragma('dart2js:noInline')
  static GetOnlineAnchorsRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetOnlineAnchorsRsp>(create);
  static GetOnlineAnchorsRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Anchor> get anchors => $_getList(0);
}

class Anchor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Anchor',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'nickName',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatarUrl',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  Anchor._() : super();

  factory Anchor({
    $fixnum.Int64? uid,
    $core.String? nickName,
    $core.String? avatarUrl,
    $core.int? type,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (nickName != null) {
      _result.nickName = nickName;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }

  factory Anchor.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Anchor.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Anchor clone() => Anchor()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Anchor copyWith(void Function(Anchor) updates) =>
      super.copyWith((message) => updates(message as Anchor)) as Anchor;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Anchor create() => Anchor._();

  Anchor createEmptyInstance() => create();

  static $pb.PbList<Anchor> createRepeated() => $pb.PbList<Anchor>();

  @$core.pragma('dart2js:noInline')
  static Anchor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Anchor>(create);
  static Anchor? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);

  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nickName => $_getSZ(1);

  @$pb.TagNumber(2)
  set nickName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNickName() => $_has(1);

  @$pb.TagNumber(2)
  void clearNickName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get avatarUrl => $_getSZ(2);

  @$pb.TagNumber(3)
  set avatarUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAvatarUrl() => $_has(2);

  @$pb.TagNumber(3)
  void clearAvatarUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);

  @$pb.TagNumber(4)
  set type($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);

  @$pb.TagNumber(4)
  void clearType() => clearField(4);
}
