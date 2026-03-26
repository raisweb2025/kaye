import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $0;

export 'message.pbenum.dart';

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Message',
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
              : 'messageCate',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'messageType',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'seqno',
          $pb.PbFieldType.OU3,
        )
        ..aOM<$0.Any>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'messageObject',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  Message._() : super();

  factory Message({
    $core.int? messageCate,
    $core.int? messageType,
    $core.int? seqno,
    $0.Any? messageObject,
  }) {
    final _result = create();
    if (messageCate != null) {
      _result.messageCate = messageCate;
    }
    if (messageType != null) {
      _result.messageType = messageType;
    }
    if (seqno != null) {
      _result.seqno = seqno;
    }
    if (messageObject != null) {
      _result.messageObject = messageObject;
    }
    return _result;
  }

  factory Message.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Message.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Message clone() => Message()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Message copyWith(void Function(Message) updates) =>
      super.copyWith((message) => updates(message as Message)) as Message;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();

  Message createEmptyInstance() => create();

  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();

  @$core.pragma('dart2js:noInline')
  static Message getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get messageCate => $_getIZ(0);

  @$pb.TagNumber(1)
  set messageCate($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessageCate() => $_has(0);

  @$pb.TagNumber(1)
  void clearMessageCate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get messageType => $_getIZ(1);

  @$pb.TagNumber(2)
  set messageType($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessageType() => $_has(1);

  @$pb.TagNumber(2)
  void clearMessageType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get seqno => $_getIZ(2);

  @$pb.TagNumber(3)
  set seqno($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSeqno() => $_has(2);

  @$pb.TagNumber(3)
  void clearSeqno() => clearField(3);

  @$pb.TagNumber(4)
  $0.Any get messageObject => $_getN(3);

  @$pb.TagNumber(4)
  set messageObject($0.Any v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMessageObject() => $_has(3);

  @$pb.TagNumber(4)
  void clearMessageObject() => clearField(4);

  @$pb.TagNumber(4)
  $0.Any ensureMessageObject() => $_ensure(3);
}
