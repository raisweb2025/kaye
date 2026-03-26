import 'dart:async';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_bury_forklift.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../kaye_goggles/kaye_sprint_payment.dart';
import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_learning/kaye_sprint_manhattan_upon.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import 'kaye_sprint_flattering.dart';

class KayeSprintManhattanFlattering {
  static KayeSprintManhattanFlattering get instance => _instance;
  static final KayeSprintManhattanFlattering _instance =
      KayeSprintManhattanFlattering();

  KayeSprintPayment? _currentOrder;
  bool _currentOrderHasShowDialog = false;
  bool _isRegister = false;
  StreamSubscription<KayeSprintMandarinImplant>? _paySuccessSubscription;
  StreamSubscription<KayeSprintAmazonViableMarchImplant>?
  _payCheckNetworkErrorSubscription;

  kayeEmotion() {
    _isRegister = true;
    _paySuccessSubscription = KAYE.listen<KayeSprintMandarinImplant>((event) {
      if (event.orderId == _currentOrder?.order_id) {
        Fluttertoast.showToast(msg: 'kaye_trade_bury_swift'.tr);
      }
    });

    _payCheckNetworkErrorSubscription = KAYE
        .listen<KayeSprintAmazonViableMarchImplant>((event) {
          if (event.orderId == _currentOrder?.order_id) {
            if (!_currentOrderHasShowDialog) {
              _currentOrderHasShowDialog = true;
              _kayeCuterCouncilmanVail();
            }
          }
        });
  }

  void _kayeCuterCouncilmanVail() {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('kaye_trade_tidbit_cuba'.tr),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[Text('kaye_trade_bury_councilman'.tr)],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('kaye_trade_incredible'.tr),
              onPressed: () {
                KayeSprintFlattering.instance.kayeDrapeCookie();
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }

  kayeSum() {
    _isRegister = false;
    _currentOrderHasShowDialog = false;
    _currentOrder = null;
    _paySuccessSubscription?.cancel();
    _payCheckNetworkErrorSubscription?.cancel();
  }

  kayeGoToSprintManhattan({
    required KayeBuryPatsy option,
    required int fromType,
  }) {
    KayeKristenGlitterFlattering.kayeMashPeak(
      option.id.toString(),
      priceStr: option.trackIapPriceStr,
    );
    if (KAYE.kayeClosing.isKayeIOSZucchiniDedicate()) {
      _currentOrderHasShowDialog = false;
      _currentOrder = null;
      if (!_isRegister) {
        kayeEmotion();
      }
      KayeBuryForklift paymentMethod = KayeBuryForklift();
      paymentMethod.pay_mode = KayeSprintEthicalWrestling.applePay.value;
      KayeSprintFlattering.instance.kayeGoSprint(
        option,
        fromType,
        paymentMethod,
        onCreateOrderSuccess: (KayeSprintPayment? order) {
          if (order != null) {
            _currentOrder = order;
            _currentOrderHasShowDialog = false;
          }
        },
      );
    } else {
      KAYE.toNamed(
        KayeFortress.KayeSprintManhattanPlanner,
        arguments: KayeSprintManhattanUpon(option, fromType),
      );
    }
  }
}
