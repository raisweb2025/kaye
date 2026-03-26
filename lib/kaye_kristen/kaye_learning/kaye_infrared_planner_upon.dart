import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/proto/kaye_infrared.pb.dart';

class KayeInfraredPlannerUpon {
  late int ucode;
  late int uid;
  late int liveId;
  late EnterLiveRsp enterLiveData;

  KayeInfraredPlannerUpon(
    this.uid,
    this.ucode,
    this.liveId,
    this.enterLiveData,
  );
}
