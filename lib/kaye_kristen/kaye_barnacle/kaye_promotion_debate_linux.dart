import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

abstract class MediaVideoViewerDataSource {
  bool isHero = false;
  int currentIndex = 0;
  int itemCount = 0;
  VoidCallback? dataUpdatedCallback;
  bool showCustomChild = false;

  String heroTag(int index);

  ImageProvider? imageProvider(int index);

  Widget dataSourceChild(int index);

  void onPageChanged(int index);
}

class KayePromotionDebateLinux extends StatefulWidget {
  static Future? show(
    BuildContext context,
    MediaVideoViewerDataSource dataSource,
  ) {
    return Get.to(
      KayePromotionDebateLinux(dataSource),
      transition: Transition.fadeIn,
    );
  }

  final MediaVideoViewerDataSource dataSource;

  const KayePromotionDebateLinux(this.dataSource, {Key? key}) : super(key: key);

  @override
  State<KayePromotionDebateLinux> createState() {
    return _KayePromotionDebateLinuxDonna();
  }
}

class _KayePromotionDebateLinuxDonna extends State<KayePromotionDebateLinux> {
  PageController? _pageController;
  late MediaVideoViewerDataSource _dataSource;

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _dataSource = widget.dataSource;
    _dataSource.dataUpdatedCallback = () {
      _pageController?.jumpToPage(_dataSource.currentIndex);
      setState(() {});
    };
    _pageController = PageController(initialPage: _dataSource.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return CupertinoPageScaffold(
      child: GestureDetector(
        onTap: () => Get.back(),
        child: Container(
          color: Colors.black,
          constraints: BoxConstraints.expand(
            height: MediaQuery.of(context).size.height,
          ),
          child: PhotoViewGallery.builder(
            scrollPhysics: const AlwaysScrollableScrollPhysics(),
            builder: _buildItem,
            itemCount: _dataSource.itemCount,
            pageController: _pageController,
            onPageChanged: _dataSource.onPageChanged,
          ),
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    if (_dataSource.showCustomChild) {
      return PhotoViewGalleryPageOptions.customChild(
        initialScale: PhotoViewComputedScale.contained,
        minScale: PhotoViewComputedScale.contained,
        maxScale: PhotoViewComputedScale.covered * 2,
        heroAttributes: !_dataSource.isHero
            ? null
            : PhotoViewHeroAttributes(tag: _dataSource.heroTag(index)),
        child: _dataSource.dataSourceChild(index),
        onTapUp: (context, details, controllerValue) => Get.back(),
      );
    }

    return PhotoViewGalleryPageOptions(
      imageProvider: _dataSource.imageProvider(index),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained,
      maxScale: PhotoViewComputedScale.covered * 2,
      heroAttributes: !_dataSource.isHero
          ? null
          : PhotoViewHeroAttributes(tag: _dataSource.heroTag(index)),
      onTapUp: (context, details, controllerValue) => Get.back(),
    );
  }
}
