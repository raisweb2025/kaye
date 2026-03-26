import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $0;
import 'sync.pbenum.dart';

export 'sync.pbenum.dart';

class Sync extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Sync',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..e<SyncType>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OE,
          defaultOrMaker: SyncType.BUDDY,
          valueOf: SyncType.valueOf,
          enumValues: SyncType.values,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'baseKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..pc<$0.Any>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'add',
          $pb.PbFieldType.PM,
          subBuilder: $0.Any.create,
        )
        ..pc<$0.Any>(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'delete',
          $pb.PbFieldType.PM,
          subBuilder: $0.Any.create,
        )
        ..pc<$0.Any>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'update',
          $pb.PbFieldType.PM,
          subBuilder: $0.Any.create,
        )
        ..e<Sync_AfterSyncToDo>(
          20,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'afterSyncTodo',
          $pb.PbFieldType.OE,
          defaultOrMaker: Sync_AfterSyncToDo.TODO_NOTHING,
          valueOf: Sync_AfterSyncToDo.valueOf,
          enumValues: Sync_AfterSyncToDo.values,
        )
        ..hasRequiredFields = false;

  Sync._() : super();

  factory Sync({
    SyncType? type,
    $fixnum.Int64? lastKey,
    $fixnum.Int64? baseKey,
    $core.Iterable<$0.Any>? add,
    $core.Iterable<$0.Any>? delete,
    $core.Iterable<$0.Any>? update,
    Sync_AfterSyncToDo? afterSyncTodo,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (lastKey != null) {
      _result.lastKey = lastKey;
    }
    if (baseKey != null) {
      _result.baseKey = baseKey;
    }
    if (add != null) {
      _result.add.addAll(add);
    }
    if (delete != null) {
      _result.delete.addAll(delete);
    }
    if (update != null) {
      _result.update.addAll(update);
    }
    if (afterSyncTodo != null) {
      _result.afterSyncTodo = afterSyncTodo;
    }
    return _result;
  }

  factory Sync.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Sync.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Sync clone() => Sync()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Sync copyWith(void Function(Sync) updates) =>
      super.copyWith((message) => updates(message as Sync)) as Sync;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Sync create() => Sync._();

  Sync createEmptyInstance() => create();

  static $pb.PbList<Sync> createRepeated() => $pb.PbList<Sync>();

  @$core.pragma('dart2js:noInline')
  static Sync getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sync>(create);
  static Sync? _defaultInstance;

  @$pb.TagNumber(1)
  SyncType get type => $_getN(0);

  @$pb.TagNumber(1)
  set type(SyncType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);

  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastKey() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get baseKey => $_getI64(2);

  @$pb.TagNumber(3)
  set baseKey($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBaseKey() => $_has(2);

  @$pb.TagNumber(3)
  void clearBaseKey() => clearField(3);

  @$pb.TagNumber(10)
  $core.List<$0.Any> get add => $_getList(3);

  @$pb.TagNumber(11)
  $core.List<$0.Any> get delete => $_getList(4);

  @$pb.TagNumber(12)
  $core.List<$0.Any> get update => $_getList(5);

  @$pb.TagNumber(20)
  Sync_AfterSyncToDo get afterSyncTodo => $_getN(6);

  @$pb.TagNumber(20)
  set afterSyncTodo(Sync_AfterSyncToDo v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasAfterSyncTodo() => $_has(6);

  @$pb.TagNumber(20)
  void clearAfterSyncTodo() => clearField(20);
}

class SyncNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SyncNotify',
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
              : 'types',
          $pb.PbFieldType.O3,
        )
        ..hasRequiredFields = false;

  SyncNotify._() : super();

  factory SyncNotify({$core.int? types}) {
    final _result = create();
    if (types != null) {
      _result.types = types;
    }
    return _result;
  }

  factory SyncNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SyncNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SyncNotify clone() => SyncNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SyncNotify copyWith(void Function(SyncNotify) updates) =>
      super.copyWith((message) => updates(message as SyncNotify)) as SyncNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncNotify create() => SyncNotify._();

  SyncNotify createEmptyInstance() => create();

  static $pb.PbList<SyncNotify> createRepeated() => $pb.PbList<SyncNotify>();

  @$core.pragma('dart2js:noInline')
  static SyncNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SyncNotify>(create);
  static SyncNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get types => $_getIZ(0);

  @$pb.TagNumber(1)
  set types($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTypes() => $_has(0);

  @$pb.TagNumber(1)
  void clearTypes() => clearField(1);
}

class SyncKeyConfirmNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'SyncKeyConfirmNotify',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..e<SyncType>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OE,
          defaultOrMaker: SyncType.BUDDY,
          valueOf: SyncType.valueOf,
          enumValues: SyncType.values,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'lastKey',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  SyncKeyConfirmNotify._() : super();

  factory SyncKeyConfirmNotify({SyncType? type, $fixnum.Int64? lastKey}) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (lastKey != null) {
      _result.lastKey = lastKey;
    }
    return _result;
  }

  factory SyncKeyConfirmNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory SyncKeyConfirmNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  SyncKeyConfirmNotify clone() =>
      SyncKeyConfirmNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  SyncKeyConfirmNotify copyWith(void Function(SyncKeyConfirmNotify) updates) =>
      super.copyWith((message) => updates(message as SyncKeyConfirmNotify))
          as SyncKeyConfirmNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SyncKeyConfirmNotify create() => SyncKeyConfirmNotify._();

  SyncKeyConfirmNotify createEmptyInstance() => create();

  static $pb.PbList<SyncKeyConfirmNotify> createRepeated() =>
      $pb.PbList<SyncKeyConfirmNotify>();

  @$core.pragma('dart2js:noInline')
  static SyncKeyConfirmNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SyncKeyConfirmNotify>(create);
  static SyncKeyConfirmNotify? _defaultInstance;

  @$pb.TagNumber(1)
  SyncType get type => $_getN(0);

  @$pb.TagNumber(1)
  set type(SyncType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);

  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastKey => $_getI64(1);

  @$pb.TagNumber(2)
  set lastKey($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLastKey() => $_has(1);

  @$pb.TagNumber(2)
  void clearLastKey() => clearField(2);
}
