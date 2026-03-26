import 'dart:async';
import 'dart:ffi';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_autograph_sydney.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_goggles/kaye_attach_sasquatch.dart';
import '../kaye_goggles/kaye_goggles_delivery_bladder_drove.dart';
import '../kaye_goggles/kaye_sasquatch.dart';
import '../kaye_goggles/kaye_sasquatch_trish.dart';
import '../kaye_goggles/kaye_sasquatch_trish_comeback_order.dart';
import '../kaye_learning/kaye_delivery_dry_wrestling.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_monroe_barnacle.dart';
import 'kaye_sydney.dart';
import 'kaye_dot_delivery_passenger_sasquatch_duplicate.dart';

class KayeDotDeliveryDry extends StatefulWidget {
  final bool showUserInfo;
  KayeDeliveryDryWrestling type;

  KayeDotDeliveryDry({
    super.key,
    this.type = KayeDeliveryDryWrestling.NORMAL,
    required this.showUserInfo,
  });

  @override
  State<KayeDotDeliveryDry> createState() => _KayeDotDeliveryDryDonna();
}

class _KayeDotDeliveryDryDonna extends State<KayeDotDeliveryDry> {
  double height = 240;
  double userInfoHeight = 100;

  late KayeSasquatchTrish userRuntime;

  StreamSubscription? _updateUserRuntimeSubscription;

  @override
  void initState() {
    super.initState();

    userRuntime = KAYE.kayeSasquatchTrish!;

    _updateUserRuntimeSubscription = KAYE
        .listen<KayeSasquatchTrishComebackOrder>((event) {
          setState(() {
            userRuntime = KAYE.kayeSasquatchTrish!;
          });
        });
  }

  @override
  void dispose() {
    _updateUserRuntimeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<KayeGogglesDeliveryBladderDrove> items =
        KAYE.kayeClosing.configs.kayeCultureDeliveryTractor;

    if (items.isEmpty) {
      return const SizedBox.shrink();
    }

    height =
        (widget.type == KayeDeliveryDryWrestling.NORMAL ||
            widget.type == KayeDeliveryDryWrestling.CARD_BIG)
        ? 240
        : 140;
    userInfoHeight = widget.showUserInfo ? 100 : 0;

    Widget child = const SizedBox();

    switch (widget.type) {
      case KayeDeliveryDryWrestling.NORMAL:
        child = _kayeIbizaDot(items, true);
        break;
      case KayeDeliveryDryWrestling.NORMAL_NO_ICON:
        child = _kayeIbizaDot(items, false);
        break;
      case KayeDeliveryDryWrestling.CARD_BIG:
        child = _kayeDuplicateDot(items, false);
        break;
      case KayeDeliveryDryWrestling.CARD_SMALL:
        child = _kayeDuplicateDot(items, true);
        break;
      case KayeDeliveryDryWrestling.LIST_VIEW:
        {
          height = items.length * 80 + 32;
          child = _kayePassengerPlayhouseDot(items);
        }
        break;
    }
    return SizedBox(
      width: Get.width,
      height: height + userInfoHeight,
      child: child,
    );
  }

  Widget _kayeSasquatchDuplicate() {
    if (!widget.showUserInfo) {
      return const SizedBox.shrink();
    }
    return KayeDotDeliveryPassengerSasquatchDuplicate(userRuntime: userRuntime);
  }

