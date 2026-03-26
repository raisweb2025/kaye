import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_sasquatch_trish.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_tony.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_goggles/kaye_sasquatch_trish_comeback_order.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_stroke.dart';
import 'kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeDotDunphyDisgusting extends StatefulWidget {
  const KayeDotDunphyDisgusting({super.key});

  @override
  KayeDotDunphyDisgustingDonna createState() => KayeDotDunphyDisgustingDonna();
}

class KayeDotDunphyDisgustingDonna extends State<KayeDotDunphyDisgusting> {
  late KayeSasquatchTrish userRuntime;
  StreamSubscription? updateUserRuntimeSubscription;

  @override
  void initState() {
    super.initState();
    userRuntime = KAYE.kayeSasquatchTrish!;
    updateUserRuntimeSubscription = KAYE
        .listen<KayeSasquatchTrishComebackOrder>((event) {
          setState(() {
            userRuntime = KAYE.kayeSasquatchTrish!;
          });
        });
  }

  @override
  void dispose() {
    updateUserRuntimeSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        KAYE.kayeClosing.isRegionMatchFirst20sChargeMode() &&
                KAYE.kayeSasquatchTrish!.kayeKokoWhoaSuffice()
            ? KayeSydney.local(
                fileName: 'kaye_ten_suffice_found_interface',
                width: 52,
                height: 28,
                fit: BoxFit.contain,
              )
            : const SizedBox(),
        const SizedBox(width: 8),
        Container(
          height: 28,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            borderRadius: 18.rectBg,
            gradient: KayeAdvertise.kayeFloatEnforceTattletale,
          ),
          alignment: Alignment.center,
          child: Container(
            height: 26,
            padding: const EdgeInsetsDirectional.fromSTEB(11, 5, 7, 5),
            decoration: BoxDecoration(borderRadius: 18.rectBg),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  userRuntime == null
                      ? ''
                      : userRuntime.kayeDunphyMakeupSuffice(),
                  style: KayeCreepDesperate.style(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFFFFFFF),
                    height: 1.2,
                  ),
                ),
                4.wGap,
                KayeSydney.local(
                  fileName: 'kaye_ten_float_masculine_interface',
                  width: 16,
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ],
    ).click(() {
      KAYE.goto(KayeFortress.KayeLagPassengerPlanner);
    });
  }
}
