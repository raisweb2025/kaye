import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_geographic_playhouse.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:pag/pag.dart';

import '../kaye_barnacle/kaye_sydney_separate.dart';

part 'kaye_autograph_sydney.g.dart';

@jsonWidget
abstract class _KayeAutographSydneyFootstep extends JsonWidgetBuilder {
  const _KayeAutographSydneyFootstep({required super.args});

  @override
  KayeAutographSydney buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}

class KayeAutographSydney extends StatelessWidget {
  const KayeAutographSydney({
    super.key,
    required this.url,
    this.color,
    this.height,
    this.width,
    this.fit,
    this.borderRadius,
    this.shape,
    this.type,
  });

  final Color? color;
  final double? height;
  final String url;
  final double? width;
  final BoxFit? fit;
  final BorderRadiusGeometry? borderRadius;
  final BoxShape? shape;
  final ImageClipType? type;

  @override
  Widget build(BuildContext context) {
    if (url.endsWith(".pag")) {
      return KayeGeographicPlayhouse(
        url,
        width: width,
        height: height,
        autoPlay: true,
        repeatCount: PAGView.REPEAT_COUNT_LOOP,
      );
    } else {
      if (url.startsWith("http")) {
        return KayeSydney.network(
          url: url,
          width: width,
          height: height,
          fit: fit,
        );
      }

      if (url.startsWith("/")) {
        return KayeSydney.file(
          fileName: url,
          width: width,
          height: height,
          fit: fit,
        );
      }

      return KayeSydney.local(
        fileName: url,
        width: width,
        height: height,
        fit: fit,
      );
    }
  }
}
