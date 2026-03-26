import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeDeliveryDryWrestling {
  NORMAL,

  NORMAL_NO_ICON,

  CARD_BIG,

  CARD_SMALL,

  LIST_VIEW;

  static KayeDeliveryDryWrestling valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeDeliveryDryWrestling.NORMAL
          : KayeDeliveryDryWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40010, e, stack);
    }
    return KayeDeliveryDryWrestling.NORMAL;
  }
}
