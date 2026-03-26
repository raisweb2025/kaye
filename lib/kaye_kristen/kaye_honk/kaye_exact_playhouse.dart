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
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';

import '../kaye_goggles/kaye_goggles_crisp.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeExactPlayhouse extends StatefulWidget {
  static void show({required String onIds, Function(String onIdsStr)? func}) {
    showCupertinoModalPopup(
      context: Get.context!,
      barrierColor: KayeToddlerBarnacle.black_60p,
      builder: (context) {
        return KayeExactPlayhouse(tagSelectedIds: onIds, callBack: func);
      },
    );
  }

  const KayeExactPlayhouse({
    super.key,
    required this.tagSelectedIds,
    required this.callBack,
  });

  final String tagSelectedIds;
  final Function(String onIdsStr)? callBack;

  @override
  State<KayeExactPlayhouse> createState() => _KayeExactPlayhouseDonna();
}

class _KayeExactPlayhouseDonna extends State<KayeExactPlayhouse> {
  int selectedIndex = -1;

  List<KayeGogglesExact>? languageList;

  List<String> onIdList = [];

  Function(String onIdsStr)? callBack;

  @override
  void initState() {
    super.initState();

    languageList = KAYE.kayeClosing.configs.languages;

    if (!KayeWrestlingBarnacle.isEmpty(widget.tagSelectedIds)) {
      List<KayeGogglesExact>? onLanguages = KAYE.kayeClosing.getLanguagesByIds(
        widget.tagSelectedIds,
      );
      if (!KayeWrestlingBarnacle.isEmptyList(onLanguages)) {
        for (var element in onLanguages!) {
          onIdList.add(element.id);
        }
      }
    }

    callBack = widget.callBack;
  }

  @override
  Widget build(BuildContext context) {
    String title = onIdList.isNotEmpty
        ? "kaye_trade_exact_snug".tr.replaceFirst("%s", "${onIdList.length}")
        : "kaye_trade_exact".tr;

    return Container(
      width: Get.width,
      height: 300,
      margin: EdgeInsets.only(bottom: Get.mediaQuery.padding.bottom),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
        color: KayeAdvertise.kayeVailBgTremendousManeuver,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          _kayeExactPhotograph(),
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

  Widget _kayeExactPhotograph() {
    if (KayeWrestlingBarnacle.isEmptyList(languageList)) return Container();

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10,
      runSpacing: 10,
      children: List.generate(languageList!.length, (index) {
        KayeGogglesExact language = languageList![index];
        bool isSelected = onIdList.contains(language.id);
        return GestureDetector(
          onTap: () {
            if (onIdList.contains(language.id)) {
              onIdList.remove(language.id);
            } else {
              onIdList.add(language.id);
            }
            setState(() {});
          },
          child: Container(
            height: 32,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: isSelected
                  ? KayeAdvertise.kayeDutchEnforceDevonManeuver
                  : KayeAdvertise.kayeDutchEnforceIbizaManeuver,
            ),
            child: Text(
              languageList![index].name,
              style: KayeCreepDesperate.TextWhite_14,
              textAlign: TextAlign.center,
            ),
          ),
        );
      }),
    );
  }
}
