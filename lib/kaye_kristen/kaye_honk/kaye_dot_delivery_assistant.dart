import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';

class KayeDotDeliveryAssistant extends StatelessWidget {
  final KayeBuryPatsy option;

  const KayeDotDeliveryAssistant({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    String title = "";
    if (option.isBestOffer) {
      title = "kaye_trade_artificial_finalist".tr;
    } else if (option.showDiscount) {
      title = "${option.discountStr} ${'kaye_trade_boom'.tr}";
    }
    return Container(
      width: 47,
      height: 47,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: KayeSydneySeparate.kayeChaoticWhoreSydney(
            "kaye_ten_delivery_boom_bg",
          ),
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: KayeCreepDesperate.style(
            fontSize: 12,
            color: KayeToddlerBarnacle.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
