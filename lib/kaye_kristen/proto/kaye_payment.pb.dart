import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class OrderStatusChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'OrderStatusChange',
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
              : 'orderId',
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
              : 'sellerUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'buyerUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  OrderStatusChange._() : super();

  factory OrderStatusChange({
    $fixnum.Int64? orderId,
    $core.int? status,
    $fixnum.Int64? sellerUid,
    $fixnum.Int64? buyerUid,
  }) {
    final _result = create();
    if (orderId != null) {
      _result.orderId = orderId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (sellerUid != null) {
      _result.sellerUid = sellerUid;
    }
    if (buyerUid != null) {
      _result.buyerUid = buyerUid;
    }
    return _result;
  }

  factory OrderStatusChange.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory OrderStatusChange.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  OrderStatusChange clone() => OrderStatusChange()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  OrderStatusChange copyWith(void Function(OrderStatusChange) updates) =>
      super.copyWith((message) => updates(message as OrderStatusChange))
          as OrderStatusChange;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrderStatusChange create() => OrderStatusChange._();

  OrderStatusChange createEmptyInstance() => create();

  static $pb.PbList<OrderStatusChange> createRepeated() =>
      $pb.PbList<OrderStatusChange>();

  @$core.pragma('dart2js:noInline')
  static OrderStatusChange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OrderStatusChange>(create);
  static OrderStatusChange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get orderId => $_getI64(0);

  @$pb.TagNumber(1)
  set orderId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);

  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);

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
  $fixnum.Int64 get sellerUid => $_getI64(2);

  @$pb.TagNumber(3)
  set sellerUid($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSellerUid() => $_has(2);

  @$pb.TagNumber(3)
  void clearSellerUid() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get buyerUid => $_getI64(3);

  @$pb.TagNumber(4)
  set buyerUid($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBuyerUid() => $_has(3);

  @$pb.TagNumber(4)
  void clearBuyerUid() => clearField(4);
}

class OrderRefundStatusChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'OrderRefundStatusChange',
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
              : 'orderId',
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
              : 'sellerUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'buyerUid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  OrderRefundStatusChange._() : super();

  factory OrderRefundStatusChange({
    $fixnum.Int64? orderId,
    $core.int? status,
    $fixnum.Int64? sellerUid,
    $fixnum.Int64? buyerUid,
  }) {
    final _result = create();
    if (orderId != null) {
      _result.orderId = orderId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (sellerUid != null) {
      _result.sellerUid = sellerUid;
    }
    if (buyerUid != null) {
      _result.buyerUid = buyerUid;
    }
    return _result;
  }

  factory OrderRefundStatusChange.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory OrderRefundStatusChange.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  OrderRefundStatusChange clone() =>
      OrderRefundStatusChange()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  OrderRefundStatusChange copyWith(
    void Function(OrderRefundStatusChange) updates,
  ) =>
      super.copyWith((message) => updates(message as OrderRefundStatusChange))
          as OrderRefundStatusChange;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrderRefundStatusChange create() => OrderRefundStatusChange._();

  OrderRefundStatusChange createEmptyInstance() => create();

  static $pb.PbList<OrderRefundStatusChange> createRepeated() =>
      $pb.PbList<OrderRefundStatusChange>();

  @$core.pragma('dart2js:noInline')
  static OrderRefundStatusChange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OrderRefundStatusChange>(create);
  static OrderRefundStatusChange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get orderId => $_getI64(0);

  @$pb.TagNumber(1)
  set orderId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);

  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);

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
  $fixnum.Int64 get sellerUid => $_getI64(2);

  @$pb.TagNumber(3)
  set sellerUid($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSellerUid() => $_has(2);

  @$pb.TagNumber(3)
  void clearSellerUid() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get buyerUid => $_getI64(3);

  @$pb.TagNumber(4)
  set buyerUid($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasBuyerUid() => $_has(3);

  @$pb.TagNumber(4)
  void clearBuyerUid() => clearField(4);
}
