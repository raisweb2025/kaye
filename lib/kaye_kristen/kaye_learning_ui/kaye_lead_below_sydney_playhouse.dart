import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_promotion_debate_tie_abbey.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_honk/kaye_sydney.dart';

class KayeLeadBelowSydneyPlayhouse extends StatelessWidget {
  final KayeLuther snap;

  const KayeLeadBelowSydneyPlayhouse({Key? key, required this.snap})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = KayeLeadBarnacle.imageVideoContainerSize(
      true,
      snap.image?.width?.toDouble() ?? 0,
      snap.image?.height?.toDouble() ?? 0,
      MediaQuery.of(context).size.width - 62.0,
    );
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        KayeLeadPromotionDebateTieAbbey.showViewer(context, snap);
      },
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: KayeToddlerBarnacle.white_20p,
          borderRadius: snap.isMine
              ? KayeLeadBarnacle.kayeLeadBelowGardenByEggplant()
              : KayeLeadBarnacle.kayeLeadBelowGardenByBingo(),
        ),
        child: _kayeThreesomeDot(size),
      ),
    );
  }

  Widget _kayeThreesomeDot(Size size) {
    BorderRadius borderRadius = snap.isMine
        ? KayeLeadBarnacle.kayeLeadBelowGardenByEggplant()
        : KayeLeadBarnacle.kayeLeadBelowGardenByBingo();

    return Hero(
      tag: snap.hashCode.toString(),
      child: !KayeWrestlingBarnacle.isEmptyString(snap.image?.relativePath)
          ? Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                image: DecorationImage(
                  image: FileImage(File(snap.image!.absolutePath!)),
                ),
              ),
            )
          : KayeSydney.round(
              url: snap.image?.imgUrl ?? "",
              width: size.width,
              height: size.height,
              clip: ImageClipType.middle,
              fit: BoxFit.fill,
              ignorePlaceHolder: true,
            ),
    );
  }
}
