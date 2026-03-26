import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $0;
import 'im_object.pbenum.dart';
import 'object.pb.dart' as $2;

export 'im_object.pbenum.dart';

class Chatbox extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Chatbox',
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
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..e<Chatbox_Type>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OE,
          defaultOrMaker: Chatbox_Type.SINGLE,
          valueOf: Chatbox_Type.valueOf,
          enumValues: Chatbox_Type.values,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'name',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'coverUrl',
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'owner',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'memberCount',
          $pb.PbFieldType.OU3,
        )
        ..pc<$2.User>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'members',
          $pb.PbFieldType.PM,
          subBuilder: $2.User.create,
        )
        ..aOS(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'qrcodeUrl',
        )
        ..a<$core.int>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'weight',
          $pb.PbFieldType.O3,
        )
        ..aOB(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'muted',
        )
        ..a<$core.int>(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'unreadCount',
          $pb.PbFieldType.O3,
        )
        ..aInt64(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'updateTime',
        )
        ..aOS(
          13,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'additionalInfo',
        )
        ..aOB(
          14,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'isPublic',
        )
        ..e<Chatbox_EventFrequency>(
          15,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'eventFrequency',
          $pb.PbFieldType.OE,
          defaultOrMaker: Chatbox_EventFrequency.NEVER,
          valueOf: Chatbox_EventFrequency.valueOf,
          enumValues: Chatbox_EventFrequency.values,
        )
        ..aOS(
          16,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'description',
        )
        ..aOM<$0.Any>(
          17,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  Chatbox._() : super();

  factory Chatbox({
    $fixnum.Int64? id,
    Chatbox_Type? type,
    $core.String? name,
    $core.String? coverUrl,
    $fixnum.Int64? owner,
    $core.int? memberCount,
    $core.Iterable<$2.User>? members,
    $core.String? qrcodeUrl,
    $core.int? weight,
    $core.bool? muted,
    $core.int? unreadCount,
    $fixnum.Int64? updateTime,
    $core.String? additionalInfo,
    $core.bool? isPublic,
    Chatbox_EventFrequency? eventFrequency,
    $core.String? description,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (name != null) {
      _result.name = name;
    }
    if (coverUrl != null) {
      _result.coverUrl = coverUrl;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (memberCount != null) {
      _result.memberCount = memberCount;
    }
    if (members != null) {
      _result.members.addAll(members);
    }
    if (qrcodeUrl != null) {
      _result.qrcodeUrl = qrcodeUrl;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    if (muted != null) {
      _result.muted = muted;
    }
    if (unreadCount != null) {
      _result.unreadCount = unreadCount;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    if (additionalInfo != null) {
      _result.additionalInfo = additionalInfo;
    }
    if (isPublic != null) {
      _result.isPublic = isPublic;
    }
    if (eventFrequency != null) {
      _result.eventFrequency = eventFrequency;
    }
    if (description != null) {
      _result.description = description;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory Chatbox.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Chatbox.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Chatbox clone() => Chatbox()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Chatbox copyWith(void Function(Chatbox) updates) =>
      super.copyWith((message) => updates(message as Chatbox)) as Chatbox;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Chatbox create() => Chatbox._();

  Chatbox createEmptyInstance() => create();

  static $pb.PbList<Chatbox> createRepeated() => $pb.PbList<Chatbox>();

  @$core.pragma('dart2js:noInline')
  static Chatbox getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Chatbox>(create);
  static Chatbox? _defaultInstance;

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
  Chatbox_Type get type => $_getN(1);

  @$pb.TagNumber(2)
  set type(Chatbox_Type v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);

  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);

  @$pb.TagNumber(3)
  set name($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);

  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get coverUrl => $_getSZ(3);

  @$pb.TagNumber(4)
  set coverUrl($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCoverUrl() => $_has(3);

  @$pb.TagNumber(4)
  void clearCoverUrl() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get owner => $_getI64(4);

  @$pb.TagNumber(5)
  set owner($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOwner() => $_has(4);

  @$pb.TagNumber(5)
  void clearOwner() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get memberCount => $_getIZ(5);

  @$pb.TagNumber(6)
  set memberCount($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMemberCount() => $_has(5);

  @$pb.TagNumber(6)
  void clearMemberCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$2.User> get members => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get qrcodeUrl => $_getSZ(7);

  @$pb.TagNumber(8)
  set qrcodeUrl($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasQrcodeUrl() => $_has(7);

  @$pb.TagNumber(8)
  void clearQrcodeUrl() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get weight => $_getIZ(8);

  @$pb.TagNumber(9)
  set weight($core.int v) {
    $_setSignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasWeight() => $_has(8);

  @$pb.TagNumber(9)
  void clearWeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get muted => $_getBF(9);

  @$pb.TagNumber(10)
  set muted($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasMuted() => $_has(9);

  @$pb.TagNumber(10)
  void clearMuted() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get unreadCount => $_getIZ(10);

  @$pb.TagNumber(11)
  set unreadCount($core.int v) {
    $_setSignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasUnreadCount() => $_has(10);

  @$pb.TagNumber(11)
  void clearUnreadCount() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get updateTime => $_getI64(11);

  @$pb.TagNumber(12)
  set updateTime($fixnum.Int64 v) {
    $_setInt64(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasUpdateTime() => $_has(11);

  @$pb.TagNumber(12)
  void clearUpdateTime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get additionalInfo => $_getSZ(12);

  @$pb.TagNumber(13)
  set additionalInfo($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasAdditionalInfo() => $_has(12);

  @$pb.TagNumber(13)
  void clearAdditionalInfo() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get isPublic => $_getBF(13);

  @$pb.TagNumber(14)
  set isPublic($core.bool v) {
    $_setBool(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasIsPublic() => $_has(13);

  @$pb.TagNumber(14)
  void clearIsPublic() => clearField(14);

  @$pb.TagNumber(15)
  Chatbox_EventFrequency get eventFrequency => $_getN(14);

  @$pb.TagNumber(15)
  set eventFrequency(Chatbox_EventFrequency v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasEventFrequency() => $_has(14);

  @$pb.TagNumber(15)
  void clearEventFrequency() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get description => $_getSZ(15);

  @$pb.TagNumber(16)
  set description($core.String v) {
    $_setString(15, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasDescription() => $_has(15);

  @$pb.TagNumber(16)
  void clearDescription() => clearField(16);

  @$pb.TagNumber(17)
  $0.Any get extensions => $_getN(16);

  @$pb.TagNumber(17)
  set extensions($0.Any v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasExtensions() => $_has(16);

  @$pb.TagNumber(17)
  void clearExtensions() => clearField(17);

  @$pb.TagNumber(17)
  $0.Any ensureExtensions() => $_ensure(16);
}

class Image extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Image',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'imgUrl',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'smallImgUrl',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'mediumImgUrl',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'size',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'weight',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'height',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'mimeType',
        )
        ..a<$fixnum.Int64>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'key',
        )
        ..hasRequiredFields = false;

  Image._() : super();

  factory Image({
    $core.String? imgUrl,
    $core.String? smallImgUrl,
    $core.String? mediumImgUrl,
    $core.int? size,
    $core.int? weight,
    $core.int? height,
    $core.String? mimeType,
    $fixnum.Int64? id,
    $core.String? key,
  }) {
    final _result = create();
    if (imgUrl != null) {
      _result.imgUrl = imgUrl;
    }
    if (smallImgUrl != null) {
      _result.smallImgUrl = smallImgUrl;
    }
    if (mediumImgUrl != null) {
      _result.mediumImgUrl = mediumImgUrl;
    }
    if (size != null) {
      _result.size = size;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    if (height != null) {
      _result.height = height;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (id != null) {
      _result.id = id;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }

  factory Image.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Image.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Image clone() => Image()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Image copyWith(void Function(Image) updates) =>
      super.copyWith((message) => updates(message as Image)) as Image;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Image create() => Image._();

  Image createEmptyInstance() => create();

  static $pb.PbList<Image> createRepeated() => $pb.PbList<Image>();

  @$core.pragma('dart2js:noInline')
  static Image getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Image>(create);
  static Image? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgUrl => $_getSZ(0);

  @$pb.TagNumber(1)
  set imgUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasImgUrl() => $_has(0);

  @$pb.TagNumber(1)
  void clearImgUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get smallImgUrl => $_getSZ(1);

  @$pb.TagNumber(2)
  set smallImgUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSmallImgUrl() => $_has(1);

  @$pb.TagNumber(2)
  void clearSmallImgUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mediumImgUrl => $_getSZ(2);

  @$pb.TagNumber(3)
  set mediumImgUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMediumImgUrl() => $_has(2);

  @$pb.TagNumber(3)
  void clearMediumImgUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get size => $_getIZ(3);

  @$pb.TagNumber(4)
  set size($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);

  @$pb.TagNumber(4)
  void clearSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get weight => $_getIZ(4);

  @$pb.TagNumber(5)
  set weight($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasWeight() => $_has(4);

  @$pb.TagNumber(5)
  void clearWeight() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get height => $_getIZ(5);

  @$pb.TagNumber(6)
  set height($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(5);

  @$pb.TagNumber(6)
  void clearHeight() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get mimeType => $_getSZ(6);

  @$pb.TagNumber(7)
  set mimeType($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMimeType() => $_has(6);

  @$pb.TagNumber(7)
  void clearMimeType() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get id => $_getI64(7);

  @$pb.TagNumber(8)
  set id($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasId() => $_has(7);

  @$pb.TagNumber(8)
  void clearId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get key => $_getSZ(8);

  @$pb.TagNumber(9)
  set key($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasKey() => $_has(8);

  @$pb.TagNumber(9)
  void clearKey() => clearField(9);
}

class Video extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Video',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'videoUrl',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'coverUrl',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'smallCoverUrl',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'mediumCoverUrl',
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'size',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'duration',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'mimeType',
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'width',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'height',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'key',
        )
        ..hasRequiredFields = false;

  Video._() : super();

  factory Video({
    $core.String? videoUrl,
    $core.String? coverUrl,
    $core.String? smallCoverUrl,
    $core.String? mediumCoverUrl,
    $core.int? size,
    $core.int? duration,
    $core.String? mimeType,
    $core.int? width,
    $core.int? height,
    $fixnum.Int64? id,
    $core.String? key,
  }) {
    final _result = create();
    if (videoUrl != null) {
      _result.videoUrl = videoUrl;
    }
    if (coverUrl != null) {
      _result.coverUrl = coverUrl;
    }
    if (smallCoverUrl != null) {
      _result.smallCoverUrl = smallCoverUrl;
    }
    if (mediumCoverUrl != null) {
      _result.mediumCoverUrl = mediumCoverUrl;
    }
    if (size != null) {
      _result.size = size;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (id != null) {
      _result.id = id;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }

  factory Video.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Video.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Video clone() => Video()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Video copyWith(void Function(Video) updates) =>
      super.copyWith((message) => updates(message as Video)) as Video;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Video create() => Video._();

  Video createEmptyInstance() => create();

  static $pb.PbList<Video> createRepeated() => $pb.PbList<Video>();

  @$core.pragma('dart2js:noInline')
  static Video getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Video>(create);
  static Video? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get videoUrl => $_getSZ(0);

  @$pb.TagNumber(1)
  set videoUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVideoUrl() => $_has(0);

  @$pb.TagNumber(1)
  void clearVideoUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get coverUrl => $_getSZ(1);

  @$pb.TagNumber(2)
  set coverUrl($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCoverUrl() => $_has(1);

  @$pb.TagNumber(2)
  void clearCoverUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get smallCoverUrl => $_getSZ(2);

  @$pb.TagNumber(3)
  set smallCoverUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSmallCoverUrl() => $_has(2);

  @$pb.TagNumber(3)
  void clearSmallCoverUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mediumCoverUrl => $_getSZ(3);

  @$pb.TagNumber(4)
  set mediumCoverUrl($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMediumCoverUrl() => $_has(3);

  @$pb.TagNumber(4)
  void clearMediumCoverUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get size => $_getIZ(4);

  @$pb.TagNumber(5)
  set size($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);

  @$pb.TagNumber(5)
  void clearSize() => clearField(5);

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
  $core.String get mimeType => $_getSZ(6);

  @$pb.TagNumber(7)
  set mimeType($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMimeType() => $_has(6);

  @$pb.TagNumber(7)
  void clearMimeType() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get width => $_getIZ(7);

  @$pb.TagNumber(8)
  set width($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);

  @$pb.TagNumber(8)
  void clearWidth() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get height => $_getIZ(8);

  @$pb.TagNumber(9)
  set height($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);

  @$pb.TagNumber(9)
  void clearHeight() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get id => $_getI64(9);

  @$pb.TagNumber(10)
  set id($fixnum.Int64 v) {
    $_setInt64(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasId() => $_has(9);

  @$pb.TagNumber(10)
  void clearId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get key => $_getSZ(10);

  @$pb.TagNumber(11)
  set key($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasKey() => $_has(10);

  @$pb.TagNumber(11)
  void clearKey() => clearField(11);
}

class Voice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Voice',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'voiceUrl',
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'size',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'duration',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'mimeType',
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'key',
        )
        ..hasRequiredFields = false;

  Voice._() : super();

  factory Voice({
    $core.String? voiceUrl,
    $core.int? size,
    $core.int? duration,
    $core.String? mimeType,
    $fixnum.Int64? id,
    $core.String? key,
  }) {
    final _result = create();
    if (voiceUrl != null) {
      _result.voiceUrl = voiceUrl;
    }
    if (size != null) {
      _result.size = size;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (id != null) {
      _result.id = id;
    }
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }

  factory Voice.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Voice.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Voice clone() => Voice()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Voice copyWith(void Function(Voice) updates) =>
      super.copyWith((message) => updates(message as Voice)) as Voice;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Voice create() => Voice._();

  Voice createEmptyInstance() => create();

  static $pb.PbList<Voice> createRepeated() => $pb.PbList<Voice>();

  @$core.pragma('dart2js:noInline')
  static Voice getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Voice>(create);
  static Voice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get voiceUrl => $_getSZ(0);

  @$pb.TagNumber(1)
  set voiceUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasVoiceUrl() => $_has(0);

  @$pb.TagNumber(1)
  void clearVoiceUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get size => $_getIZ(1);

  @$pb.TagNumber(2)
  set size($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);

  @$pb.TagNumber(2)
  void clearSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);

  @$pb.TagNumber(3)
  set duration($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);

  @$pb.TagNumber(3)
  void clearDuration() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get mimeType => $_getSZ(3);

  @$pb.TagNumber(4)
  set mimeType($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMimeType() => $_has(3);

  @$pb.TagNumber(4)
  void clearMimeType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(4);

  @$pb.TagNumber(5)
  set id($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);

  @$pb.TagNumber(5)
  void clearId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get key => $_getSZ(5);

  @$pb.TagNumber(6)
  set key($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasKey() => $_has(5);

  @$pb.TagNumber(6)
  void clearKey() => clearField(6);
}

class RedPacket extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'RedPacket',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassIM(),
          ),
          createEmptyInstance: create,
        )
        ..e<RedPacket_PacketType>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OE,
          defaultOrMaker: RedPacket_PacketType.NORMAL,
          valueOf: RedPacket_PacketType.valueOf,
          enumValues: RedPacket_PacketType.values,
        )
        ..a<$core.double>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'amount',
          $pb.PbFieldType.OD,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'message',
        )
        ..a<$core.double>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'unitAmount',
          $pb.PbFieldType.OD,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'totalCount',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'receiveCount',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.double>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'receiveAmount',
          $pb.PbFieldType.OD,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'nickName',
        )
        ..aOS(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatarUrl',
        )
        ..pc<RedPacketDetail>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'details',
          $pb.PbFieldType.PM,
          subBuilder: RedPacketDetail.create,
        )
        ..hasRequiredFields = false;

  RedPacket._() : super();

  factory RedPacket({
    RedPacket_PacketType? type,
    $core.double? amount,
    $core.String? message,
    $core.double? unitAmount,
    $core.int? totalCount,
    $core.int? receiveCount,
    $core.double? receiveAmount,
    $core.int? status,
    $fixnum.Int64? id,
    $core.String? nickName,
    $core.String? avatarUrl,
    $core.Iterable<RedPacketDetail>? details,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (message != null) {
      _result.message = message;
    }
    if (unitAmount != null) {
      _result.unitAmount = unitAmount;
    }
    if (totalCount != null) {
      _result.totalCount = totalCount;
    }
    if (receiveCount != null) {
      _result.receiveCount = receiveCount;
    }
    if (receiveAmount != null) {
      _result.receiveAmount = receiveAmount;
    }
    if (status != null) {
      _result.status = status;
    }
    if (id != null) {
      _result.id = id;
    }
    if (nickName != null) {
      _result.nickName = nickName;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (details != null) {
      _result.details.addAll(details);
    }
    return _result;
  }

  factory RedPacket.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RedPacket.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RedPacket clone() => RedPacket()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RedPacket copyWith(void Function(RedPacket) updates) =>
      super.copyWith((message) => updates(message as RedPacket)) as RedPacket;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacket create() => RedPacket._();

  RedPacket createEmptyInstance() => create();

  static $pb.PbList<RedPacket> createRepeated() => $pb.PbList<RedPacket>();

  @$core.pragma('dart2js:noInline')
  static RedPacket getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedPacket>(create);
  static RedPacket? _defaultInstance;

  @$pb.TagNumber(1)
  RedPacket_PacketType get type => $_getN(0);

  @$pb.TagNumber(1)
  set type(RedPacket_PacketType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);

  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);

  @$pb.TagNumber(2)
  set amount($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);

  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);

  @$pb.TagNumber(3)
  set message($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);

  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get unitAmount => $_getN(3);

  @$pb.TagNumber(4)
  set unitAmount($core.double v) {
    $_setDouble(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUnitAmount() => $_has(3);

  @$pb.TagNumber(4)
  void clearUnitAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalCount => $_getIZ(4);

  @$pb.TagNumber(5)
  set totalCount($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTotalCount() => $_has(4);

  @$pb.TagNumber(5)
  void clearTotalCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get receiveCount => $_getIZ(5);

  @$pb.TagNumber(6)
  set receiveCount($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReceiveCount() => $_has(5);

  @$pb.TagNumber(6)
  void clearReceiveCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get receiveAmount => $_getN(6);

  @$pb.TagNumber(7)
  set receiveAmount($core.double v) {
    $_setDouble(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasReceiveAmount() => $_has(6);

  @$pb.TagNumber(7)
  void clearReceiveAmount() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get status => $_getIZ(7);

  @$pb.TagNumber(8)
  set status($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);

  @$pb.TagNumber(8)
  void clearStatus() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get id => $_getI64(8);

  @$pb.TagNumber(9)
  set id($fixnum.Int64 v) {
    $_setInt64(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasId() => $_has(8);

  @$pb.TagNumber(9)
  void clearId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get nickName => $_getSZ(9);

  @$pb.TagNumber(10)
  set nickName($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasNickName() => $_has(9);

  @$pb.TagNumber(10)
  void clearNickName() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get avatarUrl => $_getSZ(10);

  @$pb.TagNumber(11)
  set avatarUrl($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasAvatarUrl() => $_has(10);

  @$pb.TagNumber(11)
  void clearAvatarUrl() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<RedPacketDetail> get details => $_getList(11);
}

class RedPacketDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'RedPacketDetail',
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
              : 'packetId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.double>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'amount',
          $pb.PbFieldType.OD,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'receiveTime',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'nickName',
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatarUrl',
        )
        ..hasRequiredFields = false;

  RedPacketDetail._() : super();

  factory RedPacketDetail({
    $fixnum.Int64? packetId,
    $core.double? amount,
    $fixnum.Int64? receiveTime,
    $core.String? nickName,
    $core.String? avatarUrl,
  }) {
    final _result = create();
    if (packetId != null) {
      _result.packetId = packetId;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (receiveTime != null) {
      _result.receiveTime = receiveTime;
    }
    if (nickName != null) {
      _result.nickName = nickName;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    return _result;
  }

  factory RedPacketDetail.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RedPacketDetail.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RedPacketDetail clone() => RedPacketDetail()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RedPacketDetail copyWith(void Function(RedPacketDetail) updates) =>
      super.copyWith((message) => updates(message as RedPacketDetail))
          as RedPacketDetail;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedPacketDetail create() => RedPacketDetail._();

  RedPacketDetail createEmptyInstance() => create();

  static $pb.PbList<RedPacketDetail> createRepeated() =>
      $pb.PbList<RedPacketDetail>();

  @$core.pragma('dart2js:noInline')
  static RedPacketDetail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RedPacketDetail>(create);
  static RedPacketDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get packetId => $_getI64(0);

  @$pb.TagNumber(1)
  set packetId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPacketId() => $_has(0);

  @$pb.TagNumber(1)
  void clearPacketId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);

  @$pb.TagNumber(2)
  set amount($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);

  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get receiveTime => $_getI64(2);

  @$pb.TagNumber(3)
  set receiveTime($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReceiveTime() => $_has(2);

  @$pb.TagNumber(3)
  void clearReceiveTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get nickName => $_getSZ(3);

  @$pb.TagNumber(4)
  set nickName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNickName() => $_has(3);

  @$pb.TagNumber(4)
  void clearNickName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatarUrl => $_getSZ(4);

  @$pb.TagNumber(5)
  set avatarUrl($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAvatarUrl() => $_has(4);

  @$pb.TagNumber(5)
  void clearAvatarUrl() => clearField(5);
}

class Snap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Snap',
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
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'owner',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'unread',
          $pb.PbFieldType.O3,
        )
        ..a<$fixnum.Int64>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aInt64(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'createTime',
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'prevSnapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'ownerHead',
        )
        ..aOS(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'ownerName',
        )
        ..e<Snap_SnapType>(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OE,
          defaultOrMaker: Snap_SnapType.VIDEO_SNAP,
          valueOf: Snap_SnapType.valueOf,
          enumValues: Snap_SnapType.values,
        )
        ..aOS(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'textContent',
        )
        ..aOM<Voice>(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'voice',
          subBuilder: Voice.create,
        )
        ..aOM<Image>(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'image',
          subBuilder: Image.create,
        )
        ..aOM<Video>(
          13,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'video',
          subBuilder: Video.create,
        )
        ..aOS(
          14,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'jsonContent',
        )
        ..a<$fixnum.Int64>(
          15,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'localId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$0.Any>(
          16,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..a<$fixnum.Int64>(
          17,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'redPacketId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..pc<Image>(
          18,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'multiImages',
          $pb.PbFieldType.PM,
          subBuilder: Image.create,
        )
        ..a<$fixnum.Int64>(
          19,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'repliedSnapId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<Snap>(
          20,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'repliedSnap',
          subBuilder: Snap.create,
        )
        ..a<$core.int>(
          21,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          22,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'blocks',
        )
        ..aOM<$2.Location>(
          23,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'location',
          subBuilder: $2.Location.create,
        )
        ..hasRequiredFields = false;

  Snap._() : super();

  factory Snap({
    $fixnum.Int64? id,
    $fixnum.Int64? owner,
    $core.int? unread,
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? createTime,
    $fixnum.Int64? prevSnapId,
    $core.String? ownerHead,
    $core.String? ownerName,
    Snap_SnapType? type,
    $core.String? textContent,
    Voice? voice,
    Image? image,
    Video? video,
    $core.String? jsonContent,
    $fixnum.Int64? localId,
    $0.Any? extensions,
    $fixnum.Int64? redPacketId,
    $core.Iterable<Image>? multiImages,
    $fixnum.Int64? repliedSnapId,
    Snap? repliedSnap,
    $core.int? status,
    $core.String? blocks,
    $2.Location? location,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (unread != null) {
      _result.unread = unread;
    }
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    if (prevSnapId != null) {
      _result.prevSnapId = prevSnapId;
    }
    if (ownerHead != null) {
      _result.ownerHead = ownerHead;
    }
    if (ownerName != null) {
      _result.ownerName = ownerName;
    }
    if (type != null) {
      _result.type = type;
    }
    if (textContent != null) {
      _result.textContent = textContent;
    }
    if (voice != null) {
      _result.voice = voice;
    }
    if (image != null) {
      _result.image = image;
    }
    if (video != null) {
      _result.video = video;
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
    if (redPacketId != null) {
      _result.redPacketId = redPacketId;
    }
    if (multiImages != null) {
      _result.multiImages.addAll(multiImages);
    }
    if (repliedSnapId != null) {
      _result.repliedSnapId = repliedSnapId;
    }
    if (repliedSnap != null) {
      _result.repliedSnap = repliedSnap;
    }
    if (status != null) {
      _result.status = status;
    }
    if (blocks != null) {
      _result.blocks = blocks;
    }
    if (location != null) {
      _result.location = location;
    }
    return _result;
  }

  factory Snap.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Snap.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Snap clone() => Snap()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Snap copyWith(void Function(Snap) updates) =>
      super.copyWith((message) => updates(message as Snap)) as Snap;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Snap create() => Snap._();

  Snap createEmptyInstance() => create();

  static $pb.PbList<Snap> createRepeated() => $pb.PbList<Snap>();

  @$core.pragma('dart2js:noInline')
  static Snap getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Snap>(create);
  static Snap? _defaultInstance;

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
  $fixnum.Int64 get owner => $_getI64(1);

  @$pb.TagNumber(2)
  set owner($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);

  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get unread => $_getIZ(2);

  @$pb.TagNumber(3)
  set unread($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUnread() => $_has(2);

  @$pb.TagNumber(3)
  void clearUnread() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get chatboxId => $_getI64(3);

  @$pb.TagNumber(4)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasChatboxId() => $_has(3);

  @$pb.TagNumber(4)
  void clearChatboxId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createTime => $_getI64(4);

  @$pb.TagNumber(5)
  set createTime($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCreateTime() => $_has(4);

  @$pb.TagNumber(5)
  void clearCreateTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get prevSnapId => $_getI64(5);

  @$pb.TagNumber(6)
  set prevSnapId($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasPrevSnapId() => $_has(5);

  @$pb.TagNumber(6)
  void clearPrevSnapId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ownerHead => $_getSZ(6);

  @$pb.TagNumber(7)
  set ownerHead($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasOwnerHead() => $_has(6);

  @$pb.TagNumber(7)
  void clearOwnerHead() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get ownerName => $_getSZ(7);

  @$pb.TagNumber(8)
  set ownerName($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasOwnerName() => $_has(7);

  @$pb.TagNumber(8)
  void clearOwnerName() => clearField(8);

  @$pb.TagNumber(9)
  Snap_SnapType get type => $_getN(8);

  @$pb.TagNumber(9)
  set type(Snap_SnapType v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasType() => $_has(8);

  @$pb.TagNumber(9)
  void clearType() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get textContent => $_getSZ(9);

  @$pb.TagNumber(10)
  set textContent($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasTextContent() => $_has(9);

  @$pb.TagNumber(10)
  void clearTextContent() => clearField(10);

  @$pb.TagNumber(11)
  Voice get voice => $_getN(10);

  @$pb.TagNumber(11)
  set voice(Voice v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasVoice() => $_has(10);

  @$pb.TagNumber(11)
  void clearVoice() => clearField(11);

  @$pb.TagNumber(11)
  Voice ensureVoice() => $_ensure(10);

  @$pb.TagNumber(12)
  Image get image => $_getN(11);

  @$pb.TagNumber(12)
  set image(Image v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasImage() => $_has(11);

  @$pb.TagNumber(12)
  void clearImage() => clearField(12);

  @$pb.TagNumber(12)
  Image ensureImage() => $_ensure(11);

  @$pb.TagNumber(13)
  Video get video => $_getN(12);

  @$pb.TagNumber(13)
  set video(Video v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasVideo() => $_has(12);

  @$pb.TagNumber(13)
  void clearVideo() => clearField(13);

  @$pb.TagNumber(13)
  Video ensureVideo() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.String get jsonContent => $_getSZ(13);

  @$pb.TagNumber(14)
  set jsonContent($core.String v) {
    $_setString(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasJsonContent() => $_has(13);

  @$pb.TagNumber(14)
  void clearJsonContent() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get localId => $_getI64(14);

  @$pb.TagNumber(15)
  set localId($fixnum.Int64 v) {
    $_setInt64(14, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasLocalId() => $_has(14);

  @$pb.TagNumber(15)
  void clearLocalId() => clearField(15);

  @$pb.TagNumber(16)
  $0.Any get extensions => $_getN(15);

  @$pb.TagNumber(16)
  set extensions($0.Any v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasExtensions() => $_has(15);

  @$pb.TagNumber(16)
  void clearExtensions() => clearField(16);

  @$pb.TagNumber(16)
  $0.Any ensureExtensions() => $_ensure(15);

  @$pb.TagNumber(17)
  $fixnum.Int64 get redPacketId => $_getI64(16);

  @$pb.TagNumber(17)
  set redPacketId($fixnum.Int64 v) {
    $_setInt64(16, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasRedPacketId() => $_has(16);

  @$pb.TagNumber(17)
  void clearRedPacketId() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<Image> get multiImages => $_getList(17);

  @$pb.TagNumber(19)
  $fixnum.Int64 get repliedSnapId => $_getI64(18);

  @$pb.TagNumber(19)
  set repliedSnapId($fixnum.Int64 v) {
    $_setInt64(18, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasRepliedSnapId() => $_has(18);

  @$pb.TagNumber(19)
  void clearRepliedSnapId() => clearField(19);

  @$pb.TagNumber(20)
  Snap get repliedSnap => $_getN(19);

  @$pb.TagNumber(20)
  set repliedSnap(Snap v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasRepliedSnap() => $_has(19);

  @$pb.TagNumber(20)
  void clearRepliedSnap() => clearField(20);

  @$pb.TagNumber(20)
  Snap ensureRepliedSnap() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.int get status => $_getIZ(20);

  @$pb.TagNumber(21)
  set status($core.int v) {
    $_setUnsignedInt32(20, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasStatus() => $_has(20);

  @$pb.TagNumber(21)
  void clearStatus() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get blocks => $_getSZ(21);

  @$pb.TagNumber(22)
  set blocks($core.String v) {
    $_setString(21, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasBlocks() => $_has(21);

  @$pb.TagNumber(22)
  void clearBlocks() => clearField(22);

  @$pb.TagNumber(23)
  $2.Location get location => $_getN(22);

  @$pb.TagNumber(23)
  set location($2.Location v) {
    setField(23, v);
  }

  @$pb.TagNumber(23)
  $core.bool hasLocation() => $_has(22);

  @$pb.TagNumber(23)
  void clearLocation() => clearField(23);

  @$pb.TagNumber(23)
  $2.Location ensureLocation() => $_ensure(22);
}

class BuddyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'BuddyRequest',
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
              : 'id',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aOM<$2.User>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'fromUser',
          subBuilder: $2.User.create,
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..aOB(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'hasSnap',
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatboxId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..aInt64(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'updateTime',
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'unread',
          $pb.PbFieldType.O3,
        )
        ..hasRequiredFields = false;

  BuddyRequest._() : super();

  factory BuddyRequest({
    $fixnum.Int64? id,
    $2.User? fromUser,
    $core.String? msg,
    $core.bool? hasSnap,
    $fixnum.Int64? chatboxId,
    $fixnum.Int64? updateTime,
    $core.int? unread,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (fromUser != null) {
      _result.fromUser = fromUser;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (hasSnap != null) {
      _result.hasSnap = hasSnap;
    }
    if (chatboxId != null) {
      _result.chatboxId = chatboxId;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    if (unread != null) {
      _result.unread = unread;
    }
    return _result;
  }

  factory BuddyRequest.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory BuddyRequest.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  BuddyRequest clone() => BuddyRequest()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  BuddyRequest copyWith(void Function(BuddyRequest) updates) =>
      super.copyWith((message) => updates(message as BuddyRequest))
          as BuddyRequest;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuddyRequest create() => BuddyRequest._();

  BuddyRequest createEmptyInstance() => create();

  static $pb.PbList<BuddyRequest> createRepeated() =>
      $pb.PbList<BuddyRequest>();

  @$core.pragma('dart2js:noInline')
  static BuddyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BuddyRequest>(create);
  static BuddyRequest? _defaultInstance;

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
  $2.User get fromUser => $_getN(1);

  @$pb.TagNumber(2)
  set fromUser($2.User v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromUser() => $_has(1);

  @$pb.TagNumber(2)
  void clearFromUser() => clearField(2);

  @$pb.TagNumber(2)
  $2.User ensureFromUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get msg => $_getSZ(2);

  @$pb.TagNumber(3)
  set msg($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMsg() => $_has(2);

  @$pb.TagNumber(3)
  void clearMsg() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get hasSnap => $_getBF(3);

  @$pb.TagNumber(4)
  set hasSnap($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHasSnap() => $_has(3);

  @$pb.TagNumber(4)
  void clearHasSnap() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get chatboxId => $_getI64(4);

  @$pb.TagNumber(5)
  set chatboxId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasChatboxId() => $_has(4);

  @$pb.TagNumber(5)
  void clearChatboxId() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updateTime => $_getI64(5);

  @$pb.TagNumber(6)
  set updateTime($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUpdateTime() => $_has(5);

  @$pb.TagNumber(6)
  void clearUpdateTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get unread => $_getIZ(6);

  @$pb.TagNumber(7)
  set unread($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasUnread() => $_has(6);

  @$pb.TagNumber(7)
  void clearUnread() => clearField(7);
}
