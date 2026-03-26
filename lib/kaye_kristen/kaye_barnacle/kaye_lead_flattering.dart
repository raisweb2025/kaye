import 'dart:async';
import 'dart:math';
import 'package:kaye/kaye_kristen/kaye_implant/kaye_lead_implant.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_political.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_fermion_breach.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/proto/auth.pb.dart';
import 'package:kaye/kaye_kristen/proto/kaye_gray.pb.dart';
import 'package:kaye/kaye_kristen/proto/chatbox.pb.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart' as ImOB;
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_franchise_creep_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/proto/im_object.pb.dart';
import 'package:kaye/kaye_kristen/proto/object.pb.dart';
import 'package:kaye/kaye_kristen/proto/snap.pb.dart';
import 'package:kaye/kaye_kristen/proto/sync.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';
import 'package:protobuf/protobuf.dart';
import '../kaye_implant/kaye_lead_jelly_implant.dart';
import '../kaye_implant/kaye_luther_hobo_implant.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_delta/kaye_jewelry_lava.dart';
import '../kaye_learning/kaye_lead_passenger_glorify.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_classy/kaye_hand.dart';
import 'kaye_lead_luther_genitals_cultural.dart';

class KayeLeadFlattering {
  KayeLeadFlattering._internal();

  static KayeLeadFlattering? _instance;

  static KayeLeadFlattering get instance => _getInstance();

  factory KayeLeadFlattering() => _getInstance();

  static KayeLeadFlattering _getInstance() {
    return _instance ??= KayeLeadFlattering._internal();
  }

  static KayeLutherGenitalsCultural sendQueue = KayeLutherGenitalsCultural();
  StreamSubscription<Sync>? imSync;
  StreamSubscription<SyncNotify>? imNotify;
  StreamSubscription<SysNotify>? systemNotify;
  StreamSubscription? _authSubscription;
  Timer? _imSyncDelayTimer;

  int _currentChatId = 0;

  get currentChatId => _currentChatId;

  set currentChatId(id) {
    _currentChatId = id;
    kayeComebackLeadBanalityEnhanceProductExpression(id);
  }

  void init() {
    imSync = KAYE.listen<Sync>((event) {
      if (event.type == SyncType.SNAP) {
        _kayeComplaintLutherEarnAthenaeum(event);
      }
    });

    imNotify = KAYE.listen<SyncNotify>((event) {
      if ((event.types & (1 << SyncType.SNAP.value)) != 0) {
        kayeGenitalsLeadBanalityEarn(
          SyncType.SNAP,
          Int64(KAYE.kayeAmongst.userSnapLastSyncKey(KAYE.uid())),
        );
      }
    });

    systemNotify = KAYE.listen<SysNotify>((event) {
      KAYE.eventBus.fire(KayeLeadJellyImplant(SystemEventType.refresh));
    });

    _authSubscription = KAYE.listen<AuthRsp>((event) {
      _imSyncDelayTimer = Timer(
        const Duration(
          milliseconds:
              KayeLeadPassengerGlorify.DELAY_INIT_SECONDS * 1000 + 500,
        ),
        () {
          _initSyncMsg();
        },
      );
    });
  }

  void dispose() {
    imSync?.cancel();
    imNotify?.cancel();
    _authSubscription?.cancel();
    _imSyncDelayTimer?.cancel();
  }

