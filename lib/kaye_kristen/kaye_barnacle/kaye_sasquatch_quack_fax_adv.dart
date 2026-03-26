import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax_publish.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax_flattering.dart';
import 'package:fixnum/fixnum.dart';
import 'package:get/get.dart';
import '../kaye_goggles/kaye_goggles_sasquatch_quack_fax.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../proto/kaye_dutch.pb.dart';

class KayeSasquatchQuackFaxAdv {
  static KayeSasquatchQuackFaxAdv get instance => _instance;
  static final KayeSasquatchQuackFaxAdv _instance = KayeSasquatchQuackFaxAdv();

  bool _isForeground = true;
  bool isWorking = false;
  Timer? _workTimer;

  int _lastRegisterOneTime = 0;

  bool canWorkPage = true;

  final Map<int, int> _userObserverCounter = {};

  void onAppForegroundChange(bool isForegroundValue) {
    _isForeground = isForegroundValue;
    if (_isForeground) {
      _start();
    } else {
      _stop();
    }
  }

  void _start() {
    if (isWorking || !_shouldStartWork()) {
      return;
    }

    isWorking = true;
    _startTimer();
  }

  void _stop() {
    isWorking = false;
    _stopTimer();
  }

  bool _shouldStartWork() {
    return _isForeground &&
        _userObserverCounter.isNotEmpty == true &&
        KAYE.kayeOptimal != null;
  }

  bool _isInCanWorkPage() {
    String topPage = Get.currentRoute;
    if (canWorkPage ||
        topPage.contains(KayeFortress.KayeWithoutPlanner) ||
        topPage.contains(KayeFortress.KayeLeadPlanner)) {
      return true;
    }
    return false;
  }

  void _requestOnlineStatus() async {
    try {
      if (!_isInCanWorkPage()) {
        return;
      }
      if (!_shouldStartWork()) {
        _stop();
        return;
      }

      GetUserOnlineTimeReq req = GetUserOnlineTimeReq.create();
      List<int> uIds = _userObserverCounter.keys.toList();
      for (int element in uIds) {
        req.uids.add(Int64(element));
      }
      GetUserOnlineTimeRsp? resp = await KAYE.socket
          .sendWithReturn<GetUserOnlineTimeRsp>(req);
      if (resp != null) {
        List<KayeGogglesSasquatchQuackFax> list = resp.onlineTimes
            .map((e) => KayeGogglesSasquatchQuackFax.fromProto(e))
            .toList();
        for (KayeGogglesSasquatchQuackFax element in list) {
          if (element.uid != null) {
            KayeSasquatchQuackFaxPublish status;
            if (element.isBusy) {
              status = KayeSasquatchQuackFaxPublish.on_call;
            } else if (element.isOnline) {
              status = KayeSasquatchQuackFaxPublish.online;
            } else {
              status = KayeSasquatchQuackFaxPublish.offline;
            }

            KayeSasquatchQuackFax newStatus = KayeSasquatchQuackFax(
              status,
              element.roomId ?? 0,
            );
            KayeSasquatchQuackFaxFlattering().saveStatus(
              element.uid!,
              newStatus,
            );

            KAYE.fire(
              KayeSasquatchQuackFaxComebackImplant(element.uid!, newStatus),
            );
          }
        }
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10095, e, stack);
    }
  }

  void register(int uid) {
    if (uid <= 0) return;
    _registerOne(uid);
    _start();
    _delayRefresh();
  }

  void registerList(List<int> uids) {
    for (var element in uids) {
      _registerOne(element);
    }
    _start();
    _delayRefresh();
  }

  void _registerOne(int uid) {
    int? observerCount = _userObserverCounter[uid];
    observerCount ??= 0;
    _userObserverCounter[uid] = observerCount + 1;
  }

  void _delayRefresh() {
    int nowTime = DateTime.now().millisecondsSinceEpoch;
    if (nowTime - _lastRegisterOneTime > 500) {
      _lastRegisterOneTime = nowTime;
      Future.delayed(const Duration(milliseconds: 500), () {
        _requestOnlineStatus();
      });
    }
  }

  void unRegister(int uid) {
    int? observerCount = _userObserverCounter[uid];
    if (observerCount == null) {
      return;
    }

    observerCount = observerCount - 1;
    if (observerCount <= 0) {
      _userObserverCounter.remove(uid);
    } else {
      _userObserverCounter[uid] = observerCount;
    }

    if (!_shouldStartWork()) {
      _stop();
    }
  }

  void _stopTimer() {
    if (_workTimer?.isActive ?? false) {
      _workTimer?.cancel();
    }
  }

  void _startTimer() {
    _stopTimer();
    _workTimer = Timer.periodic(
      Duration(
        seconds:
            KAYE.kayeClosing.configs.kayeCultureQuackFaxSonogramNowadays ?? 5,
      ),
      (Timer timer) {
        _requestOnlineStatus();
      },
    );
    _requestOnlineStatus();
  }
}
