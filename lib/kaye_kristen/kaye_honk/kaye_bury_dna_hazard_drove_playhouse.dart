import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_awful_dot.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import 'kaye_trash.dart';
import 'kaye_tattletale_secretary_creep.dart';
import 'kaye_bury_warlock_lizard_playhouse.dart';

class KayeBuryDnaHazardDrovePlayhouse extends StatefulWidget {
  final KayeBuryPatsy data;
  bool isFromFirstRecharge;
  String exTips;

  final KayeAwfulProtector? breathingController;

  final int? repeatCount;

  KayeBuryDnaHazardDrovePlayhouse({
    super.key,
    required this.data,
    this.isFromFirstRecharge = true,
    this.exTips = "",
    this.breathingController,
    this.repeatCount,
  });

  @override
  State<KayeBuryDnaHazardDrovePlayhouse> createState() =>
      _KayeBuryDnaHazardDrovePlayhouseDonna();
}

class _KayeBuryDnaHazardDrovePlayhouseDonna
    extends State<KayeBuryDnaHazardDrovePlayhouse> {
  @override
  Widget build(BuildContext context) {
    bool isAr = KayeIOBarnacle.isARLanguage();
    return SizedBox(
      height: 156,
      width: Get.width - 48,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: KayeSydney.local(
                fileName: isAr
                    ? 'kaye_ten_dna_hazard_bg_ar'
                    : 'kaye_ten_dna_hazard_bg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 8 + 48,
            bottom: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KayeSydney.local(
                      fileName: "kaye_ten_float_outrun_interface",
                      width: 36,
                      height: 36,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      "${widget.data.name}",
                      style: const TextStyle(
                        fontSize: 24,
                        color: KayeToddlerBarnacle.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    8.wGap,
                    Visibility(
                      visible: widget.data.extra_value > 0,
                      child: Container(
                        height: 20,
                        margin: const EdgeInsets.only(top: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF8321FF),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "+${widget.data.extra_value.toInt()}",
                              style: KayeCreepDesperate.style(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: KayeToddlerBarnacle.white,
                              ),
                            ),
                            KayeSydney.local(
                              fileName: "kaye_ten_float_masculine_interface",
                              width: 14,
                              height: 14,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                KayeAwfulDot(
                  controller: widget.breathingController,
                  repeatCount: widget.repeatCount,
                  child: Stack(
                    children: [
                      const SizedBox(width: double.infinity, height: 56),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: Get.width - 32 - 24,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF12F),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: _kayeVirginChihuahua(),
                        ),
                      ),
                      widget.isFromFirstRecharge
                          ? _kayeExpressionDot()
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: KayeWrestlingBarnacle.isEmpty(widget.exTips)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 144,
                        height: 44,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: KayeSydneySeparate.kayeChaoticWhoreSydney(
                              'kaye_ten_dna_hazard_topical_interface',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: _kayeConsistWaiter(),
                      ),
                    ],
                  )
                : Container(
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Color(0xFF805DFF),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: KayeWrestlingBarnacle.isEmpty(widget.exTips)
                        ? _kayeConsistWaiter()
                        : Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  widget.exTips,
                                  style: KayeCreepDesperate.style(
                                    color: KayeToddlerBarnacle.white,
                                    fontSize: 12,
                                    height: 1.1,
                                  ),
                                ),
                              ),
                              4.wGap,
                              Expanded(flex: 1, child: _kayeConsistWaiter()),
                            ],
                          ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _kayeConsistWaiter() {
    String tipTitle = widget.data.singlePaymentTipTitle;

    if (!KayeWrestlingBarnacle.isEmpty(widget.exTips) &&
        KayeWrestlingBarnacle.isEmpty(tipTitle)) {
      return const SizedBox.shrink();
    }
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: KayeTattletaleSecretaryCreep(
        text: !KayeWrestlingBarnacle.isEmpty(tipTitle)
            ? tipTitle
            : "kaye_trade_dna_expression_walter_stuffy".tr,
        strokeColor: Colors.white,
        strokeWidth: 2,
        style: KayeCreepDesperate.style(
          fontSize: !KayeWrestlingBarnacle.isEmpty(tipTitle) ? 18 : 12,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: const Color(0xFFFFD725),
        ),
        gradient: const LinearGradient(
          colors: [Color(0xFFFF2FA6), Color(0xFFFFD725)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }

  Widget _kayeVirginChihuahua() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.data.priceStr,
              style: KayeCreepDesperate.style(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
            !KayeWrestlingBarnacle.isEmpty(widget.data.originalPriceStr)
                ? Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                      widget.data.originalPriceStr,
                      style: const TextStyle(
                        height: 1,
                        color: KayeToddlerBarnacle.black_30p,
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: KayeToddlerBarnacle.black_30p,
                        decorationThickness: 2,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget _kayeExpressionDot() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [KayeBuryWarlockLizardPlayhouse()],
    );
  }
}