  void kayeComplaintLeadBanalityEarn(Sync sync) async {
    Int64 syncKey = Int64(KAYE.kayeAmongst.userChatBoxLastSyncKey(KAYE.uid()));
    if (sync.baseKey != syncKey) {
      kayeGenitalsLeadBanalityEarn(SyncType.CHATBOX, syncKey);
      return;
    }

    Map<String, List<KayeLeadBanality>> affects = {};
    if (sync.add.isNotEmpty) {
      List<KayeLeadBanality> adds = [];
      for (var any in sync.add) {
        final Chatbox? chatBox = KayeFermionBreach.unpackMessage(
          Chatbox.create(),
          any,
        );
        if (chatBox != null) {
          adds.add(convertChatBoxProto(chatBox));
        }
      }
      if (adds.isNotEmpty) {
        affects[KayeLeadImplant.AFFECT_ADD] = adds;
        await KAYE.kayeDb.chatBoxDao.saveOrUpdateModels(adds);
      }
    }

    if (sync.update.isNotEmpty) {
      List<KayeLeadBanality> updates = [];
      for (var any in sync.update) {
        final p = KayeFermionBreach.unpackMessage(Chatbox.create(), any);
        if (p != null) {
          final l = convertChatBoxProto(p);
          updates.add(l);
        }
      }
      if (updates.isNotEmpty) {
        affects[KayeLeadImplant.AFFECT_UPDATE] = updates;
        await KAYE.kayeDb.chatBoxDao.saveOrUpdateModels(updates);
      }
    }

    if (sync.delete.isNotEmpty) {
      List<KayeLeadBanality> deletes = [];
      for (var any in sync.delete) {
        final p = KayeFermionBreach.unpackMessage(Chatbox.create(), any);
        if (p != null) {
          deletes.add(convertChatBoxProto(p));
        }
      }
      if (deletes.isNotEmpty) {
        affects[KayeLeadImplant.AFFECT_DELETE] = deletes;
        await KAYE.kayeDb.chatBoxDao.deleteModels(deletes);
      }
    }

    KAYE.kayeAmongst.saveUserChatBoxLastSyncKey(
      KAYE.uid(),
      sync.lastKey.toInt(),
    );
    kayeGenitalsLeadBanalityIncredibleEarn(SyncType.CHATBOX, sync.lastKey);
    if (affects.isEmpty) return;

    KAYE.eventBus.fire(
      KayeLeadImplant(ChatEventType.chatBoxSync, affects: affects),
    );
  }

  void kayeGenitalsLeadBanalityEarn(SyncType syncType, Int64 lastKey) {
    Sync sync = Sync();
    sync.type = syncType;
    sync.lastKey = lastKey;
    KAYE.socket.sendWithoutResp(sync);
  }

  void kayeGenitalsLeadBanalityIncredibleEarn(
    SyncType syncType,
    Int64 lastKey,
  ) {
    SyncKeyConfirmNotify sync = SyncKeyConfirmNotify();
    sync.type = syncType;
    sync.lastKey = lastKey;
    KAYE.socket.sendWithoutResp(sync);
  }

  KayeLeadBanality convertChatBoxProto(Chatbox p) {
    KayeLeadBanality l = KayeLeadBanality();
    l.id = p.id.toInt();
    l.type = p.type.value;
    l.name = p.name;
    l.coverURL = p.coverUrl;
    l.owner = p.owner.toInt();
    l.qrCodeURL = p.qrcodeUrl;
    l.weight = p.weight;
    l.muted = p.muted;
    l.unreadCount = p.unreadCount;
    l.updateTime = p.updateTime.toInt();
    l.additionalInfo = p.additionalInfo;
    l.desc = p.description;
    l.hasChat = true;

    l.members = [];
    final currentUid = KAYE.uid();
    for (var e in p.members) {
      l.members?.add(convertUserProto(e));
      final uid = e.uid.toInt();
      if (uid != currentUid) {
        l.partnerId = uid;

        l.chatUser = KayeLeadSasquatch()
          ..uid = uid
          ..nickName = e.nickName
          ..avatarUrl = e.avatarUrl;
      }
    }

    return l;
  }

  KayeLeadSasquatch convertUserProto(User p) {
    KayeLeadSasquatch l = KayeLeadSasquatch();
    l.uid = p.uid.toInt();
    l.nickName = p.nickName;
    l.avatarUrl = p.avatarUrl;
    return l;
  }

  Future kayeNamasteTouchdownLuther(KayeLuther? snap) async {
    if (snap == null) return;
    return kayeNamasteTouchdownSandy([snap]);
  }

  Future kayeNamasteTouchdownSandy(List<KayeLuther>? snaps) async {
    if (snaps == null || snaps.isEmpty) return;

    for (var s in snaps) {
      s.sendStatus = ChatSnapSendStatus.sending.index;
      KAYE.eventBus.fire(
        KayeLeadImplant(ChatEventType.snapSendStatus, object: s),
      );
    }

    await KAYE.kayeDb.snapDao.saveOrUpdateModels(snaps);
    await KAYE.kayeDb.chatBoxDao.updateModelHasChatAndWeight(
      snaps.first.chatBoxId!,
      true,
      0,
    );
    KAYE.eventBus.fire(
      KayeLeadImplant(
        ChatEventType.chatBoxReloadByIds,
        chatIds: [snaps.first.chatBoxId!],
      ),
    );
  }

  Future kayeComebackTouchdownLuther(KayeLuther snap) async {
    return KAYE.kayeDb.snapDao.saveOrUpdateModels([snap]);
  }