  Widget _kayeIbizaDot(
    List<KayeGogglesDeliveryBladderDrove> items,
    bool showVipFunctionImage,
  ) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 0,
          child: KayeSydney.local(
            fileName: "kaye_ten_delivery_blank",
            width: Get.width,
            height: 382,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: Get.width,
          height: height + userInfoHeight,
          child: Column(
            children: [
              _kayeSasquatchDuplicate(),
              SizedBox(
                width: Get.width,
                height: height,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: Get.width,
                      height: height,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          showVipFunctionImage
                              ? KayeAutographSydney(
                                  url: items[index].img,
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.contain,
                                )
                              : const SizedBox(),
                          const SizedBox(height: 24),
                          Text(
                            items[index].title.tr,
                            style: const TextStyle(
                              color: KayeToddlerBarnacle.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                                ? ""
                                : items[index].desc.tr,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: KayeToddlerBarnacle.white_60p,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  scale: 1,
                  autoplay: true,
                  itemCount: items.length,
                  duration: 300,
                  scrollDirection: Axis.horizontal,
                  pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Colors.white,
                      color: Colors.white38,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _kayeDuplicateDot(
    List<KayeGogglesDeliveryBladderDrove> items,
    bool showVipSmallFunction,
  ) {
    return Column(
      children: [
        _kayeSasquatchDuplicate(),
        SizedBox(
          width: Get.width,
          height: height,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              KayeGogglesDeliveryBladderDrove item = items[index];
              bool showCardBg = showVipSmallFunction
                  ? item.smallCardImg.isNotEmpty
                  : item.smallCardImg.isNotEmpty;
              return Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 10,
                    right: 10,
                    bottom: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        showVipSmallFunction ? 16 : 28,
                      ),
                      child: Container(color: const Color(0x1A6E00FF)),
                    ),
                  ),
                  showVipSmallFunction
                      ? _kayeMasculineDuplicateDry(items[index])
                      : _kayeOutrunDuplicateDry(items[index]),
                ],
              );
            },
            viewportFraction: 0.7,
            scale: 1,
            autoplay: true,
            itemCount: items.length,
            duration: 300,
            scrollDirection: Axis.horizontal,
            pagination: const SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(
                activeColor: Color(0xFF7821EC),
                color: Color(0x44080808),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _kayePassengerPlayhouseDot(
    List<KayeGogglesDeliveryBladderDrove> items,
  ) {
    List<Widget> children = [_kayeSasquatchDuplicate()];
    for (KayeGogglesDeliveryBladderDrove elem in items) {
      children.add(_kayePassengerPlayhouseDrove(elem));
      children.add(const SizedBox(height: 8));
    }

    return Container(
      width: Get.width,
      height: height + userInfoHeight,
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(children: children),
    );
  }

  Widget _kayePassengerPlayhouseDrove(KayeGogglesDeliveryBladderDrove item) {
    return Container(
      width: Get.width - 40,
      height: 80,
      decoration: BoxDecoration(
        color: KayeToddlerBarnacle.white_20p,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          KayeAutographSydney(
            url: item.img,
            width: 48,
            height: 48,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.title.tr,
                style: const TextStyle(
                  color: KayeToddlerBarnacle.white,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: Get.width - 135,
                child: Text(
                  KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                      ? ""
                      : item.desc.tr,
                  style: const TextStyle(
                    fontSize: 12,
                    color: KayeToddlerBarnacle.white_60p,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  Widget _kayeMasculineDuplicateDry(KayeGogglesDeliveryBladderDrove item) {
    return Positioned(
      top: 0,
      left: 10,
      right: 10,
      bottom: 40,
      child: Container(
        width: Get.width,
        height: height,
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            KayeAutographSydney(
              url: item.img,
              width: 64,
              height: 64,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.title.tr,
                    style: const TextStyle(
                      color: KayeToddlerBarnacle.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    KAYE.kayeClosing.isKayeAiZucchiniDedicate()
                        ? ""
                        : item.desc.tr,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: KayeToddlerBarnacle.black_60p,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _kayeOutrunDuplicateDry(KayeGogglesDeliveryBladderDrove item) {
    return Positioned(
      top: 0,
      left: 10,
      right: 10,
      bottom: 40,
      child: Container(
        width: Get.width,
        height: height,
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            const SizedBox(height: 10),
            KayeAutographSydney(
              url: item.img,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
            Text(
              item.title.tr,
              style: const TextStyle(
                color: KayeToddlerBarnacle.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              KAYE.kayeClosing.isKayeAiZucchiniDedicate() ? "" : item.desc.tr,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: KayeToddlerBarnacle.white_60p,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
