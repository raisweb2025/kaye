import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_attach_order.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_quench_selfish.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_beverly.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_fermion_breach.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_convenient_no.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_jewelry_assume.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_jewelry_fridge.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_jewelry_guinea_emotion.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_jewelry_lava.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_unraveling_cultural.dart';
import 'package:kaye/kaye_kristen/proto/auth.pb.dart';
import 'package:kaye/kaye_kristen/proto/message.pb.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:protobuf/protobuf.dart';
import '../kaye_goggles/kaye_goggles_kristen_jewelry.dart';
import 'package:convert/convert.dart';

enum KayeJewelryFax { DISCONNECTED, CONNECTED, AUTHED, CONNECTING }

class KayeJewelry {
  int _delayMessageTimeoutMills = 10000;

  int _keepAliveIntervalMills = 8000;

  int _sendBufferBatchSize = 10;

  Timer? _socketTimer;
  KayeJewelryFax _status = KayeJewelryFax.DISCONNECTED;

  Socket? _socket;
  List<int> _receiveBuffer = [];

  int _lastSendHeartbeatTime = 0;

  int _lastReceiveTime = 0;

  final KayeUnravelingCultural<Message> _sendBufferQueue =
      KayeUnravelingCultural<Message>();

  static final KayeJewelry _instance = KayeJewelry._();

  KayeJewelry._();

  factory KayeJewelry() {
    return _instance;
  }

  bool _enable = false;

  void start() {
    _enable = true;
    _connect("start");
    _startTimer();
  }

  void stop() {
    _enable = false;
    _status = KayeJewelryFax.DISCONNECTED;
    if (_socket != null) {
      _socket!.close();
    }
  }

  get isOn => _status == KayeJewelryFax.AUTHED;

  get isConnected =>
      _status == KayeJewelryFax.CONNECTED || _status == KayeJewelryFax.AUTHED;

  void reconnect(String reason) {
    _status = KayeJewelryFax.DISCONNECTED;
    if (_socket != null) {
      _socket!.close();
    }
    _connect(reason);
  }

  void _startTimer() {
    if (_socketTimer != null) {
      _socketTimer!.cancel();
    }
    _socketTimer = Timer.periodic(const Duration(milliseconds: 1000), _onTimer);
  }

  Future<void> _connect(String reason) async {
    if (!_enable) {
      KayeKristenGlitterFlattering.socketConnect(reason, "1");
      return;
    }
    if (_status != KayeJewelryFax.DISCONNECTED) {
      KayeKristenGlitterFlattering.socketConnect(reason, "0");
      return;
    }

    List<KayeGogglesKristenJewelryLowell> nodes = KAYE.kayeClosing.socket;
    for (final node in nodes) {
      try {
        _status = KayeJewelryFax.CONNECTING;

        _delayMessageTimeoutMills = node.delayMessageTimeoutMills;
        _keepAliveIntervalMills = node.keepAliveIntervalMills;
        _sendBufferBatchSize = node.sendBufferBatchSize;

        _receiveBuffer = [];
        _socket = await Socket.connect(
          node.host,
          node.port,
          timeout: const Duration(seconds: 10),
        );
        _status = KayeJewelryFax.CONNECTED;
        int now = DateTime.now().millisecondsSinceEpoch;
        _lastSendHeartbeatTime = now;
        _lastReceiveTime = now;

        _socket!.setOption(SocketOption.tcpNoDelay, true);
        _socket!.listen(
          (data) {
            _readData(data);
          },
          onError: (e) {
            reconnect("SocketError");
          },
          onDone: () {
            _status = KayeJewelryFax.DISCONNECTED;
          },
          cancelOnError: true,
        );
        break;
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(30001, e, stack);
        _status = KayeJewelryFax.DISCONNECTED;
        KayeKristenGlitterFlattering.socketError(e, stack);
      }
    }

    if (_status == KayeJewelryFax.CONNECTED) {
      if (_enable) {
        KayeKristenGlitterFlattering.onSocketConnect();
        KayeKristenGlitterFlattering.socketAuth(1);
      } else {
        KayeKristenGlitterFlattering.socketAuth(1, result: 1);
      }
      auth();
    }
  }

