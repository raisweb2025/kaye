import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_barnacle/kaye_io_barnacle.dart';

part 'kaye_quiche_internship.g.dart';

@jsonWidget
abstract class _KayeQuicheInternshipFootstep extends JsonWidgetBuilder {
  const _KayeQuicheInternshipFootstep({required super.args});

  @override
  KayeQuicheInternship buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}

class KayeQuicheInternship extends StatelessWidget {
  const KayeQuicheInternship({
    super.key,
    required this.leading,
    this.middle,
    this.action,
    this.color,
  });

  final Widget? leading;
  final Widget? middle;
  final Widget? action;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
      margin: const EdgeInsets.symmetric(
        horizontal: KayeAdvertise.kayePlannerTopicalInternshipFlammable,
      ),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
            height: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
            alignment: Alignment.center,
            child: InkWell(
              onTap: () => Get.back(),
              child: Transform.rotate(
                angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
                child: leading,
              ),
            ),
          ),
          Container(
            height: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
            margin: const EdgeInsets.symmetric(
              horizontal: KayeAdvertise.kayePlannerTopicalInternshipFlammable,
            ),
            alignment: Alignment.center,
            child: middle,
          ),
          Container(
            width: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
            height: KayeAdvertise.kayePlannerTopicalInternshipTrophy,
            alignment: Alignment.center,
            child: action,
          ),
        ],
      ),
    );
  }
}
