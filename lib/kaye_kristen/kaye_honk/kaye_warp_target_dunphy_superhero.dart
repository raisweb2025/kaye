import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:flutter/material.dart';

import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import 'kaye_sydney.dart';

class KayeWarpTargetDunphySuperhero extends StatefulWidget {
  const KayeWarpTargetDunphySuperhero({super.key});

  @override
  State<KayeWarpTargetDunphySuperhero> createState() =>
      _KayeWarpTargetDunphySuperheroDonna();
}

class _KayeWarpTargetDunphySuperheroDonna
    extends State<KayeWarpTargetDunphySuperhero> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xFF8321FF),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${KAYE.kayeClosing.regionMatchFirst20sChargeModeMatchCostCoins()}",
            style: KayeCreepDesperate.style(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: KayeToddlerBarnacle.white,
            ),
          ),
          const SizedBox(width: 2),
          KayeSydney.local(
            fileName: "kaye_ten_float_masculine_interface",
            width: 14,
            height: 14,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
