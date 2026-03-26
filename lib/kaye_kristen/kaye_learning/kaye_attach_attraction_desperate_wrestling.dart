import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeAttachSasquatchInventionDesperateWrestling {
  Center,

  Bottom;

  static KayeAttachSasquatchInventionDesperateWrestling valueOf(
    int? statusIndex,
  ) {
    try {
      return statusIndex == null
          ? KayeAttachSasquatchInventionDesperateWrestling.Center
          : KayeAttachSasquatchInventionDesperateWrestling.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(40004, e, stack);
    }

    return KayeAttachSasquatchInventionDesperateWrestling.Center;
  }
}
