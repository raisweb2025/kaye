import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class AuthReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'AuthReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'session',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'version',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'deviceId',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'model',
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'os',
        )
        ..aOS(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'timestamp',
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sig',
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pVer',
          $pb.PbFieldType.O3,
        )
        ..aOS(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lang',
        )
        ..aOS(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'packageName',
        )
        ..hasRequiredFields = false;

  AuthReq._() : super();

  factory AuthReq({
    $core.String? session,
    $core.String? version,
    $core.String? deviceId,
    $core.String? model,
    $core.String? os,
    $core.String? timestamp,
    $core.String? sig,
    $core.int? pVer,
    $core.String? lang,
    $core.String? packageName,
  }) {
    final _result = create();
    if (session != null) {
      _result.session = session;
    }
    if (version != null) {
      _result.version = version;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (model != null) {
      _result.model = model;
    }
    if (os != null) {
      _result.os = os;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (sig != null) {
      _result.sig = sig;
    }
    if (pVer != null) {
      _result.pVer = pVer;
    }
    if (lang != null) {
      _result.lang = lang;
    }
    if (packageName != null) {
      _result.packageName = packageName;
    }
    return _result;
  }

  factory AuthReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory AuthReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  AuthReq clone() => AuthReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  AuthReq copyWith(void Function(AuthReq) updates) =>
      super.copyWith((message) => updates(message as AuthReq)) as AuthReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthReq create() => AuthReq._();

  AuthReq createEmptyInstance() => create();

  static $pb.PbList<AuthReq> createRepeated() => $pb.PbList<AuthReq>();

  @$core.pragma('dart2js:noInline')
  static AuthReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthReq>(create);
  static AuthReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get session => $_getSZ(0);

  @$pb.TagNumber(1)
  set session($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSession() => $_has(0);

  @$pb.TagNumber(1)
  void clearSession() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);

  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);

  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceId => $_getSZ(2);

  @$pb.TagNumber(3)
  set deviceId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);

  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get model => $_getSZ(3);

  @$pb.TagNumber(4)
  set model($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasModel() => $_has(3);

  @$pb.TagNumber(4)
  void clearModel() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get os => $_getSZ(4);

  @$pb.TagNumber(5)
  set os($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOs() => $_has(4);

  @$pb.TagNumber(5)
  void clearOs() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get timestamp => $_getSZ(5);

  @$pb.TagNumber(6)
  set timestamp($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);

  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get sig => $_getSZ(6);

  @$pb.TagNumber(7)
  set sig($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSig() => $_has(6);

  @$pb.TagNumber(7)
  void clearSig() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pVer => $_getIZ(7);

  @$pb.TagNumber(8)
  set pVer($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPVer() => $_has(7);

  @$pb.TagNumber(8)
  void clearPVer() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lang => $_getSZ(8);

  @$pb.TagNumber(9)
  set lang($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasLang() => $_has(8);

  @$pb.TagNumber(9)
  void clearLang() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get packageName => $_getSZ(9);

  @$pb.TagNumber(10)
  set packageName($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasPackageName() => $_has(9);

  @$pb.TagNumber(10)
  void clearPackageName() => clearField(10);
}

class SessionInvalidNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SessionInvalidNotify',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
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
        ..hasRequiredFields = false;

  SessionInvalidNotify._() : super();

  factory SessionInvalidNotify({$core.int? code, $core.String? msg}) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }

  factory SessionInvalidNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SessionInvalidNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SessionInvalidNotify clone() =>
      SessionInvalidNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SessionInvalidNotify copyWith(void Function(SessionInvalidNotify) updates) =>
      super.copyWith((message) => updates(message as SessionInvalidNotify))
          as SessionInvalidNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionInvalidNotify create() => SessionInvalidNotify._();

  SessionInvalidNotify createEmptyInstance() => create();

  static $pb.PbList<SessionInvalidNotify> createRepeated() =>
      $pb.PbList<SessionInvalidNotify>();

  @$core.pragma('dart2js:noInline')
  static SessionInvalidNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionInvalidNotify>(create);
  static SessionInvalidNotify? _defaultInstance;

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
}

class GuideAuthReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GuideAuthReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uuid',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'version',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'deviceId',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'model',
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'os',
        )
        ..aOS(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'timestamp',
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'sig',
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'pVer',
          $pb.PbFieldType.O3,
        )
        ..aOS(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lang',
        )
        ..hasRequiredFields = false;

  GuideAuthReq._() : super();

  factory GuideAuthReq({
    $core.String? uuid,
    $core.String? version,
    $core.String? deviceId,
    $core.String? model,
    $core.String? os,
    $core.String? timestamp,
    $core.String? sig,
    $core.int? pVer,
    $core.String? lang,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (version != null) {
      _result.version = version;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (model != null) {
      _result.model = model;
    }
    if (os != null) {
      _result.os = os;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (sig != null) {
      _result.sig = sig;
    }
    if (pVer != null) {
      _result.pVer = pVer;
    }
    if (lang != null) {
      _result.lang = lang;
    }
    return _result;
  }

  factory GuideAuthReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GuideAuthReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GuideAuthReq clone() => GuideAuthReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GuideAuthReq copyWith(void Function(GuideAuthReq) updates) =>
      super.copyWith((message) => updates(message as GuideAuthReq))
          as GuideAuthReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuideAuthReq create() => GuideAuthReq._();

  GuideAuthReq createEmptyInstance() => create();

  static $pb.PbList<GuideAuthReq> createRepeated() =>
      $pb.PbList<GuideAuthReq>();

  @$core.pragma('dart2js:noInline')
  static GuideAuthReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GuideAuthReq>(create);
  static GuideAuthReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);

  @$pb.TagNumber(1)
  set uuid($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);

  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);

  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceId => $_getSZ(2);

  @$pb.TagNumber(3)
  set deviceId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDeviceId() => $_has(2);

  @$pb.TagNumber(3)
  void clearDeviceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get model => $_getSZ(3);

  @$pb.TagNumber(4)
  set model($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasModel() => $_has(3);

  @$pb.TagNumber(4)
  void clearModel() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get os => $_getSZ(4);

  @$pb.TagNumber(5)
  set os($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOs() => $_has(4);

  @$pb.TagNumber(5)
  void clearOs() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get timestamp => $_getSZ(5);

  @$pb.TagNumber(6)
  set timestamp($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);

  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get sig => $_getSZ(6);

  @$pb.TagNumber(7)
  set sig($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasSig() => $_has(6);

  @$pb.TagNumber(7)
  void clearSig() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get pVer => $_getIZ(7);

  @$pb.TagNumber(8)
  set pVer($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPVer() => $_has(7);

  @$pb.TagNumber(8)
  void clearPVer() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lang => $_getSZ(8);

  @$pb.TagNumber(9)
  set lang($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasLang() => $_has(8);

  @$pb.TagNumber(9)
  void clearLang() => clearField(9);
}

class AuthRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'AuthRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
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
              : 'needUpdate',
          $pb.PbFieldType.O3,
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'updateIntro',
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'appUrl',
        )
        ..hasRequiredFields = false;

  AuthRsp._() : super();

  factory AuthRsp({
    $core.int? code,
    $core.String? msg,
    $core.int? needUpdate,
    $core.String? updateIntro,
    $core.String? appUrl,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (needUpdate != null) {
      _result.needUpdate = needUpdate;
    }
    if (updateIntro != null) {
      _result.updateIntro = updateIntro;
    }
    if (appUrl != null) {
      _result.appUrl = appUrl;
    }
    return _result;
  }

  factory AuthRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory AuthRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  AuthRsp clone() => AuthRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  AuthRsp copyWith(void Function(AuthRsp) updates) =>
      super.copyWith((message) => updates(message as AuthRsp)) as AuthRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRsp create() => AuthRsp._();

  AuthRsp createEmptyInstance() => create();

  static $pb.PbList<AuthRsp> createRepeated() => $pb.PbList<AuthRsp>();

  @$core.pragma('dart2js:noInline')
  static AuthRsp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRsp>(create);
  static AuthRsp? _defaultInstance;

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
  $core.int get needUpdate => $_getIZ(2);

  @$pb.TagNumber(3)
  set needUpdate($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNeedUpdate() => $_has(2);

  @$pb.TagNumber(3)
  void clearNeedUpdate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get updateIntro => $_getSZ(3);

  @$pb.TagNumber(4)
  set updateIntro($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUpdateIntro() => $_has(3);

  @$pb.TagNumber(4)
  void clearUpdateIntro() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get appUrl => $_getSZ(4);

  @$pb.TagNumber(5)
  set appUrl($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAppUrl() => $_has(4);

  @$pb.TagNumber(5)
  void clearAppUrl() => clearField(5);
}
