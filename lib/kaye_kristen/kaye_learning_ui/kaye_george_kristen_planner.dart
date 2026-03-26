import 'dart:math';
import 'kaye_h3_welder.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_george_kristen_playhouse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../kaye_learning/kaye_george_kristen_glorify.dart';

class KayeGeorgeKristenPlanner extends StatelessWidget {
  final GlobalKey webViewKey = GlobalKey();

  final logic = Get.find<KayeGeorgeKristenGlorify>();

  KayeGeorgeKristenPlanner({super.key});

  @override
  Widget build(BuildContext context) {
    return KayeGeorgeKristenPlayhouse(app: logic.app);
  }
}
