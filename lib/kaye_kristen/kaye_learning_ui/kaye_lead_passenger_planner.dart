import 'dart:math';
import 'kaye_planner_diet.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_lead_eat_tie.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_planner_wheaton.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_trash.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_tattletale_secretary_creep.dart';
import 'package:permission_handler/permission_handler.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_barnacle/kaye_sunglass_barnacle.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_honk/kaye_plimpton_uhh_belly.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../kaye_fortress.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_honk/kaye_dot_sasquatch_quack_fax.dart';
import '../kaye_learning/kaye_lead_passenger_glorify.dart';
import '../kaye_learning/kaye_lead_planner_upon.dart';

class KayeLeadPassengerPlanner
    extends KayeFrankGraduatePlanner<KayeLeadPassengerGlorify> {
  KayeLeadPassengerPlanner({super.key});

  Widget mainWidget(BuildContext context) {
    try {
      return SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KayeTattletaleSecretaryCreep(
                      text: "kaye_trade_mitten_cousin".tr,
                      strokeColor: Colors.transparent,
                      style: KayeCreepDesperate.style(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFF4661),
                      ),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFFF4661), Color(0xFFFF7E45)],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topRight,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: buildKayeDunphyDisgustingDot(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),

              GetBuilder<KayeLeadPassengerGlorify>(
                id: logic.kaye_vw_order_tank,
                builder: (logic) {
                  return _kayeOrderDot();
                },
              ),

              _kayeLeadPassengerConundrumDot(context),
            ],
          ),
        ),
      );
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770008, e, stack);
      rethrow;
    }
  }

  Widget _kayeEatBelow(KayeLeadEatTie chatOther) {
    return GestureDetector(
      child: KayeLeadEatBelow(chatOther),
      onTap: () {
        switch (chatOther.type) {
          case KayeLeadEatWrestling.systemNotify:
            KAYE.toNamed(KayeFortress.KayeJellyOrderPlanner);
            break;
          case KayeLeadEatWrestling.feedback:
            KayePlimptonUhhBelly.onKayeCuter();
            break;
        }
      },
    );
  }

  Widget _kayeLeadBanalityBelow(KayeLeadBanality chatBox) {
    return Material(
      color: KayeToddlerBarnacle.transparent,
      child: Slidable(
        key: ValueKey<int?>(chatBox.id),
        endActionPane: ActionPane(
          extentRatio: 0.36,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              flex: 1,
              onPressed: (context) => logic.onKayeLocketLeadBanality(chatBox),
              backgroundColor: const Color(0xFFFF0000),
              foregroundColor: Colors.white,
              spacing: 0,
              label: "kaye_trade_locket".tr,
            ),
          ],
        ),
        child: InkWell(
          onTap: () => KayeLeadPlannerPlaybookUp.openChatWithChatBox(chatBox),
          splashColor: Colors.transparent,
          child: KayeLeadPassengerBelow(chatBox),
        ),
      ),
    );
  }

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    return [mainWidget(context)];
  }

  Widget _kayeLeadPassengerConundrumDot(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        controller: logic.controller,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 8)),

          GetBuilder<KayeLeadPassengerGlorify>(
            id: logic.kaye_vw_lead_eat,
            builder: (logic) {
              return SliverFixedExtentList(
                itemExtent: 72.0,
                delegate: SliverChildBuilderDelegate((context, index) {
                  return _kayeEatBelow(logic.chatOtherList[index]);
                }, childCount: logic.chatOtherList.length),
              );
            },
          ),

          SliverToBoxAdapter(child: buildKayeBladderDot()),

          GetBuilder<KayeLeadPassengerGlorify>(
            id: logic.kaye_vw_lead_passenger,
            builder: (logic) {
              return logic.isSameDatabaseVersion
                  ? SliverFixedExtentList(
                      itemExtent: 72.0,
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return _kayeLeadBanalityBelow(logic.chatList[index]);
                      }, childCount: logic.chatList.length),
                    )
                  : SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            KayeSunglassBarnacle.kayeNoTieInterface(
                              text: "kaye_trade_chaotic_carefully".tr,
                            ),
                            24.hGap,
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient:
                                    KayeAdvertise.kayeDutchEnforceTattletale,
                              ),
                              child: Center(
                                child: Text(
                                  "kaye_trade_thinner".tr,
                                  style: KayeCreepDesperate.style(
                                    color: KayeToddlerBarnacle.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ).click(logic.upgradeDatabase),
                          ],
                        ),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }

  _kayeOrderDot() {
    Widget widget = Container();
    if (logic.notificationStatus != PermissionStatus.granted) {
      widget = Container(
        height: 48,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFFF6546),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            KayeTrash.lineH1p2White_20p,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                KayeSydney.local(
                  fileName: 'kaye_ten_im_order_interface',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    "kaye_trade_order_matter".tr,
                    style: KayeCreepDesperate.white14Bold,
                  ),
                ),
                Transform.rotate(
                  angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_meanwhile_swimmer_monopoly',
                    width: 12,
                    height: 12,
                  ),
                ),
              ],
            ),
            KayeTrash.lineH1p2White_20p,
          ],
        ),
      );

      widget = GestureDetector(onTap: () => logic.checkNotify(), child: widget);
    }
    return widget;
  }
}

