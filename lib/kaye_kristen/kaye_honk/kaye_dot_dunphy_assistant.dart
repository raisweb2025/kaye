import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeDotDunphyAssistant extends StatelessWidget {
  final KayeBuryPatsy option;

  const KayeDotDunphyAssistant({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    String title = "";
    if (option.isBestOffer) {
      title = "kaye_trade_artificial_finalist".tr;
    } else if (option.showDiscount) {
      title = "${option.discountStr} ${'kaye_trade_boom'.tr}";
    }
    return Container(
      height: 22,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        gradient: const LinearGradient(
          colors: [Color(0xFF58FF7A), Color(0xFF01E1AB)],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: KayeCreepDesperate.style(
            fontSize: 12,
            color: KayeToddlerBarnacle.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
