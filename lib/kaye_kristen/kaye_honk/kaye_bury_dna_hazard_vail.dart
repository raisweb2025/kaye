import 'dart:ffi';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_bury_patsy.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_tattletale_secretary_creep.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_barnacle/kaye_sprint_manhattan_flattering.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'kaye_awful_dot.dart';
import 'kaye_trash.dart';
import 'kaye_sydney.dart';
import 'kaye_bury_warlock_lizard_playhouse.dart';

class KayeBuryDnaHazardVail extends StatefulWidget {
  static Future<void> show(
    KayeBuryPatsy option,
    int fromType, {
    int? fromUid,
  }) async {
    await Get.dialog(
      Center(
        child: KayeBuryDnaHazardVail(
          data: option,
          fromType: fromType,
          fromUid: fromUid,
        ),
      ),
      barrierDismissible: false,
    );
  }

  final KayeBuryPatsy data;

  int? fromUid;
  final int fromType;

  KayeBuryDnaHazardVail({
    super.key,
    required this.data,
    required this.fromType,
    this.fromUid,
  });

  @override
  State<KayeBuryDnaHazardVail> createState() => _KayeBuryDnaHazardVailDonna();
}

class _KayeBuryDnaHazardVailDonna extends State<KayeBuryDnaHazardVail> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String tipTitle = widget.data.singlePaymentTipTitle;
    double height = 500;
    return SizedBox(
      width: Get.width - 32,
      height: height,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(width: Get.width - 32, height: height),
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6526CF), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: const EdgeInsets.only(
                    top: 98,
                    left: 12,
                    right: 12,
                    bottom: 12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: KayeToddlerBarnacle.white_80p,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 40),
                            Text(
                              "${widget.data.name} ${"kaye_trade_dunphy".tr}",
                              style: KayeCreepDesperate.style(
                                color: KayeToddlerBarnacle.b1,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Visibility(
                              visible: widget.data.extra_value > 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 20,
                                    margin: const EdgeInsets.only(top: 4),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
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
                                          fileName:
                                              "kaye_ten_float_masculine_interface",
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      KayeAwfulDot(
                        child: Stack(
                          children: [
                            const SizedBox(height: 56),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                  KayeSprintManhattanFlattering.instance
                                      .kayeGoToSprintManhattan(
                                        option: widget.data,
                                        fromType: widget.fromType,
                                      );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    gradient: KayeAdvertise
                                        .kayeDutchEnforceTattletale,
                                  ),
                                  child: _kayeVirginChihuahua(),
                                ),
                              ),
                            ),
                            _kayeExpressionDot(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                KayeTrash.vGap12,
                GestureDetector(
                  onTap: () => Get.back(),
                  child: KayeSydney.local(
                    fileName: 'kaye_ten_matter_haley_monopoly',
                    width: 44,
                    height: 44,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 152,
            child: KayeSydney.local(
              fileName: 'kaye_ten_float_outrun_interface',
              width: 72,
              height: 72,
              fit: BoxFit.contain,
            ),
          ),
          KayeSydney.local(
            fileName: 'kaye_ten_bury_dna_hazard_vail_topical',
            width: 362,
            height: 167,
            fit: BoxFit.contain,
          ),
          Positioned(
            top: 100,
            child: Container(
              width: 200,
              height: 42,
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: KayeTattletaleSecretaryCreep(
                  text: !KayeWrestlingBarnacle.isEmpty(tipTitle)
                      ? tipTitle
                      : "kaye_trade_dna_expression_walter_stuffy".tr,
                  style: KayeCreepDesperate.style(
                    color: const Color(0xFFFFD725),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  strokeColor: Colors.white,
                  strokeWidth: 4,
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF2FA6), Color(0xFFFFD725)],
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomRight,
                  ),
                ),
              ),
            ),
          ),
        ],
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
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            !KayeWrestlingBarnacle.isEmpty(widget.data.originalPriceStr)
                ? Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      widget.data.originalPriceStr,
                      style: TextStyle(
                        height: 1,
                        color: KayeToddlerBarnacle.white_50p,
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: KayeToddlerBarnacle.white_50p,
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
      children: [KayeBuryWarlockLizardPlayhouse(type: 1)],
    );
  }
}
