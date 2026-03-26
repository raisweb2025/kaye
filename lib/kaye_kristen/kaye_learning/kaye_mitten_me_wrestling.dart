import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeMittenMeSasquatchSelfishWrestling {
  HORIZONTAL,

  VERTICAL,

  VERTICAL_EDINT_IN_NAV;

  static KayeMittenMeSasquatchSelfishWrestling valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeMittenMeSasquatchSelfishWrestling.HORIZONTAL
          : KayeMittenMeSasquatchSelfishWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40013, e, stack);
    }

    return KayeMittenMeSasquatchSelfishWrestling.HORIZONTAL;
  }
}