  void _readData(List<int> dataList) {
    if (dataList.isEmpty) return;

    _lastReceiveTime = DateTime.now().millisecondsSinceEpoch;

    _receiveBuffer = _receiveBuffer + dataList;
    var reader = CodedBufferReader(_receiveBuffer);
    var length = reader.readInt32();

    while (_receiveBuffer.length > length) {
      Message rawEmployee = Message.create();
      try {
        CodedBufferReader(
          _receiveBuffer,
        ).readMessage(rawEmployee, ExtensionRegistry());
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(30002, e, stack);
        reconnect("read package err");
        KayeKristenGlitterFlattering.socketError(e, stack);
        return;
      }

      try {
        _processResp(rawEmployee);
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(30003, e, stack);
        KayeKristenGlitterFlattering.socketError(e, stack);
      }

      int usedLength =
          length + KayeFermionBreach.int32ToBuffer(length).lengthInBytes;
      _receiveBuffer = _receiveBuffer.sublist(usedLength);
      if (_receiveBuffer.isNotEmpty) {
        reader = CodedBufferReader(_receiveBuffer);
        length = reader.readInt32();
      }
    }
  }

  void _processResp(Message rawEmployee) {
    if (rawEmployee.messageCate == Message_Category.BASE.value &&
        rawEmployee.messageType == Message_Type.HEARTBEAT.value) {
      return;
    }

    int seqNum = rawEmployee.seqno;
    if (seqNum > 0) {
      KayeJewelryAssume<dynamic>? callback = _requestCallbackMap.remove(seqNum);
      if (callback != null) {
        _requestTimeoutQueue.remove(KayeBridesmaid(seqNum, 0));
        callback.success(rawEmployee);
        return;
      } else {}
    } else {}

    KayeBeverly employee = KayeBeverly.raw(rawEmployee);

    if (employee.message != null) {
      if (employee.seqno > 0) {
        sendRawEmployee(employee.toAck());
      }
      KAYE.fire(employee.message);
    } else {}
  }

  final Map<int, KayeJewelryAssume<dynamic>> _requestCallbackMap = {};

  final KayeUnravelingCultural<int> _requestTimeoutQueue =
      KayeUnravelingCultural<int>();

  bool _send(Message rawEmployee) {
    try {
      _socket!.add(KayeFermionBreach.encode(rawEmployee));
      return true;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(30004, e, stack);
      KayeKristenGlitterFlattering.socketError(e, stack);
      return false;
    }
  }

  bool sendRawEmployee(Message rawEmployee) {
    if (_socket == null ||
        _status == KayeJewelryFax.DISCONNECTED ||
        _status == KayeJewelryFax.CONNECTING) {
      _sendBufferQueue.add(
        KayeBridesmaid(rawEmployee, _delayMessageTimeoutMills),
      );
      return true;
    } else {
      return _send(rawEmployee);
    }
  }

  bool sendWithoutResp(GeneratedMessage msg) {
    if (!_enable) {
      return false;
    }

    Message rawEmployee = KayeJewelryGuineaEmotion.build(msg);
    return sendRawEmployee(rawEmployee);
  }

