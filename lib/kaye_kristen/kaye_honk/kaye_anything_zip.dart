import 'package:flutter/widgets.dart';

enum KayeAnythingWrestling { ALL, X, Y }

class KayeAnythingZip extends AnimatedWidget {
  const KayeAnythingZip({
    Key? key,
    required Animation<double> scale,
    this.alignment = Alignment.center,
    this.filterQuality,
    this.child,
    this.scaleType = KayeAnythingWrestling.ALL,
  }) : assert(scale != null),
       super(key: key, listenable: scale);

  Animation<double> get scale => listenable as Animation<double>;

  final Alignment alignment;

  final FilterQuality? filterQuality;

  final Widget? child;

  final KayeAnythingWrestling scaleType;

  @override
  Widget build(BuildContext context) {
    Transform result;
    switch (scaleType) {
      case KayeAnythingWrestling.ALL:
        result = Transform.scale(
          scale: scale.value,
          alignment: alignment,
          filterQuality: filterQuality,
          child: child,
        );
        break;
      case KayeAnythingWrestling.X:
        result = Transform.scale(
          scaleX: scale.value,
          alignment: alignment,
          filterQuality: filterQuality,
          child: child,
        );
        break;
      case KayeAnythingWrestling.Y:
        result = Transform.scale(
          scaleY: scale.value,
          alignment: alignment,
          filterQuality: filterQuality,
          child: child,
        );
        break;
    }
    return result;
  }
}
