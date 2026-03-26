import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_stroke.dart';
import 'kaye_promotion_political_linux.dart';

class KayeLeadPromotionPoliticalTieAbbey extends MediaVideoViewerDataSource {
  static showViewer(BuildContext context, KayeLuther snap) {
    KayePromotionPoliticalLinux.show(
      context,
      KayeLeadPromotionPoliticalTieAbbey(snap),
    );
  }

  static const int ITEM_LOAD_SIZE = 20;

  final KayeLuther snap;

  late KayeLuther _currentItem;
  late List<KayeLuther> _items;
  bool _hasBefore = false;
  bool _loadingBefore = false;
  bool _hasAfter = false;
  bool _loadingAfter = false;

  KayeLeadPromotionPoliticalTieAbbey(this.snap) : super() {
    super.itemCount = 1;
    super.currentIndex = 0;
    _currentItem = snap;
    _items = [snap];

    _loadSnaps();
  }

  bool _isLocalMediaNotOutOfDate(int createTime) {
    return snap.clearCacheTime == null ||
        createTime > (snap.clearCacheTime ?? 0);
  }

  _loadSnaps() {
    _loadingBefore = true;
    _loadingAfter = true;
    Future.wait([
      KAYE.kayeDb.snapDao.modelsByTypeBeforeTimeForChatBox(
        snap.chatBoxId,
        snap.type!,
        snap.createTime,
        ITEM_LOAD_SIZE,
      ),
      KAYE.kayeDb.snapDao.modelsByTypeAfterTimeForChatBox(
        snap.chatBoxId,
        snap.type!,
        snap.createTime,
        ITEM_LOAD_SIZE,
      ),
    ]).then((results) {
      bool changed = false;
      if (!KayeWrestlingBarnacle.isEmptyList(results[0])) {
        changed = true;
        _items.insertAll(0, results[0]!);
        _hasBefore = results[0]!.length >= ITEM_LOAD_SIZE;
      }
      if (!KayeWrestlingBarnacle.isEmptyList(results[1])) {
        changed = true;
        _items.addAll(results[1]!);
        _hasAfter = results[1]!.length >= ITEM_LOAD_SIZE;
      }
      if (changed) _updateData();
      _loadingBefore = false;
      _loadingAfter = false;
    });
  }

  _loadingBeforeItems() {
    if (_hasBefore && !_loadingBefore) {
      _loadingBefore = true;
      KAYE.kayeDb.snapDao
          .modelsByTypeBeforeTimeForChatBox(
            snap.chatBoxId,
            snap.type!,
            snap.createTime,
          )
          .then((result) {
            if (!KayeWrestlingBarnacle.isEmptyList(result)) {
              _items.insertAll(0, result!);
              _hasBefore = result.length >= ITEM_LOAD_SIZE;
              _updateData();
            }
            _loadingBefore = false;
          });
    }
  }

  _loadingAfterItems() {
    if (_hasAfter && !_loadingAfter) {
      _loadingAfter = true;
      KAYE.kayeDb.snapDao
          .modelsByTypeAfterTimeForChatBox(
            snap.chatBoxId,
            snap.type!,
            snap.createTime,
          )
          .then((result) {
            if (!KayeWrestlingBarnacle.isEmptyList(result)) {
              _items.addAll(result!);
              _hasAfter = result.length >= ITEM_LOAD_SIZE;
              _updateData();
            }
            _loadingAfter = false;
          });
    }
  }

  _updateData() {
    super.itemCount = _items.length;
    super.currentIndex = _items.indexOf(_currentItem);
    super.dataUpdatedCallback?.call();
  }

  int autoPlayIndex() => _items.indexOf(snap);

  @override
  String heroTag(int index) {
    return _items[index].hashCode.toString();
  }

  @override
  ImageProvider imageProvider(int index) {
    final item = _items[index];
    if (_isLocalMediaNotOutOfDate(item.createTime!) &&
        !KayeWrestlingBarnacle.isEmptyString(item.video?.relativePath)) {
      return FileImage(File(item.video!.absolutePath!));
    } else {
      return CachedNetworkImageProvider(item.video!.coverUrl!);
    }
  }

  @override
  String? localPath(int index) {
    final item = _items[index];
    return _isLocalMediaNotOutOfDate(item.createTime!) &&
            !KayeWrestlingBarnacle.isEmptyString(item.video?.relativePath)
        ? item.video?.absolutePath!
        : null;
  }

  @override
  String? netPath(int index) {
    final item = _items[index];
    return _isLocalMediaNotOutOfDate(item.createTime!) &&
            !KayeWrestlingBarnacle.isEmptyString(item.video?.relativePath)
        ? null
        : item.video?.videoUrl;
  }

  @override
  void onPageChanged(int index) {
    _currentItem = _items[index];
    if (index < 5) {
      _loadingBeforeItems();
    } else if (index > _items.length - 5) {
      _loadingAfterItems();
    }
  }
}