  Future<T> sendWithReturnOrThrow<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
    bool showLoadingUI = false,
  }) async {
    if (showLoadingUI) {
      EasyLoading.show();
    }

    KayeJewelryLava<T> resp = await sendWithResp<T>(
      msg,
      timeoutMillis: timeoutMillis,
    ).first;
    if (showLoadingUI) {
      EasyLoading.dismiss();
    }

    if (resp.timeout || resp.employee == null) {
      throw KayeJewelryFridge();
    }

    T? respBody = resp.employee!.message;
    if (respBody == null) {
      throw KayeJewelryFridge();
    }

    int? codeNum = KayeFermionBreach.getFiled(respBody, "code");
    if (codeNum == null) {
      throw KayeJewelryFridge();
    }

    return respBody;
  }

  Future<T?> sendWithReturn<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    String? autoErrorWhenError,
  }) async {
    if (showLoadingUI) {
      EasyLoading.show();
    }

    KayeJewelryLava<T> resp = await sendWithResp<T>(
      msg,
      timeoutMillis: timeoutMillis,
    ).first;
    if (showLoadingUI) {
      EasyLoading.dismiss();
    }

    if (resp.timeout || resp.employee == null) {
      if (autoToastOnError) {
        Fluttertoast.showToast(
          msg:
              "${autoErrorWhenError ?? KayeAdvertise.kayeDutchDeltaMarchJustice.tr} ${resp.employee?.cate}-${resp.employee?.type}-${KayeAdvertise.kayeKristenDedicate}",
        );
      }
      return null;
    }

    T? respBody = resp.employee!.message;
    if (respBody == null) {
      if (autoToastOnError) {
        Fluttertoast.showToast(
          msg:
              "${autoErrorWhenError ?? KayeAdvertise.kayeDutchDeltaMarchJustice.tr} ${resp.employee!.cate}-${resp.employee!.type}-${KayeAdvertise.kayeKristenDedicate}",
        );
      }
      return null;
    }

    int? codeNum = KayeFermionBreach.getFiled(respBody, "code");
    if (codeNum == null) {
      if (autoToastOnError) {
        Fluttertoast.showToast(
          msg:
              "${autoErrorWhenError ?? KayeAdvertise.kayeDutchDeltaMarchJustice.tr} ${resp.employee!.cate}-${resp.employee!.type}-${KayeAdvertise.kayeKristenDedicate}",
        );
      }
      return null;
    }

    if (codeNum == 0) {
      return respBody;
    }

    if (autoToastOnError) {
      String? rspMsg = KayeFermionBreach.getFiled(respBody, "msg");
      if (rspMsg != null) {
        Fluttertoast.showToast(
          msg:
              "$rspMsg ${resp.employee!.cate}-${resp.employee!.type}-${KayeAdvertise.kayeKristenDedicate}",
        );
      }
    }

    return respBody;
  }

  Stream<KayeJewelryLava<T>> sendWithResp<T extends GeneratedMessage>(
    GeneratedMessage msg, {
    int timeoutMillis = 10000,
  }) {
    if (!_enable) {
      StreamController<KayeJewelryLava<T>> sc =
          StreamController<KayeJewelryLava<T>>();
      sc.add(KayeJewelryLava(timeout: true));
      return sc.stream;
    }

    Message rawEmployee = KayeJewelryGuineaEmotion.build(msg);
    rawEmployee.seqno = KayeConvenientNo.next();

    KayeJewelryLava<T> t = KayeJewelryLava();
    StreamController<KayeJewelryLava<T>> sc =
        StreamController<KayeJewelryLava<T>>();
    _requestCallbackMap[rawEmployee.seqno] = KayeJewelryAssume<T>(sc);
    _requestTimeoutQueue.add(KayeBridesmaid(rawEmployee.seqno, timeoutMillis));
    sendRawEmployee(rawEmployee);
    return sc.stream;
  }

  void _onTimer(Timer timer) {
    if (!_enable) {
      return;
    }

    try {
      _timerCleanTimeoutsInSendBufferQueue();

      if (_status == KayeJewelryFax.DISCONNECTED) {
        reconnect("timer check");
        return;
      }

      if (_status == KayeJewelryFax.CONNECTING) {
        return;
      }

      int now = DateTime.now().millisecondsSinceEpoch;

      if (now - _lastReceiveTime > _keepAliveIntervalMills * 2) {
        reconnect("heartbeat timeout");
        return;
      }

      _timerSendBufferQueue();

      _timerCheckRequestTimeout();

      _timerSendHeartbeat(now);
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(30005, e, stack);
      KayeKristenGlitterFlattering.socketError(e, stack);
    }
  }

  void _timerCleanTimeoutsInSendBufferQueue() {
    KayeBridesmaid<Message>? delayBuff;
    while ((delayBuff = _sendBufferQueue.poll()) != null) {
      Message rawEmployee = delayBuff!.data;
      _fireTimeout(rawEmployee.seqno);
    }
  }

  void _timerSendHeartbeat(int now) {
    if (now - _lastSendHeartbeatTime >= _keepAliveIntervalMills) {
      _lastSendHeartbeatTime = DateTime.now().millisecondsSinceEpoch;

      Message rawEmployee = Message.create();
      rawEmployee.messageCate = Message_Category.BASE.value;
      rawEmployee.messageType = Message_Type.HEARTBEAT.value;
      try {
        _socket!.add(KayeFermionBreach.encode(rawEmployee));
      } catch (e, stack) {
        KayeKristenGlitterFlattering.kayeSendWasher(30006, e, stack);
        KayeKristenGlitterFlattering.socketError(e, stack);
      }
    }
  }

  void _timerCheckRequestTimeout() {
    KayeBridesmaid<int>? delaySeqNo;
    while ((delaySeqNo = _requestTimeoutQueue.poll()) != null) {
      _fireTimeout(delaySeqNo!.data);
    }
  }

  void _timerSendBufferQueue() {
    int sendCount = 0;
    KayeBridesmaid<Message>? delayEmp;
    while (sendCount < _sendBufferBatchSize &&
        ((delayEmp = _sendBufferQueue.pop()) != null)) {
      int delay = delayEmp!.getDelay();
      Message rawEmployee = delayEmp.data;

      if (delay <= 0) {
        _fireTimeout(rawEmployee.seqno);
      } else {
        sendCount++;
        sendRawEmployee(rawEmployee);
      }
    }
  }

  Future<void> auth() async {
    if (KAYE.kayeOptimal == null || _status != KayeJewelryFax.CONNECTED) {
      return;
    }

    String ts = DateTime.now().millisecondsSinceEpoch.toString();
    AuthReq req = AuthReq.create();
    req.session = KAYE.kayeOptimal!.session;

    KayeGogglesQuenchSelfish ci = KAYE.deviceService.getClientInfo();
    req.version = ci.version ?? "";
    req.deviceId = ci.device_id ?? "";
    req.model = ci.model ?? "";
    req.os = ci.system ?? "";
    req.timestamp = ts;
    req.pVer = 1;
    req.lang = ci.lang ?? "";
    req.packageName = ci.appPackage ?? "";

    String sig =
        "${ci.version}:${ts}:${req.session}:${ci.appPackage}:${req.pVer}:${ci.system}:${ci.model}:${ci.lang}:${ci.device_id}:${KAYE.kayeOptimal!.secret}";
    sig = hex.encode(md5.convert(Utf8Encoder().convert(sig)).bytes);
    req.sig = sig;
    Socket _currentSocket = _socket!;

    sendWithResp(req).listen((event) {
      if (event.timeout || event.employee == null) {
        if (_currentSocket == _socket) {
          KayeKristenGlitterFlattering.socketAuth(2);
          auth();
        } else {}
        return;
      }

      AuthRsp rsp = event.employee!.message as AuthRsp;
      if (rsp.code != 0) {
        KAYE.fire(KayeAttachOrder(KayeAttachAthenaeum.LOGOUT));
        return;
      }

      _status = KayeJewelryFax.AUTHED;
      KAYE.fire(rsp);
    });
  }

  void _fireTimeout(int seqno) {
    if (seqno > 0) {
      _requestCallbackMap.remove(seqno)?.timeout();
    }
  }
}