  Future kayeComebackTouchdownLutherMakeupDeceiveId(
    KayeLuther snap,
    int serverId,
  ) async {
    snap.id = serverId;
    return kayeComebackTouchdownLutherMakeupGenitalsFax(
      snap,
      ChatSnapSendStatus.success,
    );
  }

  Future kayeComebackTouchdownLutherMakeupGenitalsFax(
    KayeLuther snap,
    ChatSnapSendStatus status,
  ) async {
    snap.sendStatus = status.index;
    await kayeComebackTouchdownLuther(snap);
    KAYE.eventBus.fire(
      KayeLeadImplant(
        ChatEventType.chatBoxReloadByIds,
        chatIds: [snap.chatBoxId!],
      ),
    );
    KAYE.eventBus.fire(
      KayeLeadImplant(ChatEventType.snapSendStatus, object: snap),
    );
  }

  void kayeStretchComplaintSandy(List<KayeLuther>? snaps) {
    if (KayeWrestlingBarnacle.isEmptyList(snaps)) return;
    for (var e in snaps!) {
      kayeStretchComplaintLuther(e);
    }
  }

  void kayeStretchComplaintLuther(KayeLuther snap) {
    var snapType = Snap_SnapType.valueOf(snap.type ?? -1);
    if (Snap_SnapType.TXT_SNAP == snapType) {
      snap.richTexts = KayeFranchiseCreepBarnacle.getRichText(
        snap.textContent,
        style: snap.isMine
            ? KayeCreepDesperate.outgoingTextStyle
            : KayeCreepDesperate.incomingTextStyle,
      );
    } else if (Snap_SnapType.WEAK_SNAP == snapType) {
      snap.richTexts ??= KayeFranchiseCreepBarnacle.getRichText(
        snap.textContent,
        style: KayeCreepDesperate.style(
          color: KayeToddlerBarnacle.b1,
          fontSize: 14.0,
        ),
      );
    }
  }

  void _kayeComplaintLutherEarn(Sync sync) async {
    Int64 syncKey = Int64(KAYE.kayeAmongst.userSnapLastSyncKey(KAYE.uid()));
    if (sync.baseKey != syncKey) {
      kayeGenitalsLeadBanalityEarn(SyncType.SNAP, syncKey);
      return;
    }
    Map<String, List<KayeLuther>> affects = {};
    Set<int> cIds = {};
    Set<int> cIdsToReloadInList = {};

    if (sync.add.isNotEmpty) {
      List<KayeLuther> adds = [];
      for (var any in sync.add) {
        final p = KayeFermionBreach.unpackMessage(Snap.create(), any);
        if (p != null) {
          final l = convertChatSnapProto(p);
          adds.add(l);
          cIds.add(l.chatBoxId!);
          cIdsToReloadInList.add(l.chatBoxId!);
        }
      }
      if (adds.isNotEmpty) {
        affects[KayeLeadImplant.AFFECT_ADD] = adds;
        await KAYE.kayeDb.snapDao.saveOrUpdateModels(adds);
        await KAYE.kayeDb.chatBoxDao.updateModelsHasChat(cIds.toList());

        try {
          KayeLuther snap = adds.lastWhere(
            (element) =>
                element.owner != KAYE.user().uid && element.isSnackShowType,
          );
          KAYE.eventBus.fire(KayeLutherDefeatInternshipImplant(snap));
        } catch (e, stack) {
          KayeKristenGlitterFlattering.kayeSendWasher(10082, e, stack);
          e.printError();
        }
      }
    }

    if (sync.update.isNotEmpty) {
      List<KayeLuther> updates = [];
      for (var any in sync.update) {
        final p = KayeFermionBreach.unpackMessage(Snap.create(), any);
        if (p != null) {
          final l = convertChatSnapProto(p);
          updates.add(l);
          cIds.add(l.chatBoxId!);
          cIdsToReloadInList.add(l.chatBoxId!);
        }
      }
      if (updates.isNotEmpty) {
        affects[KayeLeadImplant.AFFECT_UPDATE] = updates;
        await KAYE.kayeDb.snapDao.saveOrUpdateModels(updates);
      }
    }

    if (sync.delete.isNotEmpty) {
      List<KayeLuther> deletes = [];
      for (var any in sync.delete) {
        final p = KayeFermionBreach.unpackMessage(Snap.create(), any);
        if (p != null) {
          final l = convertChatSnapProto(p);
          deletes.add(l);
          cIdsToReloadInList.add(l.chatBoxId!);
        }
      }
      if (deletes.isNotEmpty) {
        affects[KayeLeadImplant.AFFECT_DELETE] = deletes;
        await KAYE.kayeDb.snapDao.deleteModels(deletes);
      }
    }

    KAYE.kayeAmongst.saveUserSnapLastSyncKey(KAYE.uid(), sync.lastKey.toInt());
    kayeGenitalsLeadBanalityIncredibleEarn(SyncType.SNAP, sync.lastKey);

    if (affects.isEmpty) return;

    KAYE.eventBus.fire(
      KayeLeadImplant(ChatEventType.snapSync, affects: affects),
    );
    KAYE.eventBus.fire(
      KayeLeadImplant(
        ChatEventType.chatBoxReloadByIds,
        chatIds: cIdsToReloadInList.toList(),
      ),
    );

    final chatBoxes = await KAYE.kayeDb.chatBoxDao.queryChatBoxesByIds(
      cIds.toList(),
    );
    chatBoxes?.forEach((c) {
      cIds.remove(c.id);
    });
    if (cIds.isNotEmpty) {
      try {
        final chatBoxes = await batchGetChatBoxInfo(cIds: cIds.toList());
        if (chatBoxes.isNotEmpty) {
          await KAYE.kayeDb.chatBoxDao.saveOrUpdateModels(chatBoxes);
          KAYE.eventBus.fire(
            KayeLeadImplant(
              ChatEventType.chatBoxSync,
              affects: {KayeLeadImplant.AFFECT_ADD: chatBoxes},
            ),
          );
        }
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(10083, e, stack);
      }
    }
  }

