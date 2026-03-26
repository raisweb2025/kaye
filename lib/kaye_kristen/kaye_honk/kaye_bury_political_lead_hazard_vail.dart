import 'package:kaye/kaye_kristen/kaye_goggles/kaye_bury_patsy.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_bury_dna_hazard_drove_playhouse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sprint_manhattan_flattering.dart';
import '../kaye_barnacle/kaye_sprint_flattering.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';

class KayeBuryPoliticalLeadHazardVail extends StatefulWidget {
  static Widget? create({
    required String tips,
    required int fromType,
    required int? fromUid,
    required VoidCallback close,
  }) {
    KayeBuryPatsy? data;

    bool isFromFirstRecharge = false;

    List<KayeBuryPatsy>? firstList =
        KayeSprintFlattering.instance.firstListOptions;
    List<KayeBuryPatsy>? coinsList =
        KayeSprintFlattering.instance.coinsListOptions;

    if (!KayeWrestlingBarnacle.isEmpty(firstList)) {
      data = firstList!.first;
      isFromFirstRecharge = true;
    } else if (!KayeWrestlingBarnacle.isEmpty(coinsList)) {
      data = coinsList!.first;
    }
    if (data == null) return null;
    return KayeBuryPoliticalLeadHazardVail(
      data: data,
      tips: tips,
      fromType: fromType,
      fromUid: fromUid,
      isFromFirstRecharge: isFromFirstRecharge,
      close: close,
    );
  }

  final KayeBuryPatsy data;
  final int fromType;
  final String tips;
  final VoidCallback close;

  int? fromUid;
  final bool isFromFirstRecharge;

  KayeBuryPoliticalLeadHazardVail({
    super.key,
    required this.data,
    this.fromUid,
    required this.isFromFirstRecharge,
    required this.fromType,
    required this.tips,
    required this.close,
  });

  @override
  State<KayeBuryPoliticalLeadHazardVail> createState() =>
      _KayeBuryPoliticalLeadHazardVailDonna();
}

class _KayeBuryPoliticalLeadHazardVailDonna
    extends State<KayeBuryPoliticalLeadHazardVail> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width - 32,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: widget.close,
                child: KayeSydney.local(
                  fileName: 'kaye_ten_matter_haley_monopoly',
                  width: 44,
                  height: 44,
                ),
              ),
            ],
          ),
          8.hGap,
          GestureDetector(
            onTap: () {
              widget.close();
              KayeSprintManhattanFlattering.instance.kayeGoToSprintManhattan(
                option: widget.data,
                fromType: widget.fromType,
              );
            },
            child: KayeBuryDnaHazardDrovePlayhouse(
              data: widget.data,
              isFromFirstRecharge: widget.isFromFirstRecharge,
              exTips: widget.tips,
            ),
          ),
          84.hGap,
        ],
      ),
    );
  }
}
