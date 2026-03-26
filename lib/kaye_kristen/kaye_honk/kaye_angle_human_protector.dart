import 'dart:async';

typedef VoidCallbackVoid = void Function();
typedef VoidCallbackWithDelay = void Function(Duration delay);

class KayeAngleHumanProtector {
  VoidCallbackVoid? _playFn;
  VoidCallbackVoid? _stopAndCenterFn;
  VoidCallbackWithDelay? _stopAfterHandler;
  Timer? _timer;

  void setHandlers({
    required VoidCallbackVoid play,
    required VoidCallbackVoid stopAndCenter,
  }) {
    _playFn = play;
    _stopAndCenterFn = stopAndCenter;
  }

  void play() {
    _playFn?.call();
  }

  void stopAndCenter() {
    _stopAndCenterFn?.call();
  }

  void stopAfter(Duration delay) {
    _timer?.cancel();
    print(
      '[KayeAngleHumanProtector] stopAfter called delay=${delay.inMilliseconds}ms, hasHandler=${_stopAfterHandler != null}',
    );
    if (_stopAfterHandler != null) {
      _stopAfterHandler!(delay);
      return;
    }
    if (delay <= Duration.zero) {
      stopAndCenter();
      return;
    }
    _timer = Timer(delay, () {
      print(
        '[KayeAngleHumanProtector] stopAfter timer fired, invoking stopAndCenter',
      );
      _stopAndCenterFn?.call();
    });
  }

  void setStopAfterHandler(VoidCallbackWithDelay handler) {
    _stopAfterHandler = handler;
  }

  void clearHandlers() {
    _playFn = null;
    _stopAndCenterFn = null;
    _timer?.cancel();
    _timer = null;
  }
}