  bool _isSnapBaseKeyAligned(Sync sync, Int64 localKey) {
    if (sync.baseKey == localKey) {
      return true;
    }
    kayeGenitalsLeadBanalityEarn(SyncType.SNAP, localKey);
    return false;
  }

  void _kayeComplaintLutherEarnAthenaeum(Sync sync) async {
    final Int64 localKey = Int64(
      KAYE.kayeAmongst.userSnapLastSyncKey(KAYE.uid()),
    );

    if (!_isSnapBaseKeyAligned(sync, localKey)) return;

    KAYE.kayeAmongst.saveUserSnapLastSyncKey(KAYE.uid(), sync.lastKey.toInt());

    await _kayeComplaintLutherAthenaeum(sync);
  }

  _kayeComplaintLutherAthenaeum(Sync sync) async {
    List<KayeLuther> addSnaps = _unpackSnaps(sync.add);
    if (addSnaps.isEmpty) return;
    await KAYE.kayeDb.snapDao.saveOrUpdateModels(addSnaps);

    Map<int, KayeLuther> latestSnapsByCid = {};
    Map<int, KayeLuther> friendSnapsByCid = {};
    Map<int, int> unreadIncrements = {};

    for (KayeLuther snap in addSnaps) {
      KayeLuther? current = latestSnapsByCid[snap.chatBoxId];

      if (current == null ||
          (snap.createTime ?? 0) >= (current.createTime ?? 0)) {
        latestSnapsByCid[snap.chatBoxId!] = snap;
      }

      if (snap.owner != null && snap.owner != KAYE.uid()) {
        unreadIncrements.update(
          snap.chatBoxId!,
          (value) => value + 1,
          ifAbsent: () => 1,
        );
        friendSnapsByCid[snap.owner!] = snap;
      }
    }

    List<KayeLeadBanality> existingChaBoxList =
        await KAYE.kayeDb.chatBoxDao.queryChatBoxesByIds(
          latestSnapsByCid.keys,
        ) ??
        [];
    Map<int, KayeLeadBanality> existingChatBoxMap = {};
    for (var e in existingChaBoxList) existingChatBoxMap[e.id!] = e;

    Map<int, KayeLeadSasquatch> userMap = await _collectSaveUser(
      existingChaBoxList,
    );

    Iterable<int> allChatBoxIds = latestSnapsByCid.keys;

    List<KayeLeadBanality> updateChatBoxes = [];

    List<KayeLeadBanality> insertChatBoxes = [];
    List<KayeLeadSasquatch> insertUsers = [];

    List<int> toBeSyncChatBoxIds = [];

    for (int boxId in allChatBoxIds) {
      KayeLeadBanality? box = existingChatBoxMap[boxId];
      if (box != null) {
        _updateChatboxInfo(box, unreadIncrements, latestSnapsByCid);

        if (_fixWhenNoPartnerId(box, friendSnapsByCid, boxId)) {
          updateChatBoxes.add(box);
        } else {
          toBeSyncChatBoxIds.add(boxId);
        }
      } else {
        KayeLuther? fridSnap = friendSnapsByCid[boxId];
        if (fridSnap != null &&
            fridSnap.ownerName != null &&
            fridSnap.ownerHead != null) {
          KayeLeadBanality box = _newChatboxWithFriendSnap(boxId, fridSnap);
          _updateChatboxInfo(box, unreadIncrements, latestSnapsByCid);
          insertChatBoxes.add(box);

          if (!userMap.containsKey(fridSnap.owner)) {
            KayeLeadSasquatch newUser = _newChatUserWithFriendSnap(
              box,
              fridSnap,
            );
            insertUsers.add(newUser);
          }
        } else {
          toBeSyncChatBoxIds.add(boxId);
        }
      }
    }

    if (toBeSyncChatBoxIds.isNotEmpty) {
      List<KayeLeadBanality> netBoxes = await batchGetChatBoxInfo(
        cIds: toBeSyncChatBoxIds.toList(),
      );
      for (KayeLeadBanality box in netBoxes) {
        _updateChatboxInfo(box, unreadIncrements, latestSnapsByCid);

        insertChatBoxes.add(box);

        if (box.members != null) {
          int meUid = KAYE.uid();
          for (KayeLeadSasquatch u in box.members!) {
            if (u.uid != meUid) {
              if (!userMap.containsKey(u.uid)) {
                insertUsers.add(u);
              }
            }
          }
        }
      }
    }

    Set<int> uiReloadBoxIds = {};

    if (updateChatBoxes.isNotEmpty) {
      KAYE.kayeDb.chatBoxDao.updateChatBoxes(updateChatBoxes);
      uiReloadBoxIds.addAll(updateChatBoxes.map((e) => e.id!).toSet());
    }

    if (insertChatBoxes.isNotEmpty) {
      KAYE.kayeDb.chatBoxDao.saveOrUpdateChatBoxes(insertChatBoxes);
      uiReloadBoxIds.addAll(insertChatBoxes.map((e) => e.id!).toSet());
    }

    if (insertUsers.isNotEmpty) {
      KAYE.kayeDb.userDao.saveOrUpdateModels(insertUsers);
    }

    _emitSnapSyncEvents(addSnaps, uiReloadBoxIds);
  }

