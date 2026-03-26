import 'dart:math';
import 'kaye_gym_es.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class KayeFrankPlanner<T> extends StatelessWidget {
  const KayeFrankPlanner({super.key});

  final String? tag = null;

  T get logic => GetInstance().find<T>(tag: tag)!;

  @override
  Widget build(BuildContext context);
}
