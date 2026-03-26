import 'dart:async';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_cable.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_dna_swarm_fishnet.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_bury_patsy.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_sprint_manhattan_upon.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_bury_dna_hazard_drove_playhouse.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_political_playhouse.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pag/pag.dart';

import '../kaye_advertise.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_mason/kaye_political_lead_flattering.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_barnacle/kaye_sprint_manhattan_flattering.dart';
import '../kaye_barnacle/kaye_sprint_flattering.dart';
import 'kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

class KayeCuterDnaSwarmFishnetSatelliteImplant {
  KayeCuterDnaSwarmFishnetSatelliteImplant();
}

class KayeDotDnaSwarmFishnet extends StatefulWidget {
  KayeDotDnaSwarmFishnet({
    super.key,
    required this.activity,
    this.autoPop = false,
  });

  bool autoPop = false;
  static bool autoPoppedUp = false;
  final KayeGogglesDnaSwarmFishnet activity;

  @override
  State<KayeDotDnaSwarmFishnet> createState() => _KayeDotDnaSwarmFishnetDonna();
}

class _KayeDotDnaSwarmFishnetDonna extends State<KayeDotDnaSwarmFishnet> {
  KayeBuryPatsy? option;

  bool isAR = false;

  StreamSubscription<KayeCuterDnaSwarmFishnetSatelliteImplant>?
  _showPopSubscription;

  @override
  void initState() {
    super.initState();
    KayeKristenGlitterFlattering.kayeLooselySprint(
      PayFromType.FROM_FIRST_CHARGE_FLOAT,
    );
    KayeKristenGlitterFlattering.kayeCuterSuppress(1, 1, "FIRST");

    _showPopSubscription = KAYE
        .listen<KayeCuterDnaSwarmFishnetSatelliteImplant>((event) {
          kayeCuterDnaSwarmVail(widget.activity);
        });
  }

  @override
  void dispose() {
    _showPopSubscription?.cancel();
    KayeSprintManhattanFlattering.instance.kayeSum();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    isAR = KayeIOBarnacle.isARLanguage();
    option = widget.activity.getOption();

    if (widget.autoPop &&
        !KayeDotDnaSwarmFishnet.autoPoppedUp &&
        KAYE.kayeAmongst.getEnterAppTimes() > 1) {
      Future.delayed(
        Duration.zero,
        () => kayeCuterDnaSwarmVail(widget.activity),
      );
      KayeDotDnaSwarmFishnet.autoPoppedUp = true;
    }
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        kayeCuterDnaSwarmVail(widget.activity);
      },
      child: SizedBox(
        width: 100,
        height: 120,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            PAGView.asset(
              KayeCable.kaye_uptown_kaye_ten_dna_hazard_fishnet_geographic,
              width: 100,
              height: 100,
              autoPlay: true,
              repeatCount: PAGView.REPEAT_COUNT_LOOP,
            ),
            Positioned(
              top: 70,
              child: Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: KayeAdvertise.kayeDutchEnforceTattletale,
                ),
                child: Center(child: TimeCounter()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void kayeCuterDnaSwarmVail(KayeGogglesDnaSwarmFishnet data) {
    KayePoliticalLeadFlattering.instance.isFirstRechargeActivityShowing = true;
    double width = Get.width - 22 * 2;
    double height = width * 596 / 334;
    showModalBottomSheet(
      context: context,
      backgroundColor: KayeToddlerBarnacle.transparent,
      isScrollControlled: true,
      anchorPoint: const Offset(50, 200),
      routeSettings: const RouteSettings(name: "FirstChargeDialog"),
      builder: (context) {
        Widget childWidget = Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Stack(
            children: [
              KayeWrestlingBarnacle.isEmptyString(data.video?.videoUrl)
                  ? const SizedBox()
                  : SizedBox(
                      width: width,
                      height: height * 0.8,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16),
                        ),
                        child: KayeDotPoliticalPlayhouse(
                          netPath: data.video!.videoUrl!,
                          fromType: 1,
                        ),
                      ),
                    ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: height * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color((0xFFB800FF)),
                        KayeToddlerBarnacle.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              _kayeFishnetWaiterSydney(data),
              _kayePatsySelfishDuplicate(width, context),
              _kayeLaurenElectrify(context),
            ],
          ),
        );
        return Padding(
          padding: EdgeInsets.only(
            bottom:
                MediaQuery.of(context).viewInsets.bottom +
                (MediaQuery.of(context).size.height - 596) / 2,
            left: 22,
            right: 22,
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: childWidget,
          ),
        );
      },
    ).then((value) {
      KayePoliticalLeadFlattering.instance.isFirstRechargeActivityShowing =
          false;
    });
    ;
  }

  Align _kayeLaurenElectrify(BuildContext context) {
    return Align(
      alignment: isAR ? Alignment.topLeft : Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: KayeSydney.local(
            fileName: "kaye_ten_matter_haley_monopoly",
            width: 36,
            height: 36,
          ),
        ),
      ),
    );
  }

  Positioned _kayeFishnetWaiterSydney(KayeGogglesDnaSwarmFishnet data) {
    return Positioned(
      bottom: 170,
      left: 0,
      right: 0,
      child: KayeSydney.large(
        url: data.photo?.imgUrl ?? "",
        width: Get.width - 22,
        height: 182,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _kayePatsySelfishDuplicate(double width, BuildContext context) {
    return GestureDetector(
      onTap: () {
        KayeSprintManhattanFlattering.instance.kayeGoToSprintManhattan(
          option: option!,
          fromType: PayFromType.FROM_FIRST_CHARGE_FLOAT,
        );
      },
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: width,
          child: KayeBuryDnaHazardDrovePlayhouse(
            data: option!,
            isFromFirstRecharge: true,
          ),
        ),
      ),
    );
  }
}

class TimeCounter extends StatefulWidget {
  Color? color;
  String? prefix;

  TimeCounter({super.key, this.color, this.prefix = ""});

  @override
  _TimeCounterState createState() => _TimeCounterState();
}

class _TimeCounterState extends State<TimeCounter> {
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
    return Text(
      "${widget.prefix}${_kayeGeekNormally(_duration)}",
      style: KayeCreepDesperate.style(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: widget.color ?? KayeToddlerBarnacle.white,
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
