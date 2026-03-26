import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:get/get.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

import '../kaye_barnacle/kaye_io_barnacle.dart';

part 'kaye_all_free.g.dart';

@jsonWidget
abstract class _KayeAllFreeFootstep extends JsonWidgetBuilder {
  const _KayeAllFreeFootstep({required super.args});

  @override
  KayeAllFree buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}

class KayeAllFree extends StatelessWidget {
  const KayeAllFree({super.key, required this.title, this.action});

  final Widget? title;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: KayeAdvertise.kayeAllFreeTrophy,
      decoration: const BoxDecoration(
        border: KayeAdvertise.kayeAllFreeWarehouse,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: KayeAdvertise.kayeAllFreeHandball,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title ?? const SizedBox(),
          action ??
              Transform.rotate(
                angle: KayeIOBarnacle.isARLanguage() ? pi : 0,
                child: KayeSydney.local(
                  fileName: 'kaye_ten_all_meanwhile',
                  width: 12,
                  height: 12,
                ),
              ),
        ],
      ),
    );
  }
}
