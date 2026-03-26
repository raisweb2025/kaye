import 'dart:math';
import 'kaye_fridge_tractor.dart';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_io_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sprint_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_quiche_internship.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_bury_forklift.dart';
import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_advertise.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_honk/kaye_frank_graduate_planner.dart';
import '../kaye_honk/kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';
import '../kaye_learning/kaye_sprint_manhattan_glorify.dart';

class KayeSprintManhattanPlanner
    extends KayeFrankGraduatePlanner<KayeSprintManhattanGlorify> {
  const KayeSprintManhattanPlanner({super.key});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      return [_kayeYetDot(), _kayeEvaluateInternship(context)];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(770013, e, stack);
      rethrow;
    }
  }

  _kayeYetDot() {
    return Container(
      color: KayeToddlerBarnacle.white,
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          SizedBox(height: Get.mediaQuery.padding.top + 54),
          _kayeElsewhereSelfishDuplicate(logic.optionDetail.value),
          const SizedBox(height: 24),
          GetBuilder<KayeSprintManhattanGlorify>(
            id: logic.kaye_patsy_underbelly_comeback,
            builder: (logic) {
              int length = logic.optionDetail.value.pay_mode_prices != null
                  ? logic.optionDetail.value.pay_mode_prices!.length
                  : 0;
              return Visibility(
                visible: length > 0,
                child: Text(
                  'kaye_trade_devon_bury_forklift'.tr,
                  style: KayeCreepDesperate.style(
                    color: KayeToddlerBarnacle.black_40p,
                    fontSize: 16,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 8),
          GetBuilder<KayeSprintManhattanGlorify>(
            id: logic.kaye_patsy_underbelly_comeback,
            builder: (logic) {
              return _kayeBuryForkliftPassenger(logic.optionDetail.value);
            },
          ),
        ],
      ),
    );
  }

  Widget _kayeElsewhereSelfishDuplicate(KayeBuryPatsy optionDetail) {
    return Container(
      width: Get.width - 48,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: KayeToddlerBarnacle.black_05p,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            children: [
              const SizedBox(width: 32),
              optionDetail.isVip
                  ? KayeSydney.local(
                      fileName: "kaye_ten_delivery_interface",
                      width: 46,
                      height: 46,
                      fit: BoxFit.contain,
                    )
                  : KayeSydney.local(
                      fileName: "kaye_ten_float_outrun_interface",
                      width: 36,
                      height: 36,
                      fit: BoxFit.contain,
                    ),
              const SizedBox(width: 4),
              Text(
                optionDetail.detailName ?? "",
                style: KayeCreepDesperate.style(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: KayeToddlerBarnacle.black,
                  height: 1,
                ),
                maxLines: 1,
              ),
              const SizedBox(width: 2),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  optionDetail.isVip
                      ? optionDetail.unitTitle
                      : "kaye_trade_dunphy".tr,
                  style: KayeCreepDesperate.style(
                    fontSize: 14,
                    color: KayeToddlerBarnacle.black_60p,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Visibility(
              visible: optionDetail.extra_value > 0,
              child: Container(
                height: 20,
                padding: const EdgeInsets.only(left: 6, right: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFF8321FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      "+${optionDetail.extra_value.toStringAsFixed(0)}",
                      style: KayeCreepDesperate.style(
                        color: KayeToddlerBarnacle.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 2),
                    KayeSydney.local(
                      fileName: "kaye_ten_float_masculine_interface",
                      width: 12,
                      height: 12,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _kayeEvaluateInternship(BuildContext context) {
    return Positioned(
      top: Get.context!.mediaQueryPadding.top,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          KayeQuicheInternship(
            leading: KayeSydney.local(
              fileName: "kaye_ten_kristen_internship_uhh",
              width: 24,
              height: 24,
              color: KayeToddlerBarnacle.black,
            ),
            middle: Text(
              "kaye_trade_sprint".tr,
              style: KayeCreepDesperate.style(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: KayeToddlerBarnacle.black,
              ),
            ),
          ),
          Positioned(
            left: KayeIOBarnacle.isARLanguage() ? 16 : null,
            right: KayeIOBarnacle.isARLanguage() ? null : 16,
            child: GetBuilder<KayeSprintManhattanGlorify>(
              id: logic.kaye_cuter_drape_electrify,
              builder: (logic) {
                return Visibility(
                  visible: logic.showRestoreButton.value,
                  child: GestureDetector(
                    onTap: logic.onKayeDrapeCookie,
                    child: Container(
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: KayeToddlerBarnacle.white_60p,
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          KayeSydney.local(
                            fileName:
                                'kaye_ten_sprint_complaint_drape_interface',
                            width: 14,
                            height: 14,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            "kaye_trade_drape".tr,
                            style: KayeCreepDesperate.style(
                              fontSize: 12,
                              color: KayeToddlerBarnacle.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeBuryForkliftPassenger(KayeBuryPatsy optionDetail) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              const Divider(height: 12, color: Colors.transparent),
          padding: const EdgeInsets.all(0),
          itemCount: optionDetail.pay_mode_prices != null
              ? optionDetail.pay_mode_prices!.length
              : 0,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                logic.onKayeComplaintSprint(
                  optionDetail.pay_mode_prices![index],
                );
              },
              child: _kayeChihuahuaDrove(
                context,
                optionDetail.pay_mode_prices![index],
                optionDetail,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _kayeChihuahuaDrove(
    BuildContext context,
    KayeBuryForklift paymentMethod,
    KayeBuryPatsy optionDetail,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFF2F2F2), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                KayeSydney.circle(url: paymentMethod.icon ?? "", size: 32),
                const SizedBox(width: 12),
                Text(
                  paymentMethod.name ?? "",
                  style: const TextStyle(
                    color: KayeToddlerBarnacle.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Text(
              (paymentMethod.pay_mode == 3 || paymentMethod.pay_mode == 4)
                  ? optionDetail.priceStr
                  : paymentMethod.priceStr,
              style: const TextStyle(
                color: KayeToddlerBarnacle.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
