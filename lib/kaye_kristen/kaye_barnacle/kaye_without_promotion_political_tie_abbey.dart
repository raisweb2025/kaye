import 'package:kaye/kaye_kristen/kaye_cat_lava/kaye_lava_without.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import 'kaye_promotion_political_linux.dart';

class KayeWithoutPromotionPoliticalTieAbbey extends MediaVideoViewerDataSource {
  static showViewer(
    BuildContext context,
    List<VideoVO> videos,
    VideoVO selectItem,
  ) {
    if ((videos == null || videos.isEmpty) && selectItem == null) return;
    KayePromotionPoliticalLinux.show(
      context,
      KayeWithoutPromotionPoliticalTieAbbey(videos, selectItem),
    );
  }

  static const int ITEM_LOAD_SIZE = 20;

  List<VideoVO> _items;
  late VideoVO _currentItem;
  bool _hasBefore = false;
  bool _loadingBefore = false;
  bool _hasAfter = false;
  bool _loadingAfter = false;

  KayeWithoutPromotionPoliticalTieAbbey(this._items, this._currentItem)
    : super() {
    super.itemCount = _items != null ? _items.length : 1;
    super.currentIndex = _items != null && _currentItem != null
        ? _items.indexOf(_currentItem)
        : 0;
  }

  int autoPlayIndex() => _items.indexOf(_currentItem);

  @override
  String heroTag(int index) {
    return _items[index].hashCode.toString();
  }

  @override
  ImageProvider imageProvider(int index) {
    final item = _items[index];
    return CachedNetworkImageProvider(item.cover_url!);
  }

  @override
  String? localPath(int index) {
    final item = _items[index];
    return item.video_url;
  }

  @override
  String? netPath(int index) {
    final item = _items[index];
    return item.video_url;
  }

  @override
  void onPageChanged(int index) {
    _currentItem = _items[index];
  }
}
