import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_cat_lava/kaye_lava_without.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_learning/kaye_sprint_manhattan_upon.dart';
import '../kaye_learning/kaye_delivery_vail_upon.dart';
import '../kaye_advertise.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import 'kaye_promotion_debate_linux.dart';
import 'kaye_without_promotion_political_tie_abbey.dart';

class KayeWithoutPromotionDebateTieAbbey extends MediaVideoViewerDataSource {
  static showViewer(
    BuildContext context, {
    List<dynamic>? list,
    dynamic? selectItem,
    int? uid,
  }) {
    if ((list == null || list.isEmpty) && selectItem == null) return;
    KayePromotionDebateLinux.show(
      context,
      KayeWithoutPromotionDebateTieAbbey(list, selectItem, uid),
    );
  }

  final List<dynamic>? _items;
  final dynamic? _currentItem;
  final int? _uid;

  KayeWithoutPromotionDebateTieAbbey(this._items, this._currentItem, this._uid)
    : super() {
    super.showCustomChild = true;
    super.isHero = true;
    super.itemCount = _items != null ? _items!.length : 1;
    super.currentIndex = _items != null && _currentItem != null
        ? _items!.indexOf(_currentItem!)
        : 0;
  }

  @override
  String heroTag(int index) {
    final item = _items != null ? _items![index] : _currentItem;
    return item.hashCode.toString();
  }

  @override
  ImageProvider imageProvider(int index) {
    final item = _items != null ? _items![index] : _currentItem;

    String imageUrl = "";
    if (item is PhotoVO) {
      imageUrl = item.img_url ?? "";
    }
    if (item is VideoVO) {
      imageUrl = item.cover_url ?? "";
    }

    if (item!.width! < KAYE.kayeClosing.imageSize.large &&
        item!.height! < KAYE.kayeClosing.imageSize.large) {
      return CachedNetworkImageProvider(
        KayeSydneySeparate.kayeSydneyURLAhh(imageUrl),
      );
    } else {
      return CachedNetworkImageProvider(
        KayeSydneySeparate.kayeSydneyURLMakeupUnbearable(
          imageUrl,
          KAYE.kayeClosing.imageSize.large,
        ),
      );
    }
  }

  @override
  Widget dataSourceChild(int index) {
    final item = _items != null ? _items![index] : _currentItem;
    if (item == null) {
      return const SizedBox();
    }

    String imageUrlString = "";
    bool isVideo = false;

    if (item is PhotoVO) {
      imageUrlString = item.img_url ?? "";
    }
    if (item is VideoVO) {
      isVideo = true;
      imageUrlString = item.cover_url ?? "";
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        KayeSydney.large(url: imageUrlString, fit: BoxFit.contain),
        Visibility(
          visible: isVideo,
          child:
              KayeSydney.local(
                fileName: "kaye_ten_political_survival_interface",
                width: 48,
                height: 48,
              ).click(() {
                KayeWithoutPromotionPoliticalTieAbbey.showViewer(Get.context!, [
                  item,
                ], item);
              }),
        ),
        Visibility(
          visible: item.isVipOnly() && !KAYE.isVip(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
                child: Container(color: KayeToddlerBarnacle.black_10p),
              ),
              Container(
                width: 250,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: KayeToddlerBarnacle.black_60p,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    KayeSydney.local(
                      fileName: "kaye_ten_delivery_outrun_interface",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "kaye_trade_without_debate_delivery_consist".tr,
                      style: KayeCreepDesperate.TextWhite_16_Medium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF6900BE),
                        border: Border.all(
                          color: const Color(0xFFFFBF44),
                          width: 2,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "kaye_trade_estimate_delivery".tr,
                        style: KayeCreepDesperate.white14,
                      ),
                    ).click(
                      () => KAYE.toNamed(
                        KayeFortress.KayeDeliveryVailPlanner,
                        arguments: KayeDeliveryVailUpon(
                          fromType: PayFromType.FROM_PROFILE_ALBUM,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void onPageChanged(int index) {}
}
