import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeDotExpressionLizard extends StatefulWidget {
  Color? color;
  String? prefix;

  KayeDotExpressionLizard({super.key, this.color, this.prefix = ""});

  @override
  _KayeDotExpressionLizardDonna createState() =>
      _KayeDotExpressionLizardDonna();
}

class _KayeDotExpressionLizardDonna extends State<KayeDotExpressionLizard> {
  Timer? _timer;
  static const int DAY_IN_MILLS = 24 * 60 * 60 * 1000;
  int _duration = DAY_IN_MILLS - 1000;
  late int endTime;

  @override
  void initState() {
    super.initState();
    endTime = KAYE.kayeAmongst.getFirstChargeEndTime();
    if (endTime == 0) {
      int now = DateTime.now().millisecondsSinceEpoch;
      endTime = now + DAY_IN_MILLS;
      KAYE.kayeAmongst.setFirstChargeEndTime(endTime);
    }

    _kayeComebackNowadays();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _kayeComebackNowadays();
      });
    });
  }

  void _kayeComebackNowadays() {
    int now = DateTime.now().millisecondsSinceEpoch;
    _duration = endTime - now;
    if (_duration <= 0) {
      endTime = now + DAY_IN_MILLS;
      KAYE.kayeAmongst.setFirstChargeEndTime(endTime);
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
    return Text(
      "${widget.prefix}${_kayeGeekNormally(_duration)}",
      style: KayeCreepDesperate.style(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: KayeToddlerBarnacle.white,
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
