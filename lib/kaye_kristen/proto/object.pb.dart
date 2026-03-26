import 'dart:core' as $core;

import 'package:kaye/kaye_kristen/proto/kaye_fermion_bizarre.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/any.pb.dart' as $0;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'User',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
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
              : 'displayName',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatarUrl',
        )
        ..aOS(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'birthday',
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'gender',
          $pb.PbFieldType.O3,
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'mobile',
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'relation',
          $pb.PbFieldType.O3,
        )
        ..aOS(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'qrcodeUrl',
        )
        ..a<$core.int>(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.O3,
        )
        ..aOS(
          11,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'ucode',
        )
        ..aOS(
          12,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'tagJSON',
          protoName: 'tagJSON',
        )
        ..aOS(
          13,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'signature',
        )
        ..aOS(
          14,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'constellation',
        )
        ..aOM<$0.Any>(
          15,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'extensions',
          subBuilder: $0.Any.create,
        )
        ..hasRequiredFields = false;

  User._() : super();

  factory User({
    $fixnum.Int64? uid,
    $core.String? nickName,
    $core.String? displayName,
    $core.String? avatarUrl,
    $core.String? birthday,
    $core.int? gender,
    $core.String? mobile,
    $core.int? relation,
    $core.String? qrcodeUrl,
    $core.int? status,
    $core.String? ucode,
    $core.String? tagJSON,
    $core.String? signature,
    $core.String? constellation,
    $0.Any? extensions,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (nickName != null) {
      _result.nickName = nickName;
    }
    if (displayName != null) {
      _result.displayName = displayName;
    }
    if (avatarUrl != null) {
      _result.avatarUrl = avatarUrl;
    }
    if (birthday != null) {
      _result.birthday = birthday;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (mobile != null) {
      _result.mobile = mobile;
    }
    if (relation != null) {
      _result.relation = relation;
    }
    if (qrcodeUrl != null) {
      _result.qrcodeUrl = qrcodeUrl;
    }
    if (status != null) {
      _result.status = status;
    }
    if (ucode != null) {
      _result.ucode = ucode;
    }
    if (tagJSON != null) {
      _result.tagJSON = tagJSON;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    if (constellation != null) {
      _result.constellation = constellation;
    }
    if (extensions != null) {
      _result.extensions = extensions;
    }
    return _result;
  }

  factory User.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory User.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  User clone() => User()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();

  User createEmptyInstance() => create();

  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();

  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

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
  $core.String get displayName => $_getSZ(2);

  @$pb.TagNumber(3)
  set displayName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDisplayName() => $_has(2);

  @$pb.TagNumber(3)
  void clearDisplayName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatarUrl => $_getSZ(3);

  @$pb.TagNumber(4)
  set avatarUrl($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasAvatarUrl() => $_has(3);

  @$pb.TagNumber(4)
  void clearAvatarUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get birthday => $_getSZ(4);

  @$pb.TagNumber(5)
  set birthday($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasBirthday() => $_has(4);

  @$pb.TagNumber(5)
  void clearBirthday() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get gender => $_getIZ(5);

  @$pb.TagNumber(6)
  set gender($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasGender() => $_has(5);

  @$pb.TagNumber(6)
  void clearGender() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get mobile => $_getSZ(6);

  @$pb.TagNumber(7)
  set mobile($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMobile() => $_has(6);

  @$pb.TagNumber(7)
  void clearMobile() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get relation => $_getIZ(7);

  @$pb.TagNumber(8)
  set relation($core.int v) {
    $_setSignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasRelation() => $_has(7);

  @$pb.TagNumber(8)
  void clearRelation() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get qrcodeUrl => $_getSZ(8);

  @$pb.TagNumber(9)
  set qrcodeUrl($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasQrcodeUrl() => $_has(8);

  @$pb.TagNumber(9)
  void clearQrcodeUrl() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get status => $_getIZ(9);

  @$pb.TagNumber(10)
  set status($core.int v) {
    $_setSignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(9);

  @$pb.TagNumber(10)
  void clearStatus() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get ucode => $_getSZ(10);

  @$pb.TagNumber(11)
  set ucode($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasUcode() => $_has(10);

  @$pb.TagNumber(11)
  void clearUcode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get tagJSON => $_getSZ(11);

  @$pb.TagNumber(12)
  set tagJSON($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTagJSON() => $_has(11);

  @$pb.TagNumber(12)
  void clearTagJSON() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get signature => $_getSZ(12);

  @$pb.TagNumber(13)
  set signature($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasSignature() => $_has(12);

  @$pb.TagNumber(13)
  void clearSignature() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get constellation => $_getSZ(13);

  @$pb.TagNumber(14)
  set constellation($core.String v) {
    $_setString(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasConstellation() => $_has(13);

  @$pb.TagNumber(14)
  void clearConstellation() => clearField(14);

  @$pb.TagNumber(15)
  $0.Any get extensions => $_getN(14);

  @$pb.TagNumber(15)
  set extensions($0.Any v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasExtensions() => $_has(14);

  @$pb.TagNumber(15)
  void clearExtensions() => clearField(15);

  @$pb.TagNumber(15)
  $0.Any ensureExtensions() => $_ensure(14);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Location',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.double>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'longitude',
          $pb.PbFieldType.OD,
        )
        ..a<$core.double>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'latitude',
          $pb.PbFieldType.OD,
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
              : 'desc',
        )
        ..hasRequiredFields = false;

  Location._() : super();

  factory Location({
    $core.double? longitude,
    $core.double? latitude,
    $core.String? name,
    $core.String? desc,
  }) {
    final _result = create();
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (name != null) {
      _result.name = name;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    return _result;
  }

  factory Location.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Location.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Location clone() => Location()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Location copyWith(void Function(Location) updates) =>
      super.copyWith((message) => updates(message as Location)) as Location;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();

  Location createEmptyInstance() => create();

  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();

  @$core.pragma('dart2js:noInline')
  static Location getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get longitude => $_getN(0);

  @$pb.TagNumber(1)
  set longitude($core.double v) {
    $_setDouble(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLongitude() => $_has(0);

  @$pb.TagNumber(1)
  void clearLongitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get latitude => $_getN(1);

  @$pb.TagNumber(2)
  set latitude($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLatitude() => $_has(1);

  @$pb.TagNumber(2)
  void clearLatitude() => clearField(2);

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
  $core.String get desc => $_getSZ(3);

  @$pb.TagNumber(4)
  set desc($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);

  @$pb.TagNumber(4)
  void clearDesc() => clearField(4);
}

class Advertisement extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Advertisement',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
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
              : 'imgUrl',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'contentUrl',
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'startTime',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'endTime',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'residenceTime',
          $pb.PbFieldType.O3,
        )
        ..hasRequiredFields = false;

  Advertisement._() : super();

  factory Advertisement({
    $fixnum.Int64? id,
    $core.int? type,
    $core.String? imgUrl,
    $core.String? contentUrl,
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
    $core.int? residenceTime,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (imgUrl != null) {
      _result.imgUrl = imgUrl;
    }
    if (contentUrl != null) {
      _result.contentUrl = contentUrl;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (residenceTime != null) {
      _result.residenceTime = residenceTime;
    }
    return _result;
  }

  factory Advertisement.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Advertisement.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Advertisement clone() => Advertisement()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Advertisement copyWith(void Function(Advertisement) updates) =>
      super.copyWith((message) => updates(message as Advertisement))
          as Advertisement;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Advertisement create() => Advertisement._();

  Advertisement createEmptyInstance() => create();

  static $pb.PbList<Advertisement> createRepeated() =>
      $pb.PbList<Advertisement>();

  @$core.pragma('dart2js:noInline')
  static Advertisement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Advertisement>(create);
  static Advertisement? _defaultInstance;

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
  $core.String get imgUrl => $_getSZ(2);

  @$pb.TagNumber(3)
  set imgUrl($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasImgUrl() => $_has(2);

  @$pb.TagNumber(3)
  void clearImgUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contentUrl => $_getSZ(3);

  @$pb.TagNumber(4)
  set contentUrl($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasContentUrl() => $_has(3);

  @$pb.TagNumber(4)
  void clearContentUrl() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get startTime => $_getI64(4);

  @$pb.TagNumber(5)
  set startTime($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasStartTime() => $_has(4);

  @$pb.TagNumber(5)
  void clearStartTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get endTime => $_getI64(5);

  @$pb.TagNumber(6)
  set endTime($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasEndTime() => $_has(5);

  @$pb.TagNumber(6)
  void clearEndTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get residenceTime => $_getIZ(6);

  @$pb.TagNumber(7)
  set residenceTime($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasResidenceTime() => $_has(6);

  @$pb.TagNumber(7)
  void clearResidenceTime() => clearField(7);
}

class Country extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'Country',
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
              : 'code',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'name',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'icon',
        )
        ..hasRequiredFields = false;

  Country._() : super();

  factory Country({
    $core.String? code,
    $core.String? name,
    $core.String? icon,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (name != null) {
      _result.name = name;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    return _result;
  }

  factory Country.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory Country.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  Country clone() => Country()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  Country copyWith(void Function(Country) updates) =>
      super.copyWith((message) => updates(message as Country)) as Country;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Country create() => Country._();

  Country createEmptyInstance() => create();

  static $pb.PbList<Country> createRepeated() => $pb.PbList<Country>();

  @$core.pragma('dart2js:noInline')
  static Country getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Country>(create);
  static Country? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);

  @$pb.TagNumber(1)
  set code($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

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
  $core.String get icon => $_getSZ(2);

  @$pb.TagNumber(3)
  set icon($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIcon() => $_has(2);

  @$pb.TagNumber(3)
  void clearIcon() => clearField(3);
}

class UserCoupon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UserCoupon',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.kayeJackassFrank(),
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
              : 'couponId',
          $pb.PbFieldType.OU6,
          protoName: 'couponId',
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'diamondAmount',
          $pb.PbFieldType.O3,
          protoName: 'diamondAmount',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.O3,
        )
        ..a<$fixnum.Int64>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'vipDuration',
          $pb.PbFieldType.OU6,
          protoName: 'vipDuration',
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$fixnum.Int64>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'expireTime',
          $pb.PbFieldType.OU6,
          protoName: 'expireTime',
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  UserCoupon._() : super();

  factory UserCoupon({
    $fixnum.Int64? id,
    $fixnum.Int64? couponId,
    $core.int? diamondAmount,
    $core.int? status,
    $fixnum.Int64? vipDuration,
    $fixnum.Int64? expireTime,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (couponId != null) {
      _result.couponId = couponId;
    }
    if (diamondAmount != null) {
      _result.diamondAmount = diamondAmount;
    }
    if (status != null) {
      _result.status = status;
    }
    if (vipDuration != null) {
      _result.vipDuration = vipDuration;
    }
    if (expireTime != null) {
      _result.expireTime = expireTime;
    }
    return _result;
  }

  factory UserCoupon.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UserCoupon.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UserCoupon clone() => UserCoupon()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UserCoupon copyWith(void Function(UserCoupon) updates) =>
      super.copyWith((message) => updates(message as UserCoupon)) as UserCoupon;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserCoupon create() => UserCoupon._();

  UserCoupon createEmptyInstance() => create();

  static $pb.PbList<UserCoupon> createRepeated() => $pb.PbList<UserCoupon>();

  @$core.pragma('dart2js:noInline')
  static UserCoupon getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserCoupon>(create);
  static UserCoupon? _defaultInstance;

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
  $fixnum.Int64 get couponId => $_getI64(1);

  @$pb.TagNumber(2)
  set couponId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCouponId() => $_has(1);

  @$pb.TagNumber(2)
  void clearCouponId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get diamondAmount => $_getIZ(2);

  @$pb.TagNumber(3)
  set diamondAmount($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDiamondAmount() => $_has(2);

  @$pb.TagNumber(3)
  void clearDiamondAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);

  @$pb.TagNumber(4)
  set status($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);

  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get vipDuration => $_getI64(4);

  @$pb.TagNumber(5)
  set vipDuration($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasVipDuration() => $_has(4);

  @$pb.TagNumber(5)
  void clearVipDuration() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get expireTime => $_getI64(5);

  @$pb.TagNumber(6)
  set expireTime($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasExpireTime() => $_has(5);

  @$pb.TagNumber(6)
  void clearExpireTime() => clearField(6);
}
