import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_exact.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_maneuver_electrify.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';

import '../kaye_goggles/kaye_goggles_crisp.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeFutonPlayhouse extends StatefulWidget {
  static void show({required String onIds, Function(String onIdsStr)? func}) {
    showCupertinoModalPopup(
      context: Get.context!,
      barrierColor: KayeToddlerBarnacle.black_60p,
      builder: (context) {
        return KayeFutonPlayhouse(tagSelectedIds: onIds, callBack: func);
      },
    );
  }

  const KayeFutonPlayhouse({
    super.key,
    required this.tagSelectedIds,
    required this.callBack,
  });

  final String tagSelectedIds;
  final Function(String onIdsStr)? callBack;

  @override
  State<KayeFutonPlayhouse> createState() => _KayeFutonPlayhouseDonna();
}

class _KayeFutonPlayhouseDonna extends State<KayeFutonPlayhouse> {
  int selectedIndex = -1;

  List<KayeGogglesCrisp>? interestList;

  List<String> onIdList = [];

  Function(String onIdsStr)? callBack;

  @override
  void initState() {
    super.initState();

    interestList = KAYE.kayeClosing.configs.interests;

    if (!KayeWrestlingBarnacle.isEmpty(widget.tagSelectedIds)) {
      List<KayeGogglesCrisp>? onInterests = KAYE.kayeClosing.getInterestsByIds(
        widget.tagSelectedIds,
      );

      if (!KayeWrestlingBarnacle.isEmptyList(onInterests)) {
        for (var element in onInterests!) {
          onIdList.add(element.id);
        }
      }
    }
    callBack = widget.callBack;
  }

  @override
  Widget build(BuildContext context) {
    String title = onIdList.isNotEmpty
        ? "kaye_trade_crisp_futon_snug".tr.replaceFirst(
            "%s",
            "${onIdList.length}",
          )
        : "kaye_trade_crisp_futon".tr;
    return Container(
      width: Get.width,
      height: 360,
      margin: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
        color: KayeAdvertise.kayeVailBgTremendousManeuver,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: KayeCreepDesperate.white18Bold),
              GestureDetector(
                onTap: () => Get.back(),
                child: KayeSydney.local(
                  fileName: 'kaye_ten_matter_haley_mediocre',
                  width: 36,
                  height: 36,
                ),
              ),
            ],
          ),
          18.hGap,
          _kayeCrispPhotograph(),
          20.hGap,
          const Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (!KayeWrestlingBarnacle.isEmptyList(onIdList)) {
                  String onIdStr = onIdList.join(',');
                  if (!KayeWrestlingBarnacle.isEmpty(onIdStr) &&
                      callBack != null) {
                    callBack!(onIdStr);
                  }
                }
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: KayeToddlerBarnacle.white,
                minimumSize: const Size(180, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                "kaye_trade_namaste".tr,
                style: const TextStyle(
                  color: KayeToddlerBarnacle.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _kayeCrispPhotograph() {
    if (KayeWrestlingBarnacle.isEmptyList(interestList)) return Container();

    Widget childWeight = Wrap(
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 10,
      children: List.generate(interestList!.length, (index) {
        KayeGogglesCrisp interest = interestList![index];
        bool isSelected = onIdList.contains(interest.id);
        return GestureDetector(
          onTap: () {
            if (onIdList.contains(interest.id)) {
              onIdList.remove(interest.id);
            } else {
              onIdList.add(interest.id);
            }
            setState(() {});
          },
          child: Container(
            height: 32,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: !isSelected
                  ? KayeAdvertise.kayeDutchEnforceIbizaManeuver
                  : KayeAdvertise.kayeDutchEnforceDevonManeuver,
            ),
            child: Text(
              interestList![index].name.tr,
              style: KayeCreepDesperate.TextWhite_14,
              textAlign: TextAlign.center,
            ),
          ),
        );
      }),
    );

    return SingleChildScrollView(child: childWeight);
  }
}
