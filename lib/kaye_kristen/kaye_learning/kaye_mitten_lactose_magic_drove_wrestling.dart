import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeMittenLactoseMagicDroveWrestling {
  AVATAR_COVER,

  AVATAR_HALF;

  static KayeMittenLactoseMagicDroveWrestling valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeMittenLactoseMagicDroveWrestling.AVATAR_COVER
          : KayeMittenLactoseMagicDroveWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40014, e, stack);
    }

    return KayeMittenLactoseMagicDroveWrestling.AVATAR_COVER;
  }
}