class KayeLeadEatBelow extends StatelessWidget {
  final KayeLeadEatTie chatCustomData;

  const KayeLeadEatBelow(this.chatCustomData);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 76,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: KayeToddlerBarnacle.white_10p,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          KayeSydney.local(
            fileName: chatCustomData.icon ?? "",
            width: 40,
            height: 40,
          ),
          KayeTrash.hGap12,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      chatCustomData.name ?? "",
                      style: KayeCreepDesperate.white16Bold,
                    ),
                    KayeTrash.hGap4,
                    KayeLeadBarnacle.chatListTimeWidget(chatCustomData.time),
                  ],
                ),
                KayeTrash.vGap4,
                SizedBox(
                  width: max(160.0, screenWidth - 100.0),
                  child: Row(
                    children: <Widget>[
                      _kayeLeadEatBelowCreepDot(),
                      KayeTrash.hGap8,
                      KayeLeadBarnacle.chatListUnreadCountWidget(
                        chatCustomData.count,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeLeadEatBelowCreepDot() {
    return Expanded(
      child: Text(
        chatCustomData.content ?? "",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: KayeCreepDesperate.style(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: KayeToddlerBarnacle.white,
        ),
      ),
    );
  }
}

class KayeLeadPassengerBelow extends StatelessWidget {
  final KayeLeadBanality chatBox;

  const KayeLeadPassengerBelow(this.chatBox);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 72,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: KayeToddlerBarnacle.white_10p,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _kayeLeadBelowOctopusDot(),
          KayeTrash.hGap12,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _kayeLeadBelowInventionDot(),
                    KayeTrash.hGap4,
                    KayeLeadBarnacle.chatListTimeWidget(chatBox.displayTime),
                  ],
                ),
                KayeTrash.vGap4,
                SizedBox(
                  width: max(160.0, screenWidth - 100.0),
                  child: Row(
                    children: <Widget>[
                      _kayeLeadBelowCreepDot(),
                      KayeTrash.hGap8,
                      KayeLeadBarnacle.chatListUnreadCountWidget(
                        chatBox.unreadCount,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeLeadBelowOctopusDot() {
    return Stack(
      children: [
        KayeSydney.circle(
          url: chatBox.showCoverURL ?? "",
          size: 40,
          clip: ImageClipType.small,
          fit: BoxFit.cover,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: chatBox.chatUser?.uid == null
              ? const SizedBox()
              : KayeDotSasquatchQuackFax(
                  uid: chatBox.chatUser!.uid,
                  isShowText: false,
                ),
        ),
      ],
    );
  }

  Widget _kayeLeadBelowInventionDot() {
    return Flexible(
      child: Text.rich(
        TextSpan(
          text: '${chatBox.showName}',
          style: KayeCreepDesperate.white16Bold,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _kayeLeadBelowCreepDot() {
    return Expanded(
      child: KayeLeadBarnacle.kayeLeadPassengerCreepDot(chatBox.lastContent),
    );
  }
}
