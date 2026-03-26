import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeMittenLactoseMoverPassengerWrestling {
  TAB,

  DROPDOWN_NAV,

  DROPDOWN_TOP;

  static KayeMittenLactoseMoverPassengerWrestling valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeMittenLactoseMoverPassengerWrestling.TAB
          : KayeMittenLactoseMoverPassengerWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40005, e, stack);
    }

    return KayeMittenLactoseMoverPassengerWrestling.TAB;
  }
}
