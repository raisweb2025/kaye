import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_surface_moisture.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../proto/kaye_dutch.pb.dart';
import 'kaye_sasquatch_quack_fax.dart';
import 'kaye_sasquatch_quack_fax_publish.dart';

class KayeSasquatchQuackFaxComebackImplant {
  late int uid;
  late KayeSasquatchQuackFax status;

  KayeSasquatchQuackFaxComebackImplant(this.uid, this.status);
}

class KayeSasquatchQuackFaxFlattering {
  final KayeSurfaceMoisture<int, KayeSasquatchQuackFax> _lruMap =
      KayeSurfaceMoisture(500);

  static final KayeSasquatchQuackFaxFlattering _instance =
      KayeSasquatchQuackFaxFlattering._();

  factory KayeSasquatchQuackFaxFlattering() {
    return _instance;
  }

  KayeSasquatchQuackFaxFlattering._();

  late StreamSubscription<UserStatusPSH> _kayeSasquatchFaxOctober;

  void start() {
    _kayeSasquatchFaxOctober = KAYE.listen<UserStatusPSH>((event) {
      if (event.list.isNotEmpty) {
        for (UserStatus e in event.list) {
          KayeSasquatchQuackFaxPublish status =
              KayeSasquatchQuackFaxPublish.valueOf(e.status);
          KayeSasquatchQuackFax newStatus = save2(
            e.uid.toInt(),
            e.liveId.toInt(),
            status,
          );
          KAYE.fire(
            KayeSasquatchQuackFaxComebackImplant(e.uid.toInt(), newStatus),
          );
        }
      }
    });
  }

  void stop() {
    _kayeSasquatchFaxOctober.cancel();
  }

  KayeSasquatchQuackFaxPublish get(int uid) {
    KayeSasquatchQuackFax? status = _lruMap.get(uid);
    if (status != null) {
      return status.status;
    } else {
      return KayeSasquatchQuackFaxPublish.offline;
    }
  }

  KayeSasquatchQuackFax getStatus(int uid) {
    KayeSasquatchQuackFax? status = _lruMap.get(uid);
    if (status != null) {
      return status;
    } else {
      return KayeSasquatchQuackFax.simple(KayeSasquatchQuackFaxPublish.offline);
    }
  }

  KayeSasquatchQuackFax save(int uid, int status) {
    return save2(uid, null, KayeSasquatchQuackFaxPublish.valueOf(status));
  }

  KayeSasquatchQuackFax save2(
    int uid,
    int? liveId,
    KayeSasquatchQuackFaxPublish status,
  ) {
    KayeSasquatchQuackFax? prev = _lruMap.get(uid);
    if (prev == null) {
      KayeSasquatchQuackFax newStatus = KayeSasquatchQuackFax.simple(status);
      if (liveId != null) {
        newStatus.liveId = liveId;
      }
      saveStatus(uid, newStatus);
      return newStatus;
    } else {
      prev.status = status;
      if (liveId != null) {
        prev.liveId = liveId;
      }
      saveStatus(uid, prev);
      return prev;
    }
  }

  void saveStatus(int uid, KayeSasquatchQuackFax status) {
    _lruMap.put(uid, status);
  }
}
