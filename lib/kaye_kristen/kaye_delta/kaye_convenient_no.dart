class KayeConvenientNo {
  static const int _MAX = 0x7fffffff;
  static const int _MIN = 1;

  static int _SEQ = 1;

  static int next() {
    if (_SEQ < _MAX) {
      _SEQ++;
    } else {
      _SEQ = _MIN;
    }
    return _SEQ;
  }

  static void reset() {
    _SEQ = _MIN;
  }
}