  List<KayeLuther> _unpackSnaps(Iterable<dynamic> entries) {
    List<KayeLuther> snaps = <KayeLuther>[];
    for (final any in entries) {
      final snapProto = KayeFermionBreach.unpackMessage(Snap.create(), any);
      if (snapProto == null) {
        continue;
      }
      final snap = convertChatSnapProto(snapProto);
      snaps.add(snap);
    }
    return snaps;
  }

  KayeLeadSasquatch _newChatUserWithFriendSnap(
    KayeLeadBanality box,
    KayeLuther fridSnap,
  ) {
    KayeLeadSasquatch newUser = KayeLeadSasquatch()
      ..uid = box.partnerId!
      ..nickName = fridSnap.ownerName!
      ..avatarUrl = fridSnap.ownerHead!;
    return newUser;
  }

  KayeLeadBanality _newChatboxWithFriendSnap(int boxId, KayeLuther fridSnap) {
    KayeLeadBanality box = KayeLeadBanality()
      ..id = boxId
      ..type = Chatbox_Type.SINGLE.value
      ..owner = fridSnap.owner
      ..unreadCount = 0
      ..updateTime = fridSnap.createTime
      ..hasChat = true
      ..lastSnapType = fridSnap.type
      ..lastSnapTextContent = fridSnap.textContent
      ..lastSnapJsonContent = fridSnap.jsonContent
      ..lastSnapCreateTime = fridSnap.createTime
      ..partnerId = fridSnap.owner;
    return box;
  }

  bool _fixWhenNoPartnerId(
    KayeLeadBanality box,
    Map<int, KayeLuther> friendSnapsByCid,
    int boxId,
  ) {
    if (box.partnerId == null || box.partnerId == 0) {
      KayeLuther? fridSnap = friendSnapsByCid[boxId];
      if (fridSnap != null) {
        box.partnerId = fridSnap.owner;
        return true;
      } else {
        return false;
      }
    }
    return true;
  }

