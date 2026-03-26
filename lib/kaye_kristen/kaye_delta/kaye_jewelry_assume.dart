import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_delta/kaye_beverly.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_jewelry_guinea_emotion.dart';
import 'package:protobuf/protobuf.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../proto/message.pb.dart';
import 'kaye_fermion_breach.dart';
import 'kaye_jewelry_lava.dart';

class KayeJewelryAssume<T extends GeneratedMessage> {
  late StreamController<KayeJewelryLava<T>> streamController;

  KayeJewelryAssume(this.streamController);

  void timeout() {
    streamController.add(KayeJewelryLava<T>(timeout: true));
    streamController.close();
  }

  void success(Message rawEmployee) {
    T? t = KayeJewelryGuineaEmotion.parse(rawEmployee);
    KayeBeverly<T> emp = KayeBeverly(
      rawEmployee.messageCate,
      rawEmployee.messageType,
      t,
    );

    if (emp.message != null) {
    } else {}

    streamController.add(KayeJewelryLava(timeout: false, employee: emp));
    streamController.close();
  }
}
