import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pbenum.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_stroke.dart';
import 'kaye_lead_sasquatch.dart';

class KayeLeadBanality {
  int? id;
  int? type;
  String? name;
  String? coverURL;
  int? owner;
  String? qrCodeURL;
  int? weight;
  bool? muted;
  int? unreadCount;
  int? updateTime;
  String? additionalInfo;
  String? desc;
  bool? serviceChat = false;
  bool? hasChat;
  int? lastReadSnapTime;
  int? clearCacheTime;
  int? displayTime;
  int? lastSnapSendStatus;
  int? partnerId;

  int? lastSnapType;
  String? lastSnapTextContent;
  String? lastSnapJsonContent;
  int? lastSnapCreateTime;

  List<KayeLeadSasquatch>? members;
  KayeLeadSasquatch? chatUser;

  List<InlineSpan>? lastContent;

  KayeLeadBanality();

  @override
  int get hashCode => id ?? 0;

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    return other is KayeLeadBanality && id == other.id;
  }

  void replaceMember(KayeLeadSasquatch user) {
    final index = members?.indexOf(user) ?? -1;
    if (index > -1) {
      members?.removeAt(index);
      members?.insert(index, user);
    }
  }

  String? get showName {
    return chatUser?.nickName;
  }

  String? get showCoverURL {
    return chatUser?.avatarUrl;
  }

  bool get isTop => (weight ?? 0) > 0;

  set isTop(bool isTop) => weight = isTop ? 1 : 0;

  bool get isSingle => type == Chatbox_Type.SINGLE.value;

  bool get isGroup => type == Chatbox_Type.GROUP.value;

  List<KayeLeadSasquatch>? get chatUsers =>
      members?.where((user) => user.uid != KAYE.uid()).toList();

  factory KayeLeadBanality.fromJson(Map<String, dynamic> json) =>
      KayeLeadBanality()
        ..id = (json['id'] as num?)?.toInt()
        ..type = (json['type'] as num?)?.toInt()
        ..name = json['name'] as String?
        ..coverURL = json['coverURL'] as String?
        ..owner = (json['owner'] as num?)?.toInt()
        ..qrCodeURL = json['qrCodeURL'] as String?
        ..weight = (json['weight'] as num?)?.toInt()
        ..muted = json['muted'] as bool?
        ..unreadCount = (json['unreadCount'] as num?)?.toInt()
        ..updateTime = (json['updateTime'] as num?)?.toInt()
        ..additionalInfo = json['additionalInfo'] as String?
        ..desc = json['desc'] as String?
        ..serviceChat = json['serviceChat'] as bool?
        ..hasChat = json['hasChat'] as bool?
        ..lastReadSnapTime = (json['lastReadSnapTime'] as num?)?.toInt()
        ..clearCacheTime = (json['clearCacheTime'] as num?)?.toInt()
        ..displayTime = (json['displayTime'] as num?)?.toInt()
        ..lastSnapSendStatus = (json['lastSnapSendStatus'] as num?)?.toInt()
        ..isTop = json['isTop'] as bool;

  Map<String, dynamic> toJson(KayeLeadBanality instance) => <String, dynamic>{
    'id': instance.id,
    'type': instance.type,
    'name': instance.name,
    'coverURL': instance.coverURL,
    'owner': instance.owner,
    'qrCodeURL': instance.qrCodeURL,
    'weight': instance.weight,
    'muted': instance.muted,
    'unreadCount': instance.unreadCount,
    'updateTime': instance.updateTime,
    'additionalInfo': instance.additionalInfo,
    'desc': instance.desc,
    'serviceChat': instance.serviceChat,
    'hasChat': instance.hasChat,
    'lastReadSnapTime': instance.lastReadSnapTime,
    'clearCacheTime': instance.clearCacheTime,
    'displayTime': instance.displayTime,
    'lastSnapSendStatus': instance.lastSnapSendStatus,
    'isTop': instance.isTop,
  };
}