  void _updateChatboxInfo(
    KayeLeadBanality box,
    Map<int, int> unreadIncrements,
    Map<int, KayeLuther> latestSnapsByCid,
  ) {
    final unreadCount = unreadIncrements[box.id] ?? 0;
    final latestSnap = latestSnapsByCid[box.id];

    box.unreadCount = (box.unreadCount ?? 0) + unreadCount;
    box.lastSnapTextContent = latestSnap?.textContent;
    box.lastSnapJsonContent = latestSnap?.jsonContent;
    box.lastSnapType = latestSnap?.type;
    box.lastSnapCreateTime = latestSnap?.createTime;
    box.updateTime = (latestSnap != null && box.updateTime != null)
        ? max(latestSnap.createTime!, box.updateTime!)
        : (latestSnap?.createTime ?? box.updateTime);
  }

  void _emitSnapSyncEvents(
    List<KayeLuther> syncSnaps,
    Set<int> reloadChatBoxIds,
  ) {
    Map<String, List<KayeLuther>> affects = {
      KayeLeadImplant.AFFECT_ADD: syncSnaps,
    };

    KAYE.eventBus.fire(
      KayeLeadImplant(ChatEventType.snapSync, affects: affects),
    );

    if (reloadChatBoxIds.isNotEmpty) {
      KAYE.eventBus.fire(
        KayeLeadImplant(
          ChatEventType.chatBoxReloadByIds,
          chatIds: reloadChatBoxIds.toList(),
        ),
      );
    }
  }

  KayeLuther convertChatSnapProto(Snap p) {
    KayeLuther l = KayeLuther();
    l.id = p.id.toInt();
    l.chatBoxId = p.chatboxId.toInt();
    l.owner = p.owner.toInt();
    l.ownerName = p.ownerName;
    l.ownerHead = p.ownerHead;
    l.unread = p.unread != 0;
    l.createTime = p.createTime.toInt();
    l.prevSnapId = p.prevSnapId.toInt();
    l.type = p.type.value;
    l.textContent = p.textContent;
    l.jsonContent = p.jsonContent;
    l.localId = p.localId.toInt();
    l.repliedSnapId = p.repliedSnapId.toInt();
    l.status = p.status;
    if (p.repliedSnapId > 0) {
      l.repliedSnap = convertChatSnapProto(p.repliedSnap);
    }

    if (p.type == Snap_SnapType.IMG_SNAP ||
        p.type == Snap_SnapType.STICKER_SNAP) {
      l.image = convertImageProto(p.image);
    } else if (p.type == Snap_SnapType.VIDEO_SNAP) {
      l.video = convertVideoProto(p.video);
    } else if (p.type == Snap_SnapType.VOICE_SNAP) {
      l.voice = convertVoiceProto(p.voice);
      l.unread = true;
    }

    return l;
  }

  Future<Map<int, KayeLeadSasquatch>> _collectSaveUser(
    List<KayeLeadBanality> existingChaBoxList,
  ) async {
    Set<int> needQueryUserIds = {};
    for (final box in existingChaBoxList) {
      if (box.partnerId != null && box.partnerId != 0) {
        needQueryUserIds.add(box.partnerId!);
      }
    }

    Map<int, KayeLeadSasquatch> userMap = {};
    if (needQueryUserIds.isNotEmpty) {
      final userList = await KAYE.kayeDb.userDao.modelsByIds(
        needQueryUserIds.toList(),
      );
      for (final user in userList) {
        userMap[user.uid] = user;
      }
    }
    return userMap;
  }

  KayeGogglesSydney convertImageProto(ImOB.Image p) {
    KayeGogglesSydney l = KayeGogglesSydney();
    l.id = p.id.toInt();
    l.imgUrl = p.imgUrl;
    l.width = p.weight;
    l.height = p.height;
    l.mimeType = p.mimeType;
    return l;
  }

  KayeGogglesBetty convertVoiceProto(Voice p) {
    KayeGogglesBetty l = KayeGogglesBetty();
    l.id = p.id.toInt();
    l.voiceUrl = p.voiceUrl;
    l.duration = p.duration;
    return l;
  }

  KayeGogglesPolitical convertVideoProto(Video p) {
    KayeGogglesPolitical l = KayeGogglesPolitical();
    l.id = p.id.toInt();
    l.videoUrl = p.videoUrl;
    l.coverUrl = p.coverUrl;
    l.duration = p.duration;
    l.width = p.width;
    l.height = p.height;
    return l;
  }

