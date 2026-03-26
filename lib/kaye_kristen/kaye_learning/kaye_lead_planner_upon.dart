import 'package:kaye/kaye_kristen/kaye_goggles/kaye_heh.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';

import '../kaye_goggles/kaye_sasquatch.dart';

class KayeLeadPlannerUpon {
  KayeLeadBanality? chatBox;

  late int uid;
  late String nickName;
  late String avatarUrl;

  KayeLeadPlannerUpon.byChatBox(KayeLeadBanality box) {
    chatBox = box;

    uid = box.chatUser!.uid;
    nickName = box.chatUser!.nickName;
    avatarUrl = box.chatUser!.avatarUrl;
  }

  KayeLeadPlannerUpon.byChatUser(KayeSasquatch user) {
    uid = user.uid;
    nickName = user.nickName;
    avatarUrl = user.avatarUrl;
  }

  KayeLeadPlannerUpon.byUid(this.uid, this.nickName, this.avatarUrl);
}
