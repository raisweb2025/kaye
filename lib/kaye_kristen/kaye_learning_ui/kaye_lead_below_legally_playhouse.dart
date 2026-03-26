import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import '../kaye_learning/kaye_outdated_upon.dart';
import '../kaye_fortress.dart';
import '../kaye_honk/kaye_outdated_playhouse.dart';
import '../kaye_classy/kaye_hand.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_lead_luther_whatever_conundrum.dart';

class KayeLeadBelowLegallyPlayhouse extends StatelessWidget {
  final KayeLeadLutherWhateverConundrum content;

  const KayeLeadBelowLegallyPlayhouse({Key? key, required this.content})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otherStyle = BoxDecoration(
      borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByBingo(),
      color: KayeToddlerBarnacle.white_20p,
    );

    String text = 'Unknown';
    Color color = content.isUserIdMine
        ? KayeToddlerBarnacle.white
        : KayeToddlerBarnacle.white;
    var mineStyle = BoxDecoration(
      borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByEggplant(),
      color: KayeToddlerBarnacle.color358ACE,
    );

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (!KayeWrestlingBarnacle.isEmpty(content.animation_url)) {
          Get.toNamed(
            KayeFortress.KayeSVGAPlanner,
            arguments: KayeOutdatedUpon(content.animation_url!, false),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        decoration: content.isUserIdMine ? mineStyle : otherStyle,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            KayeSydney.small(url: content.icon ?? "", width: 48, height: 48),
            const SizedBox(width: 8.0),
            Column(
              children: [
                Text(
                  "kaye_trade_genitals".tr,
                  style: KayeCreepDesperate.style(color: color, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      content.price?.toString() ?? "",
                      style: KayeCreepDesperate.style(
                        color: color.withAlpha(180),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 3),
                    KayeSydney.local(
                      fileName: 'kaye_ten_float_masculine_interface',
                      width: 16,
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
