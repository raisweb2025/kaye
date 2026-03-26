import 'package:kaye/kaye_kristen/proto/common.pb.dart';
import 'package:kaye/kaye_kristen/proto/message.pb.dart';
import 'package:protobuf/protobuf.dart';

import '../proto/google/protobuf/any.pb.dart';
import 'kaye_jewelry_guinea_emotion.dart';

class KayeBeverly<T extends GeneratedMessage> {
  late int cate;
  late int type;

  int seqno = 0;

  T? message;

  KayeBeverly(this.cate, this.type, this.message);

  factory KayeBeverly.raw(Message rawEmployee) {
    KayeBeverly<T> emp = KayeBeverly(
      rawEmployee.messageCate,
      rawEmployee.messageType,
      KayeJewelryGuineaEmotion.parse(rawEmployee),
    );
    emp.seqno = rawEmployee.seqno;
    return emp;
  }

  Message toAck() {
    Message rawEmployee = Message();
    rawEmployee.messageCate = Message_Category.BASE.value;
    rawEmployee.messageType = Message_Type.COMMONACK.value;
    rawEmployee.seqno = seqno;
    rawEmployee.messageObject = Any.pack(_toAckMessage());

    return rawEmployee;
  }

  CommonACK _toAckMessage() {
    CommonACK ack = CommonACK.create();
    ack.code = 0;
    ack.originalMsgCate = cate;
    ack.originalMsgType = type;

    return ack;
  }

  @override
  String toString() {
    return "cate:$cate, type:$type, message:$message";
  }
}