  Future<List<KayeLeadBanality>> batchGetChatBoxInfo({
    List<int>? cIds,
    List<KayeLeadBanality>? chatBoxes,
    Function? callback,
  }) {
    final req = BatchGetChatboxInfoReq.create();
    if (cIds != null) {
      for (var id in cIds) {
        req.chatboxIds.add(Int64(id));
      }
    } else if (chatBoxes != null) {
      for (var cb in chatBoxes) {
        req.chatboxIds.add(Int64(cb.id!));
      }
    }

    return KAYE.socket.sendWithReturn<BatchGetChatboxInfoRsp>(req).then((resp) {
      var result = <KayeLeadBanality>[];
      var infos = resp?.chatboxInfos;
      if (!KayeWrestlingBarnacle.isEmptyList(infos)) {
        for (var c in infos!) {
          result.add(convertChatBoxProto(c));
        }
      }
      return result;
    });
  }

  Future<List<KayeLuther>?> kayeSandyBeginningLeadBanalityByExpressionPlummet(
    int? cid, [
    int page = 1,
    int size = 20,
  ]) async {
    Future future = KAYE.kayeDb.snapDao.modelsByTimeDescForChatBox(
      cid,
      page,
      size,
    );
    return future.then((snaps) {
      return _kayeSandyBySkiGenitalsFax(snaps);
    });
  }

  Future<List<KayeLuther>?> kayeSandyBeginningLeadBanalityByToExpression(
    int? cid,
    int? toTime, [
    int size = 20,
  ]) async {
    Future future = KAYE.kayeDb.snapDao.modelsByToTimeForChatBox(
      cid,
      toTime,
      size,
    );
    return future.then((snaps) {
      return _kayeSandyBySkiGenitalsFax(snaps);
    });
  }

  Future<List<KayeLuther>?> kayeSandyBeginningLeadBanalityByExpression(
    int? cid, [
    int? fromTime,
    int? toTime,
    int size = 20,
  ]) async {
    Future future = KAYE.kayeDb.snapDao.modelsByTimeForChatBox(
      cid,
      fromTime,
      toTime,
      size,
    );
    return future.then((snaps) {
      return _kayeSandyBySkiGenitalsFax(snaps);
    });
  }

  List<KayeLuther>? _kayeSandyBySkiGenitalsFax(List<KayeLuther>? snaps) {
    if (KayeWrestlingBarnacle.isEmptyList(snaps)) return null;
    for (final s in snaps!.toList()) {
      if (s.sendStatus == ChatSnapSendStatus.sending.index) {
        final sending = sendQueue.sendingSnap(s);
        if (sending == null) {
          s.sendStatus = ChatSnapSendStatus.failed.index;
        } else {
          final index = snaps.indexOf(s);
          if (index > -1) {
            snaps.removeAt(index);
            snaps.insert(index, sending);
          }
        }
      }
    }
    return snaps;
  }

  bool kayeGenitalsProductLutherMandatory(int cId, {List<int>? snapIds}) {
    final req = ReadSnapReq.create();
    req.chatboxId = Int64(cId);
    if (snapIds != null && snapIds.isNotEmpty) {
      for (var snapId in snapIds) {
        req.snapIds.add(Int64(snapId));
      }
    }
    return KAYE.socket.sendWithoutResp(req);
  }

  void kayeComebackLeadBanalityProductFax({
    int? cId,
    List<int>? cIds,
    List<KayeLeadBanality>? chatBoxes,
  }) {
    final req = UpdateChatboxReadedStatusReq.create();
    if (cId != null) {
      req.chatboxId = Int64(cId);
    } else if (cIds != null) {
      for (var id in cIds) {
        req.chatboxIds.add(Int64(id));
      }
    } else if (chatBoxes != null) {
      for (var cb in chatBoxes) {
        req.chatboxIds.add(Int64(cb.id!));
      }
    }
    req.lastSnapKey = Int64(KAYE.kayeAmongst.userSnapLastSyncKey(KAYE.uid()));
    req.lastChatboxKey = Int64(
      KAYE.kayeAmongst.userChatBoxLastSyncKey(KAYE.uid()),
    );

    KAYE.socket.sendWithoutResp(req);
  }

  bool kayeGenitalsDemandLeadBanalityEarn({
    int? cId,
    List<int>? cIds,
    List<KayeLeadBanality>? chatBoxes,
  }) {
    final req = RemoveChatboxReq.create();
    if (cId != null) {
      req.chatboxId = Int64(cId);
    } else if (cIds != null) {
      for (var id in cIds) {
        req.chatboxIds.add(Int64(id));
      }
    } else if (chatBoxes != null) {
      for (var cb in chatBoxes) {
        req.chatboxIds.add(Int64(cb.id!));
      }
    }
    req.lastChatboxKey = Int64(
      KAYE.kayeAmongst.userChatBoxLastSyncKey(KAYE.uid()),
    );
    return KAYE.socket.sendWithoutResp(req);
  }

