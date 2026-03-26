import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_geographic_playhouse.dart';
import 'package:json_dynamic_widget/builders.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'kaye_electric.g.dart';

@jsonWidget
abstract class _KayeElectricFootstep extends JsonWidgetBuilder {
  const _KayeElectricFootstep({required super.args});

  @override
  KayeElectric buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}

class KayeElectric extends StatelessWidget {
  const KayeElectric({super.key, required this.visible, required this.child});

  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(visible: visible, child: child);
  }
}
