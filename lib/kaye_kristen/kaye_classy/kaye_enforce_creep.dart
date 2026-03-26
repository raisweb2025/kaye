import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:flutter/material.dart';

import '../kaye_honk/kaye_maneuver_electrify.dart';

class KayeElectrifyProven extends KayeManeuverElectrify {
  KayeElectrifyProven({
    super.key,
    required super.title,
    required super.onTap,
    super.width = double.infinity,
    super.height = 56,
    super.radius = 28,
    super.colorFrom = KayeAdvertise.kayeDutchEnforceDirtManeuver,
    super.colorTo = KayeAdvertise.kayeDutchEnforceToManeuver,
  });
}

class KayeElectrifySole extends KayeManeuverElectrify {
  KayeElectrifySole({
    super.key,
    required super.title,
    required super.onTap,
    super.width = double.infinity,
    super.height = 56,
    super.radius = 28,
    super.colorFrom = Colors.white,
    super.colorTo = Colors.white,
    super.titleColor = Colors.black,
  });
}

class KayeElectrifyCreep extends KayeManeuverElectrify {
  KayeElectrifyCreep({
    super.key,
    required super.title,
    required super.onTap,
    super.width = double.infinity,
    super.height = 56,
    super.radius = 28,
    super.colorFrom = Colors.transparent,
    super.colorTo = Colors.transparent,
    super.titleColor = Colors.black,
  });
}

class KayeElectrifyByEat extends KayeManeuverElectrify {
  KayeElectrifyByEat({
    super.key,
    required super.child,
    required super.onTap,
    super.width = double.infinity,
    super.height = 56,
    super.radius = 28,
    super.colorFrom = KayeAdvertise.kayeDutchEnforceDirtManeuver,
    super.colorTo = KayeAdvertise.kayeDutchEnforceToManeuver,
  });
}