  void kayeMallMoundLeadIdByAmazonId(int checkId) {
    if (_currentChatId == checkId) _currentChatId = 0;
    kayeComebackLeadBanalityEnhanceProductExpression(checkId);
  }

  void kayeComebackLeadBanalityEnhanceProductExpression(int? id) async {
    if (id == null) return;

    final lastSnap = await KAYE.kayeDb.snapDao.lastModelForChatBox(id);

    if (lastSnap == null) return;

    int updateTime = lastSnap.createTime!;
    KAYE.kayeDb.chatBoxDao.updateModelLastReadSnapTime(id, updateTime).then((
      ret,
    ) {
      if (ret) {
        KAYE.eventBus.fire(
          KayeLeadImplant(ChatEventType.chatBoxReloadByIds, chatIds: [id]),
        );
      }
    });
  }

  Future<KayeLeadBanality?> createChatBox(
    List<int> uIds, {
    String? name,
    String? desc,
    int? coverId,
    CreateChatboxReq_SourceType? srcType,
  }) {
    final req = CreateChatboxReq.create();
    for (var element in uIds) {
      req.memberIds.add(Int64(element));
    }
    if (name != null) req.name = name;
    if (desc != null) req.description = desc;
    if (coverId != null) req.coverId = Int64(coverId);
    if (srcType != null) req.sourceType = srcType;
    req.lastChatboxKey = Int64(
      KAYE.kayeAmongst.userChatBoxLastSyncKey(KAYE.uid()),
    );

    return KAYE.socket.sendWithReturn<CreateChatboxRsp>(req).then((resp) {
      if (resp != null) {
        return convertChatBoxProto(resp.chatbox);
      }
      return null;
    });
  }

  Future<KayeLeadBanality?> getChatBoxInfo(int cId) {
    final req = GetChatboxInfoReq.create();
    req.chatboxId = Int64(cId);
    req.lastChatboxKey = Int64(
      KAYE.kayeAmongst.userChatBoxLastSyncKey(KAYE.uid()),
    );
    return KAYE.socket.sendWithReturn<GetChatboxInfoRsp>(req).then((resp) {
      if (resp != null) {
        return convertChatBoxProto(resp.chatboxInfo);
      }
      return null;
    });
  }

  void _initSyncMsg() {
    if (KAYE.socket.isConnected) {
      kayeGenitalsLeadBanalityEarn(
        SyncType.CHATBOX,
        Int64(KAYE.kayeAmongst.userChatBoxLastSyncKey(KAYE.uid())),
      );
      kayeGenitalsLeadBanalityEarn(
        SyncType.SNAP,
        Int64(KAYE.kayeAmongst.userSnapLastSyncKey(KAYE.uid())),
      );
    }
  }

  Future<void> kayeComebackLeadBanalityProfile(KayeLeadSasquatch? user) async {
    if (user == null) return;
    await KAYE.kayeDb.chatBoxDao.updateChatBoxMember(user);
  }

  Future<CreateSnapRsp?> createSnap(KayeLuther snap) async {
    final req = CreateSnapReq.create();
    if (snap.chatBoxId != null) req.chatboxId = Int64(snap.chatBoxId!);
    if (snap.type != null) req.snapType = Snap_SnapType.valueOf(snap.type!)!;
    if (snap.textContent != null) req.textContent = snap.textContent!;
    if (snap.jsonContent != null) req.jsonContent = snap.jsonContent!;
    if (snap.image?.id != null) req.imgId = Int64(snap.image!.id!);
    if (snap.video?.id != null) req.videoId = Int64(snap.video!.id!);
    if (snap.voice?.id != null) req.voiceId = Int64(snap.voice!.id!);
    if (snap.localId != null) req.localId = Int64(snap.localId!);
    if (snap.repliedSnapId != null)
      req.repliedSnapId = Int64(snap.repliedSnapId!);
    if (snap.toUid != null) req.toUid = Int64(snap.toUid!);

    return await KAYE.socket.sendWithReturn<CreateSnapRsp>(
      req,
      autoToastOnError: true,
    );
  }

  Future<void> kayeLeadSandyMallFax(int cId) async {
    await KAYE.kayeDb.chatBoxDao.resetModelUnread(cId);
    KAYE.eventBus.fire(
      KayeLeadImplant(ChatEventType.chatBoxReloadByIds, chatIds: [cId]),
    );
  }
}
