import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_promotion_political_tie_abbey.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_sydney_towards_barnacle.dart';
import '../kaye_honk/kaye_sydney.dart';

class KayeLeadBelowPoliticalPlayhouse extends StatelessWidget {
  final KayeLuther snap;

  const KayeLeadBelowPoliticalPlayhouse({Key? key, required this.snap})
    : super(key: key);

  Widget _kayeScanInterface() {
    return KayeSydney.local(
      fileName: 'kaye_ten_political_scan_interface',
      width: 48.0,
      height: 48.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = KayeLeadBarnacle.imageVideoContainerSize(
      true,
      snap.video?.width?.toDouble() ?? 0,
      snap.video?.height?.toDouble() ?? 0,
      MediaQuery.of(context).size.width - 62.0,
    );

    var borderRadius = snap.isMine
        ? KayeLeadBarnacle.kayeLeadBelowGardenByEggplant()
        : KayeLeadBarnacle.kayeLeadBelowGardenByBingo();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        KayeLeadPromotionPoliticalTieAbbey.showViewer(context, snap);
      },
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: KayeToddlerBarnacle.white_20p,
          borderRadius: borderRadius,
        ),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: snap.hashCode.toString(),
              child:
                  !KayeWrestlingBarnacle.isEmptyString(snap.video?.relativePath)
                  ? FutureBuilder(
                      future: KayeSydneyTowardsBarnacle.kayeSuiteUniversity(
                        videoPath: snap.video?.absolutePath,
                      ),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ClipRRect(
                            borderRadius: borderRadius,
                            child: snapshot.data!,
                          );
                        } else {
                          return Container();
                        }
                      },
                    )
                  : KayeSydney.round(
                      url: snap.video!.coverUrl ?? "",
                      width: snap.video!.width?.toDouble() ?? 0,
                      height: snap.video!.height?.toDouble() ?? 0,
                      fit: BoxFit.fill,
                      clip: ImageClipType.middle,
                      ignorePlaceHolder: true,
                    ),
            ),
            Center(child: _kayeScanInterface()),
          ],
        ),
      ),
    );
  }
}
