import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeWithoutDesperateWrestling {
  NORMAL,

  SWIPER_BIG;

  static KayeWithoutDesperateWrestling valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeWithoutDesperateWrestling.NORMAL
          : KayeWithoutDesperateWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40011, e, stack);
    }
    return KayeWithoutDesperateWrestling.NORMAL;
  }
}
