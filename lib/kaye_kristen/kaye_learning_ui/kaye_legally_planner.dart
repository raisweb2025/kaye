import 'dart:math';
import 'kaye_shirtless_tommy.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_legally_planner_prototype.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_legally.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_trish_comeback_order.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_ui_vail.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_hand.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../kaye_cat_lava/kaye_lava_closing.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_learning/kaye_pudding_lag_vail_upon.dart';
import '../kaye_learning/kaye_sprint_manhattan_upon.dart';

typedef OnSendGift = void Function(VoGift gift);

class KayeLegallyPlanner extends StatefulWidget {
  KayeLegallyPlanner(this.onSendGift, {Key? key}) : super(key: key);
  late OnSendGift onSendGift;

  @override
  KayeLegallyPlannerDonna createState() => KayeLegallyPlannerDonna(onSendGift);

  static Future<VoGift?> showGiftPanel(
    BuildContext context,
    OnSendGift onSendGift, {
    int currentBalance = 0,
  }) {
    return Get.dialog<VoGift?>(KayeLegallyPlanner(onSendGift));
  }
}

class KayeLegallyPlannerDonna extends State<KayeLegallyPlanner>
    with SingleTickerProviderStateMixin {
  KayeLegallyPlannerDonna(this.onSendGift) : super();
  late OnSendGift onSendGift;
  final PageController _pageController = PageController();
  late List<VoGift> gifts;

  StreamSubscription? _runtimeEventSubscription, _giftPageAnimSubscription;

  int balance = 0;

  final ListQueue<KayeLeadGoalLegally> giftQueue =
      ListQueue<KayeLeadGoalLegally>();

  AnimationController? animationController;

  RxDouble positionedLeft = (-200.0).obs;

  @override
  void initState() {
    balance = KAYE.kayeSasquatchTrish?.balance ?? 0;
    super.initState();
    gifts = KAYE.kayeClosing.gifts;
    _runtimeEventSubscription = KAYE.listen<KayeSasquatchTrishComebackOrder>((
      notify,
    ) {
      setState(() {
        balance = notify.runtime.balance;
      });
    });
    _kayeTestamentLegallyDroveIncreaseProtector();
    _giftPageAnimSubscription = KAYE.listen<KayeLegallyPlannerPrototype>((
      notify,
    ) {
      setState(() {
        _kayeJavaLeadGoalLegally(notify.callGift);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _runtimeEventSubscription?.cancel();
    _giftPageAnimSubscription?.cancel();
    animationController?.dispose();
    animationController = null;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _kayeChihuahuaLeadGoalLegallyPlayhouse(),
          Container(
            height: 330,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF4B0091), Color(0xFF190025)],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Scaffold(
                  backgroundColor: KayeToddlerBarnacle.transparent,
                  resizeToAvoidBottomInset: true,
                  body: Stack(
                    children: [
                      Align(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 24),
                            _kayeConundrumDot(),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 16,
                        top: 236,
                        bottom: 16,
                        left: 24,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            _kayeInterfaceHarpist(),
                            _kayeDunphyCreep(),
                            Align(
                              alignment: Alignment.centerRight,
                              child: _kayeDunphyElectrify(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _kayeTestamentLegallyDroveIncreaseProtector() {
    positionedLeft.value = -200;
    animationController =
        AnimationController(
          duration: const Duration(milliseconds: 600),
          reverseDuration: const Duration(milliseconds: 900),
          lowerBound: -200.toDouble(),
          upperBound: 16.toDouble(),
          vsync: this,
        )..addListener(() {
          final controller = animationController;
          if (controller != null) {
            setState(() {
              positionedLeft.value = controller.value;
            });
          }
        });
    animationController?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (positionedLeft.value == 16) {
          Future.delayed(const Duration(seconds: 3), () {
            animationController?.reverse();
          });
        }
      } else if (status == AnimationStatus.dismissed) {
        giftQueue.removeFirst();
        if (positionedLeft.value == -200) {
          if (giftQueue.isNotEmpty) {
            _kayePlaybookIncrease();
          }
        }
      }
    });
  }

  void _kayePlaybookIncrease() {
    if (animationController?.isDismissed == true) {
      animationController?.reset();
    }
    animationController?.forward();
  }

  void _kayeJavaLeadGoalLegally(KayeLeadGoalLegally callGift) {
    giftQueue.add(callGift);
    if (giftQueue.length == 1) {
      _kayePlaybookIncrease();
    }
  }

  Widget _kayeChihuahuaLeadGoalLegallyPlayhouse() {
    KayeSasquatch? user = giftQueue.isNotEmpty ? giftQueue.first.from : null;
    KayeGogglesLegally? gift = giftQueue.isNotEmpty
        ? giftQueue.first.gift
        : null;
    Widget widget;
    if (user == null || gift == null) {
      widget = const SizedBox.shrink();
    } else {
      widget = Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: KayeToddlerBarnacle.black_40p,
        ),
        child: Row(
          children: [
            KayeTrash.hGap6,
            KayeSydney.circle(url: user.avatarUrl, size: 36, fit: BoxFit.cover),
            KayeTrash.hGap6,
            Expanded(
              flex: 1,
              child: Text(
                user.nickName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: KayeToddlerBarnacle.white,
                ),
              ),
            ),
            KayeTrash.hGap6,
            KayeSydney.circle(
              url: gift.icon ?? "",
              size: 36,
              fit: BoxFit.cover,
            ),
            KayeTrash.hGap6,
          ],
        ),
      );
    }
    return Positioned(
      left: positionedLeft.value,
      bottom: 448,
      height: 48,
      width: 192,
      child: widget,
    );
  }

  Widget _kayeSuiteLegallyPlannerPlayhouse() {
    var pageCount = gifts.length / 8 + (gifts.length % 8 > 0 ? 1 : 0);
    List<Widget> widgets = [];
    for (int i = 0; i < pageCount; i++) {
      var end = min((i + 1) * 8, gifts.length);
      widgets.add(
        AppGiftPageItem(
          items: gifts.sublist(i * 8, end),
          onSendGift: onSendGift,
        ),
      );
    }
    return Expanded(
      child: Stack(
        children: [
          PageView(controller: _pageController, children: widgets),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 44,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: widgets.length,
                effect: const ExpandingDotsEffect(
                  spacing: 4,
                  dotWidth: 6,
                  dotHeight: 6,
                  dotColor: KayeToddlerBarnacle.white_50p,
                  activeDotColor: KayeToddlerBarnacle.white,
                ),
                onDotClicked: (index) {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeInterfaceHarpist() {
    return Positioned(
      left: 0,
      child: KayeSydney.local(
        fileName: 'kaye_ten_float_masculine_interface',
        width: 16,
        height: 16,
      ),
    );
  }

  Widget _kayeDunphyCreep() {
    return Positioned(
      left: 24,
      child: Text("$balance", style: KayeCreepDesperate.TextWhite_14_Medium),
    );
  }

  Widget _kayeDunphyElectrify() {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      color: KayeToddlerBarnacle.white,
      borderRadius: BorderRadius.circular(24),
      child: Text(
        'kaye_trade_suite_dunphy'.tr,
        style: KayeCreepDesperate.TextB1_14_Middle,
      ),
      onPressed: () {
        if (KAYE.kayeSasquatchTrish!.balance > 0) {
          KAYE.toNamed(KayeFortress.KayeLagPassengerPlanner);
        } else {
          KayeUiVail.kayePuddingLagVail(
            fromType: PayFromType.FROM_IM_SEND_GIFT,
          );
        }
      },
    );
  }

  Widget _kayeConundrumDot() {
    Widget widget = const SizedBox();
    if (!KayeWrestlingBarnacle.isEmptyList(gifts)) {
      widget = _kayeSuiteLegallyPlannerPlayhouse();
    }
    return widget;
  }
}

class AppGiftPageItem extends StatefulWidget {
  final List<VoGift> items;
  OnSendGift onSendGift;

  AppGiftPageItem({Key? key, required this.items, required this.onSendGift})
    : super(key: key);

  @override
  AppGiftPageItemState createState() => AppGiftPageItemState(onSendGift);
}

class AppGiftPageItemState extends State<AppGiftPageItem> {
  int onIndexId = -1;
  OnSendGift onSendGift;

  AppGiftPageItemState(this.onSendGift) : super();

  @override
  Widget build(BuildContext context) {
    var selectedIndex = widget.items.indexWhere(
      (element) => element.id == onIndexId,
    );
    var itemWidth = 72.0;
    var itemHeight = 104.0;
    var paddingEdge = 20.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: itemWidth,
          childAspectRatio: itemWidth / itemHeight,
          crossAxisSpacing:
              (MediaQuery.of(context).size.width -
                  paddingEdge * 2 -
                  itemWidth * 4) /
              3,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return _kayeSuiteLegallyDrove(
            context,
            selectedIndex == index,
            widget.items[index],
          );
        },
        itemCount: widget.items.length,
      ),
    );
  }

  Widget _kayeSuiteLegallyDrove(
    BuildContext context,
    bool selected,
    VoGift gift,
  ) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            onIndexId = gift.id;
          });
        } else {
          var balance = KAYE.kayeSasquatchTrish?.balance ?? 0;
          if (balance >= gift.price) {
            onSendGift(gift);
            Navigator.of(context).pop(gift);
          } else {
            Navigator.of(context).pop();
            KayeUiVail.kayePuddingLagVail(
              fromType: PayFromType.FROM_IM_SEND_GIFT,
            );
          }
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: selected
              ? const Color(0xFFFFCE7E)
              : KayeToddlerBarnacle.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: const BoxDecoration(
                  color: KayeToddlerBarnacle.white_20p,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: KayeSydney.small(
                    url: gift.icon,
                    width: 56,
                    height: 56,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            selected
                ? Text(
                    'kaye_trade_genitals'.tr,
                    style: KayeCreepDesperate.TextB1_14_Middle,
                  )
                : _kayeCuterFree(gift),
          ],
        ),
      ),
    );
  }

  Widget _kayeCuterFree(gift) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          gift.price?.toString() ?? "",
          style: KayeCreepDesperate.TextWhite_12,
        ),
        const SizedBox(width: 2),
        KayeSydney.local(
          fileName: 'kaye_ten_float_masculine_interface',
          width: 12,
          height: 12,
        ),
      ],
    );
  }
}
