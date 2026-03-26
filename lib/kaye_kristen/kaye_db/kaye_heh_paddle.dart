import 'dart:math' as logger;

import 'package:kaye/kaye_kristen/kaye_db/kaye_lead_profile_paddle.dart';
import 'package:kaye/kaye_kristen/kaye_db/kaye_heh_bride.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:drift/drift.dart';
import '../kaye_goggles/kaye_lead_sasquatch.dart';
import '../kaye_goggles/kaye_luther.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_lead_barnacle.dart';
import '../proto/im_object.pbenum.dart';
import 'kaye_luther_paddle.dart';
import 'kaye_sasquatch_paddle.dart';
import 'kaye_lead_look.dart';

part 'kaye_heh_paddle.g.dart';

@DriftAccessor(tables: [KayeLeadBanalityBride])
class KayeLeadBanalityPaddle extends DatabaseAccessor<KayeLeadTieFrank>
    with _$KayeLeadBanalityPaddleSultan {
  static int retrievalByType = 1 << 0;
  static int retrievalByWeight = 1 << 1;
  static int retrievalByHasSnap = 1 << 2;
  static int retrievalByOrderWeight = 1 << 3;
  static int retrievalByOrderTime = 1 << 4;

  final KayeLutherPaddle _snapDao;
  final KayeSasquatchPaddle _userDao;
  final KayeLeadProfilePaddle _chatBoxMemberDao;

  KayeLeadBanalityPaddle(
    KayeLeadTieFrank db,
    this._snapDao,
    this._userDao,
    this._chatBoxMemberDao,
  ) : super(db);

  Future saveOrUpdateModels(List<KayeLeadBanality>? models) async {
    if (models == null || models.isEmpty) return;
    return transaction(() async {
      Set<KayeLeadSasquatch> usersWillDelete = {};

      for (final m in models) {
        final lastSnap = await _snapDao.lastModelForChatBox(m.id);
        m.hasChat = lastSnap != null;
        final e = await modelById(m.id);
        if (e == null) {
          var toSave = _modelToEntityCompanion(m);
          if (toSave != null) {
            await into(kayeLeadBanalityBride).insert(toSave);
          }
        } else {
          if (!m.isSingle) {
            e.members?.removeWhere((e) => m.members?.contains(e) ?? false);
            await _chatBoxMemberDao.deleteEntitiesForChatBox(e.id!, e.members);
            if (e.members != null) {
              usersWillDelete.addAll(e.members!);
            }
          }
          var updateVo = _modelToEntityCompanion(m, e);
          if (updateVo != null) {
            await update(kayeLeadBanalityBride).replace(updateVo);
          }
        }
        await _userDao.saveOrUpdateModels(m.members);
        if (m.id != null && m.members != null && m.members!.isNotEmpty) {
          await _chatBoxMemberDao.saveEntitiesForChatBox(m.id!, m.members!);
        }
      }

      List<KayeLeadSasquatch> usersToDelete = [];
      for (final u in usersWillDelete) {
        if (await canDeleteChatBoxMember(u.uid)) {
          usersToDelete.add(u);
        }
      }
      await _userDao.deleteModels(usersToDelete);
    });
  }

  Future saveOrUpdateChatBoxes(List<KayeLeadBanality>? boxes) async {
    if (boxes == null || boxes.isEmpty) return;
    return transaction(() async {
      for (final m in boxes) {
        final e = await modelById(m.id);
        if (e == null) {
          var toSave = _modelToEntityCompanion(m);
          if (toSave != null) {
            await into(kayeLeadBanalityBride).insert(toSave);
          }
        } else {
          var updateVo = _modelToEntityCompanion(m, e);
          if (updateVo != null) {
            await update(kayeLeadBanalityBride).replace(updateVo);
          }
        }
      }
    });
  }

  Future updateChatBoxes(List<KayeLeadBanality>? boxes) async {
    if (boxes == null || boxes.isEmpty) return;
    return transaction(() async {
      for (final m in boxes) {
        var updateVo = _modelToEntityCompanion(m);
        if (updateVo != null) {
          await update(kayeLeadBanalityBride).replace(updateVo);
        }
      }
    });
  }

  Future<List<KayeLeadBanality>?> queryChatBoxesForChatList(
    int time,
    int pageSize,
  ) async {
    final whereSegments = <String>[];
    final variables = <Variable>[];

    if (time > 0) {
      whereSegments.add('box.update_time < ?');
      variables.add(Variable<int>(time));
    }

    final whereClause = whereSegments.isEmpty
        ? ''
        : 'WHERE ${whereSegments.join(' AND ')}';

    final sql =
        '''
      SELECT 
        box.id,
        box.type,
        box.name,
        box.owner,
        box.weight,
        box.muted,
        box.unread_count,
        box.update_time,
        box.has_chat,
        box.partner_id,
        box.last_snap_type,
        box.last_snap_text_content,
        box.last_snap_json_content,
        box.last_snap_create_time,
        u.uid,
        u.nick_name,
        u.avatar_url
      FROM kaye_lead_banality_bride box
      LEFT JOIN kaye_sasquatch_bride u ON u.uid = box.partner_id
      $whereClause
      ORDER BY box.weight DESC, update_time DESC
      LIMIT ?
    ''';

    variables.add(Variable<int>(pageSize));

    final rows = await customSelect(
      sql,
      variables: variables,
      readsFrom: {kayeLeadBanalityBride, attachedDatabase.kayeSasquatchBride},
    ).get();

    if (rows.isEmpty) return [];

    final chatBoxes = <KayeLeadBanality>[];
    for (final row in rows) {
      chatBoxes.add(_parseChatBoxFromRow(row));
    }
    return chatBoxes;
  }

  KayeLeadBanality _parseChatBoxFromRow(QueryRow row) {
    final chatBox = KayeLeadBanality()
      ..id = row.read<int>('id')
      ..type = row.read<int?>('type')
      ..name = row.read<String?>('name')
      ..owner = row.read<int?>('owner')
      ..weight = row.read<int?>('weight')
      ..muted = row.read<bool?>('muted')
      ..unreadCount = row.read<int?>('unread_count')
      ..updateTime = row.read<int?>('update_time')
      ..hasChat = row.read<bool?>('has_chat')
      ..partnerId = row.read<int?>('partner_id');

    final uid = row.read<int?>('uid');
    final nickName = row.read<String?>('nick_name') ?? '';
    final avatarUrl = row.read<String?>('avatar_url') ?? '';
    if (uid != null) {
      chatBox.chatUser = KayeLeadSasquatch()
        ..uid = uid
        ..nickName = nickName
        ..avatarUrl = avatarUrl;
    }

    final snapType = row.read<int?>('last_snap_type');
    final snapTextContent = row.read<String?>('last_snap_text_content');
    final snapJsonContent = row.read<String?>('last_snap_json_content');
    final snapCreateTime = row.read<int?>('last_snap_create_time');

    chatBox.lastSnapType = snapType;
    chatBox.lastSnapTextContent = snapTextContent;
    chatBox.lastSnapJsonContent = snapJsonContent;
    chatBox.lastSnapCreateTime = snapCreateTime;

    if (chatBox.id != null && (snapCreateTime != null && snapCreateTime > 0)) {
      final snap = KayeLuther()
        ..chatBoxId = chatBox.id
        ..type = snapType
        ..textContent = snapTextContent
        ..jsonContent = snapJsonContent
        ..createTime = snapCreateTime;
      chatBox.lastContent = KayeLeadBarnacle.convertChatListContent(
        snap,
        KayeCreepDesperate.chatListDisplayNameTextStyle,
      );
      if (chatBox.updateTime != null) {
        chatBox.updateTime = logger.max(chatBox.updateTime!, snapCreateTime);
      }
      chatBox.displayTime = chatBox.updateTime;
    }

    return chatBox;
  }

  Future<bool> canDeleteChatBoxMember(int uid) async {
    return _chatBoxMemberDao.hasMemberChatBox(uid);
  }

  Future<kaye_heh_bride?> _entityById(int id) {
    final query = select(kayeLeadBanalityBride)..where((e) => e.id.equals(id));
    return query.getSingleOrNull();
  }

  Future<KayeLeadBanality?> modelById(int? id) async {
    if (id == null || id == 0) return null;
    return _modelByEntity(await _entityById(id));
  }

  Future<KayeLeadBanality?> _modelByEntity(kaye_heh_bride? e) async {
    if (e == null) return null;
    final rows = await customSelect(
      '''
      SELECT * FROM kaye_lead_banality_bride
      WHERE id = ?
      LIMIT 1
      ''',
      variables: [Variable<int>(e.id)],
      readsFrom: {kayeLeadBanalityBride},
    ).get();
    if (rows.isEmpty) return null;
    final entity = kayeLeadBanalityBride.map(rows.first.data);
    final m = _modelFromEntity(entity);
    if (m != null && m.partnerId != null && m.partnerId! > 0) {
      m.chatUser = await _userDao.modelById(m.partnerId);
    }
    return m;
  }

  KayeLeadBanalityBridePup? _modelToEntityCompanion(
    KayeLeadBanality? m, [
    KayeLeadBanality? e,
  ]) {
    if (m == null) return null;
    if (e != null) {
      if (m.lastReadSnapTime == null ||
          (e.lastReadSnapTime != null &&
              m.lastReadSnapTime! < (e.lastReadSnapTime ?? 0))) {
        m.lastReadSnapTime = e.lastReadSnapTime;
      }
      if (m.clearCacheTime == null ||
          (e.clearCacheTime != null &&
              m.clearCacheTime! < (e.clearCacheTime ?? 0))) {
        m.clearCacheTime = e.clearCacheTime;
      }
      if (e.serviceChat != null && (e.serviceChat ?? false)) {
        m.serviceChat = e.serviceChat;
      }
    }
    return KayeLeadBanalityBridePup(
      id: m.id != null ? Value(m.id!) : Value.absent(),
      type: m.type != null ? Value(m.type!) : Value.absent(),
      name: m.name != null ? Value(m.name) : Value.absent(),
      coverURL: m.coverURL != null ? Value(m.coverURL) : Value.absent(),
      owner: m.owner != null ? Value(m.owner!) : Value.absent(),
      qrCodeURL: m.qrCodeURL != null ? Value(m.qrCodeURL) : Value.absent(),
      weight: m.weight != null ? Value(m.weight!) : Value.absent(),
      muted: m.muted != null ? Value(m.muted!) : Value.absent(),
      unreadCount: m.unreadCount != null
          ? Value(m.unreadCount!)
          : Value.absent(),
      updateTime: m.updateTime != null ? Value(m.updateTime!) : Value.absent(),
      additionalInfo: m.additionalInfo != null
          ? Value(m.additionalInfo)
          : Value.absent(),
      desc: m.desc != null ? Value(m.desc) : Value.absent(),
      serviceChat: m.serviceChat != null
          ? Value(m.serviceChat!)
          : Value.absent(),
      hasChat: m.hasChat != null ? Value(m.hasChat!) : Value.absent(),
      lastReadSnapTime: m.lastReadSnapTime != null
          ? Value(m.lastReadSnapTime!)
          : Value.absent(),
      clearCacheTime: m.clearCacheTime != null
          ? Value(m.clearCacheTime!)
          : Value.absent(),
      partnerId: m.partnerId != null ? Value(m.partnerId!) : const Value(0),
      lastSnapType: m.lastSnapType != null
          ? Value(m.lastSnapType!)
          : Value.absent(),
      lastSnapTextContent: m.lastSnapTextContent != null
          ? Value(m.lastSnapTextContent)
          : Value.absent(),
      lastSnapJsonContent: m.lastSnapJsonContent != null
          ? Value(m.lastSnapJsonContent)
          : Value.absent(),
      lastSnapCreateTime: m.lastSnapCreateTime != null
          ? Value(m.lastSnapCreateTime!)
          : Value.absent(),
    );
  }

  KayeLeadBanality? _modelFromEntity(kaye_heh_bride? e) {
    if (e == null) return null;
    return KayeLeadBanality()
      ..id = e.id
      ..type = e.type
      ..name = e.name
      ..coverURL = e.coverURL
      ..owner = e.owner
      ..qrCodeURL = e.qrCodeURL
      ..weight = e.weight
      ..muted = e.muted
      ..unreadCount = e.unreadCount
      ..updateTime = e.updateTime
      ..additionalInfo = e.additionalInfo
      ..desc = e.desc
      ..serviceChat = e.serviceChat
      ..hasChat = e.hasChat
      ..lastReadSnapTime = e.lastReadSnapTime
      ..clearCacheTime = e.clearCacheTime
      ..partnerId = e.partnerId
      ..lastSnapType = e.lastSnapType
      ..lastSnapTextContent = e.lastSnapTextContent
      ..lastSnapJsonContent = e.lastSnapJsonContent
      ..lastSnapCreateTime = e.lastSnapCreateTime;
  }

  Future deleteModels(List<KayeLeadBanality> models) async {
    if (models.isEmpty) return;
    return transaction(() async {
      Set<KayeLeadSasquatch> usersWillDelete = {};
      for (final m in models) {
        int? id = m.id;
        if (id == null || id <= 0) {
          continue;
        }
        final mToDel = await modelById(id);
        if (mToDel != null && mToDel.members != null) {
          usersWillDelete.addAll(mToDel.members!);
          final del = delete(attachedDatabase.kayeLeadBanalityBride)
            ..where((e) => e.id.equals(id));
          await del.go();
          await _chatBoxMemberDao.deleteEntitiesForChatBox(id);
          await _snapDao.deleteModelsForChatBox(id);
        }
      }

      List<KayeLeadSasquatch> usersToDelete = [];
      for (final u in usersWillDelete) {
        if (await canDeleteChatBoxMember(u.uid)) {
          usersToDelete.add(u);
        }
      }
      await _userDao.deleteModels(usersToDelete);
    });
  }

  Future<List<KayeLeadBanality>?> queryChatBoxesByIds(
    Iterable<int>? ids,
  ) async {
    if (ids == null || ids.isEmpty) return null;
    return queryChatBoxesByIdsWithSnapshots(ids);
  }

  Future<List<KayeLeadBanality>?> queryChatBoxesByIdsWithSnapshots(
    Iterable<int> ids,
  ) async {
    if (ids.isEmpty) return null;

    final validIds = ids.where((id) => id > 0).toList();
    if (validIds.isEmpty) return null;

    final placeholders = List.generate(validIds.length, (_) => '?').join(',');
    final variables = validIds.map((id) => Variable<int>(id)).toList();

    final sql =
        '''
      SELECT 
        box.id,
        box.type,
        box.owner,
        box.weight,
        box.muted,
        box.unread_count,
        box.update_time,
        box.has_chat,
        box.partner_id,
        box.last_snap_type,
        box.last_snap_text_content,
        box.last_snap_json_content,
        box.last_snap_create_time,
        u.uid,
        u.nick_name,
        u.avatar_url
      FROM kaye_lead_banality_bride box
      LEFT JOIN kaye_sasquatch_bride u ON u.uid = box.partner_id
      WHERE box.id IN (${placeholders})
      ORDER BY box.weight DESC, box.update_time DESC
    ''';

    final rows = await customSelect(
      sql,
      variables: variables,
      readsFrom: {kayeLeadBanalityBride, attachedDatabase.kayeSasquatchBride},
    ).get();

    final chatBoxes = <KayeLeadBanality>[];
    for (final row in rows) {
      chatBoxes.add(_parseChatBoxFromRow(row));
    }
    return chatBoxes;
  }

  Future<List<KayeLeadBanality>?> modelsByType() async {
    int retrievalTypes =
        retrievalByType | retrievalByOrderWeight | retrievalByOrderTime;
    return modelsByRetrieval(0, retrievalTypes);
  }

  Future<List<KayeLeadBanality>?> modelsByRetrieval(
    int weight,
    int retrievalTypes, {
    int time = 0,
    int pageSize = 20,
  }) async {
    final query = select(kayeLeadBanalityBride)
      ..where((e) {
        Expression<bool>? ret;
        if ((retrievalTypes & retrievalByType) > 0) {
          ret = e.type.equals(Chatbox_Type.SINGLE.value);
        }

        if ((retrievalTypes & retrievalByWeight) > 0) {
          final v = e.weight.isBiggerOrEqualValue(weight);
          ret = ret == null ? v : ret & v;
        }

        if ((retrievalTypes & retrievalByHasSnap) > 0) {
          final v = e.hasChat.equals(true);
          ret = ret == null ? v : ret & v;
        }

        if (time > 0) {
          final v = e.updateTime.isSmallerThanValue(time);
          ret = ret == null ? v : ret & v;
        }

        return ret ?? e.id.isBiggerThanValue(-1);
      })
      ..orderBy([
        (e) => OrderingTerm(expression: e.weight, mode: OrderingMode.desc),
        (e) => OrderingTerm(expression: e.updateTime, mode: OrderingMode.desc),
      ]);
    query.limit(pageSize);
    final ret = await query.get();
    return _modelsByEntities(ret);
  }

  Future<List<KayeLeadBanality>?> _modelsByEntities(
    List<kaye_heh_bride>? es,
  ) async {
    if (es == null || es.isEmpty) return null;
    List<KayeLeadBanality> ms = [];
    for (final e in es) {
      final m = await _modelByEntity(e);
      if (m != null) ms.add(m);
    }
    return ms;
  }

  Future updateModelHasChatAndWeight(int id, bool hasChat, int weight) async {
    return transaction(() async {
      final e = await _entityById(id);
      if (e == null || (!hasChat && e.weight >= weight)) return;
      final updateSql = update(kayeLeadBanalityBride)
        ..where((e) => e.id.equals(id));
      await updateSql.write(
        KayeLeadBanalityBridePup(
          hasChat: hasChat ? const Value(true) : const Value.absent(),
          weight: e.weight < weight ? Value(weight) : const Value.absent(),
        ),
      );
    });
  }

  Future updateModelsHasChat(List<dynamic>? models) async {
    if (models == null || models.isEmpty) return;
    List<int> ids;
    if (models.first is int) {
      ids = models.cast<int>();
    } else {
      ids = models.map((e) => e.id).toList().cast<int>();
    }
    return transaction(() async {
      final updateSql = update(kayeLeadBanalityBride)
        ..where((e) => e.id.isIn(ids) & e.hasChat.equals(false));
      await updateSql.write(
        const KayeLeadBanalityBridePup(hasChat: Value(true)),
      );
    });
  }

  Future<bool> updateModelLastReadSnapTime(int id, int time) async {
    return transaction(() async {
      final e = await _entityById(id);
      if (e != null && e.lastReadSnapTime < time) {
        final updateSql = update(kayeLeadBanalityBride)
          ..where((e) => e.id.equals(id));
        await updateSql.write(
          KayeLeadBanalityBridePup(lastReadSnapTime: Value(time)),
        );
        return true;
      }
      return false;
    });
  }

  Future<Map<int, int>> backfillNewFieldsOnFirstLoad(
    Iterable<int> boxIds,
  ) async {
    try {
      Map<int, int> partnerIdMap = await batchFindParentIdsByChatMemberDB(
        boxIds,
      );
      if (partnerIdMap.isNotEmpty) {
        await attachedDatabase.batch((batch) {
          for (final entry in partnerIdMap.entries) {
            final chatBoxId = entry.key;
            final partnerId = entry.value;
            if (partnerId > 0) {
              batch.update(
                kayeLeadBanalityBride,
                KayeLeadBanalityBridePup(partnerId: Value(partnerId)),
                where: (tbl) => tbl.id.equals(chatBoxId),
              );
            }
          }
        });
      }
      return partnerIdMap;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10084, e, stack);
    }
    return {};
  }

  Future<Map<int, int>> batchFindParentIdsByChatMemberDB(
    Iterable<int> chatBoxIds,
  ) async {
    if (chatBoxIds.isEmpty) return {};

    final currentUid = KAYE.uid();
    final validIds = chatBoxIds.where((id) => id > 0).toList();
    if (validIds.isEmpty) return {};

    final placeholders = List.generate(validIds.length, (_) => '?').join(',');
    final variables = validIds.map((id) => Variable<int>(id)).toList();
    variables.add(Variable<int>(currentUid));

    try {
      final memberRows = await customSelect(
        '''
            SELECT cid, uid FROM kaye_lead_profile_bride 
            WHERE cid IN (${placeholders}) AND uid != ?
            ''',
        variables: variables,
        readsFrom: {attachedDatabase.kayeLeadProfileBride},
      ).get();

      final result = <int, int>{};
      for (final row in memberRows) {
        final cid = row.read<int>('cid');
        final uid = row.read<int>('uid');
        if (!result.containsKey(cid)) {
          result[cid] = uid;
        }
      }
      return result;
    } catch (e, stack) {
      return {};
    }
  }

  Future<KayeLeadBanality?> modelByPartnerId(int? partnerId) async {
    if (partnerId == null || partnerId == 0) return null;
    final rows = await customSelect(
      '''
      SELECT * FROM kaye_lead_banality_bride
      WHERE partner_id = ?
      LIMIT 1
      ''',
      variables: [Variable<int>(partnerId)],
      readsFrom: {kayeLeadBanalityBride},
    ).get();
    if (rows.isEmpty) return null;
    final entity = kayeLeadBanalityBride.map(rows.first.data);
    return _modelByEntity(entity);
  }

  Future<void> updateChatBoxMember(KayeLeadSasquatch user) async {
    await _userDao.saveOrUpdateModels([user]);
  }

  Future<void> deleteChatboxWithSnapsData(int chatBoxId) async {
    if (chatBoxId <= 0) return;
    await transaction(() async {
      await _snapDao.deleteModelsForChatBox(chatBoxId);
      await customStatement(
        'DELETE FROM kaye_lead_banality_bride WHERE id = ?',
        [chatBoxId],
      );
    });
  }

  Future<bool> resetModelUnread(int id) async {
    return transaction(() async {
      final affected = await customUpdate(
        'UPDATE kaye_lead_banality_bride SET unread_count = 0 WHERE id = ?',
        variables: [Variable.withInt(id)],
        updates: {db.kayeLeadBanalityBride},
      );
      if (affected > 0) {
        return true;
      }
      return false;
    });
  }

  Future<int> totalUnreadCount() async {
    final result = await customSelect(
      'SELECT SUM(unread_count) AS total_unread FROM kaye_lead_banality_bride',
    ).getSingleOrNull();
    final total = result?.data['total_unread'] as int?;
    return total ?? 0;
  }
}
