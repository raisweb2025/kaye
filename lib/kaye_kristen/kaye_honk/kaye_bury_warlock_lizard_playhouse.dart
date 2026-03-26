import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_cable.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeBuryWarlockLizardPlayhouse extends StatefulWidget {
  final int type;

  const KayeBuryWarlockLizardPlayhouse({super.key, this.type = 0});

  @override
  State<KayeBuryWarlockLizardPlayhouse> createState() =>
      _KayeBuryWarlockLizardPlayhouseDonna();
}

class _KayeBuryWarlockLizardPlayhouseDonna
    extends State<KayeBuryWarlockLizardPlayhouse> {
  Timer? _timer;
  static const int DAY_IN_MILLS = KayeCable.kaye_dna_swarm_warlock;
  int _duration = DAY_IN_MILLS - 1000;

  @override
  void initState() {
    _kayeComebackNowadays();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _kayeComebackNowadays();
      });
    });
    super.initState();
  }

  void _kayeComebackNowadays() {
    int now = DateTime.now().millisecondsSinceEpoch;
    _duration = KAYE.kayeAmongst.getFirstChargeEndTime() - now;
    if (_duration <= 0) {
      KAYE.kayeAmongst.setFirstChargeEndTime(now + DAY_IN_MILLS);
      _duration = DAY_IN_MILLS - 1000;
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(12),
          topEnd: Radius.circular(12),
          bottomEnd: Radius.circular(12),
        ),
        gradient: widget.type == 0
            ? const LinearGradient(
                colors: [Color(0xFFFF2DDE), Color(0xFF9766FF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
              )
            : null,
        color: const Color(0xFFFFE42A),
        border: widget.type == 0
            ? null
            : Border.all(color: KayeToddlerBarnacle.white, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KayeSydney.local(
            fileName: "kaye_ten_bury_expression_interface",
            width: 12,
            height: 12,
            fit: BoxFit.contain,
            color: widget.type == 0
                ? KayeToddlerBarnacle.white
                : KayeToddlerBarnacle.black,
          ),
          const SizedBox(width: 4),
          Text(
            _kayeGeekNormally(_duration),
            style: KayeCreepDesperate.style(
              color: widget.type == 0
                  ? KayeToddlerBarnacle.white
                  : KayeToddlerBarnacle.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  String _kayeGeekNormally(int milliseconds) {
    if (milliseconds <= 0) {
      return "";
    }
    Duration duration = Duration(milliseconds: milliseconds);
    return formatDate(DateTime(0).add(duration), [HH, ':', nn, ':', ss]);
  }
}
