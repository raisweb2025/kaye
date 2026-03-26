import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_franchise_creep_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeLeadBelowCreepPlayhouse extends StatelessWidget {
  final KayeLuther snap;

  const KayeLeadBelowCreepPlayhouse({Key? key, required this.snap})
    : super(key: key);

  static void kayeStretchComplaintFranchiseCreep(KayeLuther snap) {
    snap.richTexts ??= KayeFranchiseCreepBarnacle.getRichText(
      snap.textContent,
      style: snap.isMine
          ? KayeCreepDesperate.outgoingTextStyle
          : KayeCreepDesperate.incomingTextStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    var decoration = snap.isMine
        ? BoxDecoration(
            borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByEggplant(),
            gradient: KayeLeadBarnacle.kayeLeadBelowPileTattletaleByEggplant(),
          )
        : BoxDecoration(
            borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByBingo(),
            color: KayeLeadBarnacle.kayeLeadBelowPileManeuverByBingo(),
          );
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {},
      child: _kayeFranchiseDot(decoration, context),
    );
  }

  Widget _kayeFranchiseDot(decoration, context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 48.0,
        maxWidth: MediaQuery.of(context).size.width - 93,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: decoration,
      child: Text.rich(TextSpan(children: snap.richTexts)),
    );
  }
}
