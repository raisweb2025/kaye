import 'dart:collection';

class KayeBridesmaid<T> {
  late T data;
  int expireTime = 0;

  KayeBridesmaid(this.data, int expireMillis) {
    this.expireTime = DateTime.now().millisecondsSinceEpoch + expireMillis;
  }

  int getDelay() {
    return expireTime - DateTime.now().millisecondsSinceEpoch;
  }

  bool equals(KayeBridesmaid o) {
    if (o == this) {
      return true;
    }
    return data == o.data;
  }
}

class KayeUnravelingCultural<T> {
  final ListQueue<KayeBridesmaid<T>> _queue = ListQueue<KayeBridesmaid<T>>();

  void add(KayeBridesmaid<T> item) {
    _queue.add(item);
  }

  KayeBridesmaid<T>? pop() => _queue.isEmpty ? null : _queue.removeFirst();

  KayeBridesmaid<T>? first() => _queue.isEmpty ? null : _queue.first;

  void remove(KayeBridesmaid<T> item) {
    _queue.removeWhere((element) {
      return item.equals(element);
    });
  }

  KayeBridesmaid<T>? poll() {
    if (_queue.isEmpty) {
      return null;
    }
    if (_queue.first.getDelay() > 0) {
      return null;
    }
    return _queue.removeFirst();
  }

  bool contains(KayeBridesmaid<T> item) {
    return _queue.any((element) {
      return item.equals(element);
    });
  }

  int size() {
    return _queue.length;
  }
}
