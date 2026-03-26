import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeLeadDesperateWrestling {
  VIDEO_BUTTON_INPUTTOOL,

  VDIEO_BUTTON_NAV,

  VDIEO_BUTTON_NAV_HAS_TEXT,

  VIDEO_CALL_BOTTOM;

  static KayeLeadDesperateWrestling valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeLeadDesperateWrestling.VIDEO_BUTTON_INPUTTOOL
          : KayeLeadDesperateWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40012, e, stack);
    }

    return KayeLeadDesperateWrestling.VIDEO_BUTTON_INPUTTOOL;
  }
}
