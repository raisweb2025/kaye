import 'package:kaye/kaye_kristen/kaye_fortress.dart';

import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_learning/kaye_pudding_lag_vail_upon.dart';
import '../kaye_learning_ui/kaye_pudding_lag_vail_planner.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sprint_flattering.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import '../kaye_honk/kaye_bury_dna_hazard_vail.dart';

class KayeUiVail {
  static kayePuddingLagVail({required int fromType, int? fromUid}) {
    if (!KAYE.kayeClosing.isKayeZucchiniDedicate() &&
        KAYE.kayeSasquatchTrish!.hadPaid == 0) {
      List<KayeBuryPatsy>? firstListOptions =
          KayeSprintFlattering.instance.firstListOptions;
      if (!KayeWrestlingBarnacle.isEmpty(firstListOptions)) {
        KayeBuryPatsy option = firstListOptions!.first;
        KayeBuryDnaHazardVail.show(option, fromType, fromUid: fromUid);
        return;
      }
    }
    KAYE.toNamed(
      KayeFortress.KayePuddingLagVailPlanner,
      arguments: KayePuddingLagVailUpon(fromType: fromType),
    );
  }
}
