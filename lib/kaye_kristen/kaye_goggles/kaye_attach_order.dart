import 'package:kaye/kaye_kristen/kaye_goggles/kaye_optimal.dart';

import '../kaye_cat_lava/kaye_lava_attach.dart';
import '../kaye_mason/kaye_stroke.dart';

enum KayeAttachAthenaeum {
  BLOCK,
  INIT,
  SUCC,
  WAIT,
  LOGOUT;

  static KayeAttachAthenaeum check(String name) {
    return KayeAttachAthenaeum.values.firstWhere(
      (element) => element.name == name,
    );
  }
}

class KayeAttachOrder {
  late KayeAttachAthenaeum result;

  KayeLavaAttach? respLogin;

  KayeAttachOrder(this.result, {this.respLogin});
}
