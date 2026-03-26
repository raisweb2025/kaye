import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'kaye_gray.pb.dart' as $1;
import 'im_object.pb.dart' as $3;

class GetUserOnlineTimeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserOnlineTimeReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..p<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uids',
          $pb.PbFieldType.KU6,
        )
        ..hasRequiredFields = false;

  GetUserOnlineTimeReq._() : super();

  factory GetUserOnlineTimeReq({$core.Iterable<$fixnum.Int64>? uids}) {
    final _result = create();
    if (uids != null) {
      _result.uids.addAll(uids);
    }
    return _result;
  }

  factory GetUserOnlineTimeReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserOnlineTimeReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeReq clone() =>
      GetUserOnlineTimeReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeReq copyWith(void Function(GetUserOnlineTimeReq) updates) =>
      super.copyWith((message) => updates(message as GetUserOnlineTimeReq))
          as GetUserOnlineTimeReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeReq create() => GetUserOnlineTimeReq._();

  GetUserOnlineTimeReq createEmptyInstance() => create();

  static $pb.PbList<GetUserOnlineTimeReq> createRepeated() =>
      $pb.PbList<GetUserOnlineTimeReq>();

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserOnlineTimeReq>(create);
  static GetUserOnlineTimeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get uids => $_getList(0);
}

class GetUserOnlineTimeRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserOnlineTimeRsp',
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
        ..pc<$1.UserOnlineTime>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'onlineTimes',
          $pb.PbFieldType.PM,
          subBuilder: $1.UserOnlineTime.create,
        )
        ..hasRequiredFields = false;

  GetUserOnlineTimeRsp._() : super();

  factory GetUserOnlineTimeRsp({
    $core.int? code,
    $core.String? msg,
    $core.Iterable<$1.UserOnlineTime>? onlineTimes,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (onlineTimes != null) {
      _result.onlineTimes.addAll(onlineTimes);
    }
    return _result;
  }

  factory GetUserOnlineTimeRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserOnlineTimeRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeRsp clone() =>
      GetUserOnlineTimeRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeRsp copyWith(void Function(GetUserOnlineTimeRsp) updates) =>
      super.copyWith((message) => updates(message as GetUserOnlineTimeRsp))
          as GetUserOnlineTimeRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeRsp create() => GetUserOnlineTimeRsp._();

  GetUserOnlineTimeRsp createEmptyInstance() => create();

  static $pb.PbList<GetUserOnlineTimeRsp> createRepeated() =>
      $pb.PbList<GetUserOnlineTimeRsp>();

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserOnlineTimeRsp>(create);
  static GetUserOnlineTimeRsp? _defaultInstance;

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
  $core.List<$1.UserOnlineTime> get onlineTimes => $_getList(2);
}

class CustomerServiceReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'CustomerServiceReq',
    package: $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : pP.kayeJackassC9(),
    ),
    createEmptyInstance: create,
  )..hasRequiredFields = false;

  CustomerServiceReq._() : super();

  factory CustomerServiceReq() => create();

  factory CustomerServiceReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CustomerServiceReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceReq clone() => CustomerServiceReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceReq copyWith(void Function(CustomerServiceReq) updates) =>
      super.copyWith((message) => updates(message as CustomerServiceReq))
          as CustomerServiceReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomerServiceReq create() => CustomerServiceReq._();

  CustomerServiceReq createEmptyInstance() => create();

  static $pb.PbList<CustomerServiceReq> createRepeated() =>
      $pb.PbList<CustomerServiceReq>();

  @$core.pragma('dart2js:noInline')
  static CustomerServiceReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomerServiceReq>(create);
  static CustomerServiceReq? _defaultInstance;
}

class CustomerServiceRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CustomerServiceRsp',
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
        ..aOM<$3.Chatbox>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatbox',
          subBuilder: $3.Chatbox.create,
        )
        ..hasRequiredFields = false;

  CustomerServiceRsp._() : super();

  factory CustomerServiceRsp({
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

  factory CustomerServiceRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CustomerServiceRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceRsp clone() => CustomerServiceRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceRsp copyWith(void Function(CustomerServiceRsp) updates) =>
      super.copyWith((message) => updates(message as CustomerServiceRsp))
          as CustomerServiceRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomerServiceRsp create() => CustomerServiceRsp._();

  CustomerServiceRsp createEmptyInstance() => create();

  static $pb.PbList<CustomerServiceRsp> createRepeated() =>
      $pb.PbList<CustomerServiceRsp>();

  @$core.pragma('dart2js:noInline')
  static CustomerServiceRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomerServiceRsp>(create);
  static CustomerServiceRsp? _defaultInstance;

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

class TipNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'TipNotify',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'iconUrl',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..hasRequiredFields = false;

  TipNotify._() : super();

  factory TipNotify({$core.String? iconUrl, $core.String? msg}) {
    final _result = create();
    if (iconUrl != null) {
      _result.iconUrl = iconUrl;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }

  factory TipNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory TipNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  TipNotify clone() => TipNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  TipNotify copyWith(void Function(TipNotify) updates) =>
      super.copyWith((message) => updates(message as TipNotify)) as TipNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TipNotify create() => TipNotify._();

  TipNotify createEmptyInstance() => create();

  static $pb.PbList<TipNotify> createRepeated() => $pb.PbList<TipNotify>();

  @$core.pragma('dart2js:noInline')
  static TipNotify getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TipNotify>(create);
  static TipNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iconUrl => $_getSZ(0);

  @$pb.TagNumber(1)
  set iconUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIconUrl() => $_has(0);

  @$pb.TagNumber(1)
  void clearIconUrl() => clearField(1);

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
}

class BalanceInsufficientNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'BalanceInsufficientNotify',
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
              : 'balance',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  BalanceInsufficientNotify._() : super();

  factory BalanceInsufficientNotify({$fixnum.Int64? balance}) {
    final _result = create();
    if (balance != null) {
      _result.balance = balance;
    }
    return _result;
  }

  factory BalanceInsufficientNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory BalanceInsufficientNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  BalanceInsufficientNotify clone() =>
      BalanceInsufficientNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  BalanceInsufficientNotify copyWith(
    void Function(BalanceInsufficientNotify) updates,
  ) =>
      super.copyWith((message) => updates(message as BalanceInsufficientNotify))
          as BalanceInsufficientNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BalanceInsufficientNotify create() => BalanceInsufficientNotify._();

  BalanceInsufficientNotify createEmptyInstance() => create();

  static $pb.PbList<BalanceInsufficientNotify> createRepeated() =>
      $pb.PbList<BalanceInsufficientNotify>();

  @$core.pragma('dart2js:noInline')
  static BalanceInsufficientNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BalanceInsufficientNotify>(create);
  static BalanceInsufficientNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get balance => $_getI64(0);

  @$pb.TagNumber(1)
  set balance($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);

  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);
}

class CustomerOnlineNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CustomerOnlineNotify',
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

  CustomerOnlineNotify._() : super();

  factory CustomerOnlineNotify({$fixnum.Int64? uid}) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }

  factory CustomerOnlineNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CustomerOnlineNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CustomerOnlineNotify clone() =>
      CustomerOnlineNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CustomerOnlineNotify copyWith(void Function(CustomerOnlineNotify) updates) =>
      super.copyWith((message) => updates(message as CustomerOnlineNotify))
          as CustomerOnlineNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomerOnlineNotify create() => CustomerOnlineNotify._();

  CustomerOnlineNotify createEmptyInstance() => create();

  static $pb.PbList<CustomerOnlineNotify> createRepeated() =>
      $pb.PbList<CustomerOnlineNotify>();

  @$core.pragma('dart2js:noInline')
  static CustomerOnlineNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomerOnlineNotify>(create);
  static CustomerOnlineNotify? _defaultInstance;

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

class RecoverStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'RecoverStateReq',
    package: $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : pP.kayeJackassC9(),
    ),
    createEmptyInstance: create,
  )..hasRequiredFields = false;

  RecoverStateReq._() : super();

  factory RecoverStateReq() => create();

  factory RecoverStateReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RecoverStateReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RecoverStateReq clone() => RecoverStateReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RecoverStateReq copyWith(void Function(RecoverStateReq) updates) =>
      super.copyWith((message) => updates(message as RecoverStateReq))
          as RecoverStateReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverStateReq create() => RecoverStateReq._();

  RecoverStateReq createEmptyInstance() => create();

  static $pb.PbList<RecoverStateReq> createRepeated() =>
      $pb.PbList<RecoverStateReq>();

  @$core.pragma('dart2js:noInline')
  static RecoverStateReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoverStateReq>(create);
  static RecoverStateReq? _defaultInstance;
}

class UserStatusPSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UserStatusPSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassC9(),
          ),
          createEmptyInstance: create,
        )
        ..pc<UserStatus>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'list',
          $pb.PbFieldType.PM,
          subBuilder: UserStatus.create,
        )
        ..hasRequiredFields = false;

  UserStatusPSH._() : super();

  factory UserStatusPSH({$core.Iterable<UserStatus>? list}) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }

  factory UserStatusPSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UserStatusPSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UserStatusPSH clone() => UserStatusPSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UserStatusPSH copyWith(void Function(UserStatusPSH) updates) =>
      super.copyWith((message) => updates(message as UserStatusPSH))
          as UserStatusPSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStatusPSH create() => UserStatusPSH._();

  UserStatusPSH createEmptyInstance() => create();

  static $pb.PbList<UserStatusPSH> createRepeated() =>
      $pb.PbList<UserStatusPSH>();

  @$core.pragma('dart2js:noInline')
  static UserStatusPSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserStatusPSH>(create);
  static UserStatusPSH? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserStatus> get list => $_getList(0);
}

class UserStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UserStatus',
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
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  UserStatus._() : super();

  factory UserStatus({
    $fixnum.Int64? uid,
    $core.int? status,
    $fixnum.Int64? liveId,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (status != null) {
      _result.status = status;
    }
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory UserStatus.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UserStatus.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UserStatus clone() => UserStatus()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UserStatus copyWith(void Function(UserStatus) updates) =>
      super.copyWith((message) => updates(message as UserStatus)) as UserStatus;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStatus create() => UserStatus._();

  UserStatus createEmptyInstance() => create();

  static $pb.PbList<UserStatus> createRepeated() => $pb.PbList<UserStatus>();

  @$core.pragma('dart2js:noInline')
  static UserStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserStatus>(create);
  static UserStatus? _defaultInstance;

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
  $core.int get status => $_getIZ(1);

  @$pb.TagNumber(2)
  set status($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);

  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get liveId => $_getI64(2);

  @$pb.TagNumber(3)
  set liveId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLiveId() => $_has(2);

  @$pb.TagNumber(3)
  void clearLiveId() => clearField(3);
}
