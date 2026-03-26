import '../proto/kaye_infrared.pb.dart';

class KayeInfraredTransmitUpon {
  late AnchorInfo userInfo;
  late LiveStatus leaveStatus;

  KayeInfraredTransmitUpon(this.userInfo, this.leaveStatus);
}
