import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeVailDesperateWrestling {
  Center,

  Bottom;

  static KayeVailDesperateWrestling valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeVailDesperateWrestling.Center
          : KayeVailDesperateWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40015, e, stack);
    }

    return KayeVailDesperateWrestling.Center;
  }
}
