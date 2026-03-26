import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import 'kaye_sasquatch_quack_fax_publish.dart';

class KayeSasquatchQuackFax {
  late KayeSasquatchQuackFaxPublish status;

  /**
   * 如果在直播，则有直播间id, 否则为0
   */
  int liveId = 0;

  KayeSasquatchQuackFax(this.status, this.liveId);

  static KayeSasquatchQuackFax simple(KayeSasquatchQuackFaxPublish status) {
    return KayeSasquatchQuackFax(status, 0);
  }

  /**
   * 是否是直播状态
   */
  bool isOnLiveStatus() {
    return KAYE.kayeClosing.isKayeInfraredTank() &&
        liveId > 0 &&
        status == KayeSasquatchQuackFaxPublish.online;
  }
}
