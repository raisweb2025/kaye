import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';

class KayeLeadLutherSlideSuperb {
  static const int GROUP_MAX_CAPACITY = 10;

  static const int GROUP_INTERVAL_IN_MILLISECONDS = 5 * 60 * 1000;

  static List<KayeLeadLutherSlideSuperb>? sortSnaps(
    List<KayeLuther>? snaps, [
    KayeLuther? moreFirstSnap,
    KayeLeadLutherSlideSuperb? lastGroup,
  ]) {
    if (snaps == null || snaps.isEmpty) return null;
    KayeLeadLutherSlideSuperb? group = lastGroup;
    final ret = <KayeLeadLutherSlideSuperb>[];
    for (final s in snaps) {
      if (s.isCallJsonSnap ||
          group == null ||
          group.isBeyondCapacity() ||
          group.isBeyondTimeInterval(s.createTime ?? 0) ||
          (moreFirstSnap != null && s == moreFirstSnap)) {
        group = KayeLeadLutherSlideSuperb(ChatDateItem(s.createTime ?? 0));
        ret.add(group);
      }
      group.snaps.add(s);
    }
    return ret;
  }

  final ChatDateItem dateItem;
  List<KayeLuther> snaps = [];

  KayeLeadLutherSlideSuperb(this.dateItem);

  bool isEmpty() => snaps.isEmpty;

  bool isBeyondCapacity() => snaps.length >= GROUP_MAX_CAPACITY;

  bool isBeyondTimeInterval(int milliseconds) =>
      (dateItem.milliSeconds - milliseconds).abs() >
      GROUP_INTERVAL_IN_MILLISECONDS;
}

class ChatDateItem {
  final int milliSeconds;

  ChatDateItem(this.milliSeconds);

  String get showText => KayeLeadBarnacle.formatMessageTime(milliSeconds);
}

class ChatNewItem {}
