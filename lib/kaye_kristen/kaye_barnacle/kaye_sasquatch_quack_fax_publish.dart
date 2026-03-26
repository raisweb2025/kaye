import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeSasquatchQuackFaxPublish {
  offline,

  online,

  on_call,

  no_disturb;

  static KayeSasquatchQuackFaxPublish valueOf(int? statusIndex) {
    try {
      return statusIndex == null
          ? KayeSasquatchQuackFaxPublish.offline
          : KayeSasquatchQuackFaxPublish.values[statusIndex];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10094, e, stack);
    }
    return KayeSasquatchQuackFaxPublish.offline;
  }

  bool isBusy() {
    return [
      KayeSasquatchQuackFaxPublish.on_call,
      KayeSasquatchQuackFaxPublish.no_disturb,
    ].contains(this);
  }
}
