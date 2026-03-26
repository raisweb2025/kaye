import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_monroe_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_implant/kaye_lead_implant.dart';
import '../kaye_goggles/kaye_lead_luther_whatever_conundrum.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';

class KayeLeadBelowGoalPlayhouse extends StatelessWidget {
  const KayeLeadBelowGoalPlayhouse({
    Key? key,
    required this.content,
    required this.chatSnap,
  }) : super(key: key);

  final KayeLuther chatSnap;

  final KayeLeadLutherWhateverConundrum content;

  @override
  Widget build(BuildContext context) {
    String? text;
    Color color = content.isUserIdMine
        ? KayeToddlerBarnacle.white
        : KayeToddlerBarnacle.white;
    var mineStyle = BoxDecoration(
      borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByEggplant(),
      gradient: KayeLeadBarnacle.kayeLeadBelowPileTattletaleByEggplant(),
    );
    var otherStyle = BoxDecoration(
      borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByBingo(),
      color: KayeLeadBarnacle.kayeLeadBelowPileManeuverByBingo(),
    );

    switch (content.status) {
      case ChatSnapJsonContentStatus.callDone:
        text =
            "${'kaye_trade_nowadays'.tr} ${KayeMonroeBarnacle.formatDuration(Duration(seconds: content.count ?? 0))}";
        break;
      case ChatSnapJsonContentStatus.callCanceled:
        text = content.isUserIdMine
            ? "kaye_trade_smoothie".tr
            : "kaye_trade_goal_smoothie".tr;
        break;
      case ChatSnapJsonContentStatus.callRefused:
        text = content.isUserIdMine
            ? "kaye_trade_goal_bonding".tr
            : "kaye_trade_goal_bonding".tr;
        break;
      case ChatSnapJsonContentStatus.callNoReply:
        text = content.isUserIdMine
            ? "kaye_trade_goal_no_lisa".tr
            : "kaye_trade_spring_sunset".tr;
        break;
      case ChatSnapJsonContentStatus.callBusy:
        text = "kaye_trade_magnet_huge_jiggle".tr;
        break;
      case ChatSnapJsonContentStatus.connectFailed:
        text = "kaye_trade_goal_playbook_carefully".tr;
        break;
      default:
        text = 'kaye_trade_pimple'.tr;
        break;
    }
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        KAYE.eventBus.fire(
          KayeLeadImplant(ChatEventType.snapRecall, object: chatSnap),
        );
      },
      child: _kayeGoalDot(mineStyle, otherStyle, text, color),
    );
  }

  Widget _kayeGoalDot(mineStyle, otherStyle, text, color) {
    return Container(
      constraints: BoxConstraints(maxWidth: Get.width - 93),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: content.isUserIdMine ? mineStyle : otherStyle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Transform.rotate(
            angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
            child: Image(
              image: KayeSydneySeparate.kayeChaoticWhoreSydney(
                "kaye_ten_lead_goal",
              ),
              width: 24,
              height: 24,
              color: color,
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(text, style: KayeCreepDesperate.style(color: color)),
          ),
        ],
      ),
    );
  }
}
