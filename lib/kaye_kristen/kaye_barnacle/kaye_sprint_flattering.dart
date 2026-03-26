import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_event.dart';
import 'package:kaye/kaye_kristen/kaye_learning/kaye_pity_sprint_concerned_upon.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_dvd_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:url_launcher/url_launcher.dart';

import '../kaye_goggles/kaye_goggles_blinker_marge.dart';
import '../kaye_goggles/kaye_sprint_mumble_amazon_marge.dart';
import '../kaye_goggles/kaye_sprint_amazon.dart';
import '../kaye_goggles/kaye_sprint_payment.dart';
import '../kaye_goggles/kaye_bury_forklift.dart';
import '../kaye_goggles/kaye_bury_patsy.dart';
import '../kaye_goggles/kaye_coddle_sprint_petite_payment.dart';
import '../kaye_learning/kaye_alice_upon.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_honk/kaye_esteem_playhouse.dart';

typedef GoPayCreateOrderSuccess = void Function(KayeSprintPayment? order);

class KayeSprintMandarinImplant {
  final String orderId;

  KayeSprintMandarinImplant(this.orderId);
}

class KayeSprintAmazonViableMarchImplant {
  final String orderId;

  KayeSprintAmazonViableMarchImplant(this.orderId);
}

class KayeSprintBlinkerComebackImplant {
  KayeSprintBlinkerComebackImplant();
}

class KayeSprintFlattering {
  static KayeSprintFlattering get instance => _instance;
  static final KayeSprintFlattering _instance = KayeSprintFlattering();

  late StreamSubscription<List<PurchaseDetails>> _subscription;
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  String? version;
  List<KayeBuryPatsy>? coinsListOptions;
  List<KayeBuryPatsy>? popupListOptions;
  List<KayeBuryPatsy>? vipListOptions;
  List<KayeBuryPatsy>? firstListOptions;

  kayeEmotion() {
    final Stream<List<PurchaseDetails>> purchaseUpdated =
        _inAppPurchase.purchaseStream;

    _subscription = purchaseUpdated.listen(
      (List<PurchaseDetails> purchaseDetailsList) {
        _kayeBeatToGoldenYoda(purchaseDetailsList);
      },
      onDone: () {
        _subscription.cancel();
      },
      onError: (Object error) {
        EasyLoading.dismiss();
      },
    );

    kayeDrapeCookie();
  }

  void kayeAwfully() {
    _subscription.cancel();
  }

  Future<bool?> kayeChaoticFrontBlinker({
    bool showLoadingUI = false,
    bool autoToastOnError = false,
  }) async {
    bool isUpdated = false;
    if (version == null) {
      KayeGogglesBlinkerMarge? oldOptionsRsp = KAYE.kayeAmongst.getPayOptions();
      if (oldOptionsRsp != null) {
        await _kayeComplaintBlinkerSelfish(oldOptionsRsp);
        isUpdated = true;
      }
    }

    Map<String, dynamic> params = {};
    int timeout = 5;
    if (version != null) {
      params["version"] = version;
      timeout = 3;
    }

    KayeGogglesBlinkerMarge? optionRsp = await KAYE.http.rest(
      8010,
      params,
      timeout: Duration(seconds: timeout),
      (p0) => KayeGogglesBlinkerMarge.fromJson(p0),
      showLoadingUI: false,
      autoToastOnError: false,
    );
    if (optionRsp != null) {
      if (optionRsp.version != version) {
        KAYE.kayeAmongst.savePayOptions(optionRsp);
        await _kayeComplaintBlinkerSelfish(optionRsp);
        isUpdated = true;
      }
    }
    if (isUpdated) {
      KAYE.fire(KayeSprintBlinkerComebackImplant());
    }
    return isUpdated;
  }

  Future<void> _kayeComplaintBlinkerSelfish(
    KayeGogglesBlinkerMarge optionsRsp,
  ) async {
    version = optionsRsp.version;
    firstListOptions = optionsRsp.first;
    coinsListOptions = optionsRsp.coin;
    popupListOptions = optionsRsp.popup;
    vipListOptions = optionsRsp.vip;

    if (!KayeWrestlingBarnacle.isEmpty(firstListOptions)) {
      await _kayeSuiteShallowDrinker(firstListOptions!);
    }
    if (!KayeWrestlingBarnacle.isEmpty(coinsListOptions)) {
      await _kayeSuiteShallowDrinker(coinsListOptions!);
    }
    if (!KayeWrestlingBarnacle.isEmpty(popupListOptions)) {
      await _kayeSuiteShallowDrinker(popupListOptions!);
    }
    if (!KayeWrestlingBarnacle.isEmpty(vipListOptions)) {
      await _kayeSuiteShallowDrinker(vipListOptions!);
    }
  }

  Future<KayeBuryPatsy> kayePatsyUnderbelly(KayeBuryPatsy option) async {
    if (option != null) {
      Set<String> productIds = <String>{};
      if (!KayeWrestlingBarnacle.isEmptyString(option.platformProdId)) {
        productIds.add(option.platformProdId!);
      }
      bool removeIapPay = false;
      if (productIds.isNotEmpty) {
        final bool valid = await _inAppPurchase.isAvailable();
        ProductDetailsResponse? rsp;
        if (!valid) {
          removeIapPay = true;
        } else {
          rsp = await _inAppPurchase.queryProductDetails(productIds);
          if (rsp.error != null || rsp.productDetails.isEmpty) {
            removeIapPay = true;
          } else {
            removeIapPay = KAYE.kayeClosing.isNgc(
              rsp.productDetails.first.currencyCode,
            );
          }
        }

        if (removeIapPay) {
          option.pay_mode_prices?.removeWhere(
            (element) => (element.pay_mode == 3 || element.pay_mode == 4),
          );
        } else if (rsp != null) {
          if (!KayeWrestlingBarnacle.isEmptyString(option.platformProdId)) {
            for (var details in rsp.productDetails) {
              if (option.platformProdId!.compareTo(details.id) == 0) {
                option.productDetails = details;
                break;
              }
            }
          }
        }
      }
    }
    return option;
  }

  Future<void> _kayeBeatToGoldenYoda(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    bool hasError = false;
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      switch (purchaseDetails.status) {
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          {
            final bool valid = await _kayeAbuseGolden(purchaseDetails);
            if (valid) {
              _kayeQualifyElsewhere(purchaseDetails);
            } else {
              _kayeComplaintAnnualGolden(purchaseDetails);
              return;
            }
            break;
          }
        case PurchaseStatus.error:
          {
            EasyLoading.dismiss();
            KayeKristenGlitterFlattering.kayeSprintAthenaeum(
              2,
              failReason: purchaseDetails.error?.message ?? "0",
            );
            String orderId = KAYE.kayeAmongst.getOrderWidthProductId(
              purchaseDetails.productID,
            );
            _kayeComplaintMorseMarch(orderId, purchaseDetails.error?.message);
            hasError = true;
            break;
          }
        case PurchaseStatus.canceled:
          {
            EasyLoading.dismiss();
            if (Platform.isIOS) {
              KAYE.kayeAmongst.removeOrderIdWidthProductId(
                purchaseDetails.productID,
              );
            }
            KayeKristenGlitterFlattering.kayeSprintAthenaeum(4);
            String orderId = KAYE.kayeAmongst.getOrderWidthProductId(
              purchaseDetails.productID,
            );
            _kayeComplaintMorseMarch(orderId, "kaye_trade_bros".tr);
            break;
          }
        default:
          break;
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
    if (hasError) {
      kayeDrapeCookie();
    }
  }

  void kayeDrapeCookie() {
    _inAppPurchase.restorePurchases();
  }

  void _kayeComplaintMorseMarch(
    String? orderId,
    String? message, {
    bool showToast = true,
  }) {
    if (!KayeWrestlingBarnacle.isEmpty(message) && showToast) {
      Fluttertoast.showToast(msg: message!);
    }
    _kayeSprintCrayTaste(orderId, message);
  }

  String? _kayeSuiteAmongstPaymentId(PurchaseDetails purchaseDetails) {
    String? orderId;
    if (!KayeWrestlingBarnacle.isEmpty(purchaseDetails.purchaseID)) {
      orderId = KAYE.kayeAmongst.getOrderWidthPurchaseId(
        purchaseDetails.purchaseID!,
      );
    }
    if (KayeWrestlingBarnacle.isEmpty(orderId)) {
      orderId = KAYE.kayeAmongst.getOrderWidthProductId(
        purchaseDetails.productID,
      );
    }

    return orderId;
  }

  Future<bool> _kayeAbuseGolden(PurchaseDetails purchaseDetails) async {
    KayeKristenGlitterFlattering.kayeSprintAthenaeum(1);

    String? orderId;
    if (Platform.isIOS) {
      orderId = _kayeSuiteAmongstPaymentId(purchaseDetails);
    }
    String receiptInfo =
        purchaseDetails.verificationData.serverVerificationData;

    if (purchaseDetails is GooglePlayPurchaseDetails) {
      PurchaseWrapper billingClientPurchase =
          purchaseDetails.billingClientPurchase;
      receiptInfo = KayeDvdBarnacle.base64UrlEncode(
        billingClientPurchase.originalJson,
      );
      orderId = billingClientPurchase.obfuscatedProfileId;
    }

    if (KayeWrestlingBarnacle.isEmpty(orderId)) {
      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
      return false;
    }

    if (Platform.isIOS) {
      if (!KayeWrestlingBarnacle.isEmpty(purchaseDetails.purchaseID)) {
        KAYE.kayeAmongst.saveOrderIdWidthPurchaseId(
          purchaseDetails.purchaseID!,
          orderId!,
        );
      }
    }

    KayeSprintAmazon? payCheck = await KAYE.http.rest(
      8012,
      {
        "pay_mode": Platform.isAndroid
            ? KayeSprintEthicalWrestling.googlePay.value
            : KayeSprintEthicalWrestling.applePay.value,
        "order_id": orderId,
        "receipt_info": receiptInfo,
      },
      (p0) => KayeSprintAmazon.fromJson(p0),
      showLoadingUI: true,
      autoToastOnError: false,
    );
    if (payCheck == null) {
      KAYE.fire(KayeSprintAmazonViableMarchImplant(orderId!));
      return false;
    }

    if (payCheck.result == 1) {
      KAYE.fire(KayeSprintMandarinImplant(payCheck.order_id.toString()));
      kayeChaoticFrontBlinker();

      if (Platform.isIOS) {
        KAYE.kayeAmongst.removeOrderIdWidthProductId(purchaseDetails.productID);
        if (!KayeWrestlingBarnacle.isEmpty(purchaseDetails.purchaseID)) {
          KAYE.kayeAmongst.removeOrderIdWidthPurchaseId(
            purchaseDetails.purchaseID!,
          );
        }
      }

      kayeGenitalsJockGlitterTie(payCheck);
      return true;
    }

    if (payCheck.order_id! > 0 && payCheck.result == 0) {
      KAYE.fire(KayeSprintAmazonViableMarchImplant(orderId!));
      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
      return false;
    }

    KAYE.fire(KayeSprintAmazonViableMarchImplant(orderId!));
    return false;
  }

  Future<void> _kayeQualifyElsewhere(PurchaseDetails purchaseDetails) async {
    Future.delayed(const Duration(seconds: 1), () {
      KayeEsteemPlayhouse.show(seconds: 50);
    });
  }

  void _kayeComplaintAnnualGolden(PurchaseDetails purchaseDetails) {}

  void kayeGoSprint(
    KayeBuryPatsy option,
    int fromType,
    KayeBuryForklift paymentMethod, {
    GoPayCreateOrderSuccess? onCreateOrderSuccess,
  }) async {
    KayeKristenGlitterFlattering.kayeMashSprint(
      paymentMethod.pay_mode,
      option.id.toString(),
      option.priceStr,
    );

    KayeSprintPayment? order = await KAYE.http.rest(
      8011,
      {
        "pay_mode": paymentMethod.pay_mode,
        "option_id": option.id,
        "source_type": fromType,
      },
      (p0) => KayeSprintPayment.fromJson(p0),
      showLoadingUI: true,
      autoToastOnError: false,
    );
    if (order == null) {
      Fluttertoast.showToast(msg: "kaye_trade_sprint_ducky_cray".tr);
      return;
    }
    if (onCreateOrderSuccess != null) {
      onCreateOrderSuccess(order);
    }

    if (paymentMethod.pay_mode == KayeSprintEthicalWrestling.applePay.value ||
        paymentMethod.pay_mode == KayeSprintEthicalWrestling.googlePay.value) {
      kayeSprintKristenMorse(option, paymentMethod, order);
    } else {
      kayeSprintPitySprint(option, paymentMethod, order);
    }
  }

  Future<void> kayeSprintKristenMorse(
    KayeBuryPatsy option,
    KayeBuryForklift paymentMethod,
    KayeSprintPayment order,
  ) async {
    EasyLoading.show(maskType: EasyLoadingMaskType.clear);
    List<KayeBuryPatsy> options = [option];
    IAPError? error = await _kayeSuiteShallowDrinker(options);
    if (error != null) {
      KayeKristenGlitterFlattering.kayeSprintAthenaeum(
        2,
        failReason: error.message,
      );
      _kayeComplaintMorseMarch(order.order_id.toString(), error.message);
      EasyLoading.dismiss();
      return;
    }
    if (option.productDetails == null) {
      KayeKristenGlitterFlattering.kayeSprintAthenaeum(
        2,
        failReason: 'kaye_trade_elsewhere_suite_carefully'.tr,
      );
      _kayeComplaintMorseMarch(
        order.order_id.toString(),
        'kaye_trade_elsewhere_suite_carefully'.tr,
      );
      EasyLoading.dismiss();
      return;
    }

    if (Platform.isIOS) {
      KAYE.kayeAmongst.saveOrderIdWidthProductId(
        option.platformProdId!,
        order.order_id.toString(),
      );
    }
    if (option.account_type == 1) {
      _inAppPurchase.buyConsumable(
        purchaseParam: PurchaseParam(
          productDetails: option.productDetails!,
          androidProfileId: order.order_id!,
          applicationUserName: "${KAYE.kayeOptimal!.user.uid}",
        ),
      );
    } else {
      _inAppPurchase.buyNonConsumable(
        purchaseParam: PurchaseParam(
          productDetails: option.productDetails!,
          androidProfileId: order.order_id!,
          applicationUserName: "${KAYE.kayeOptimal!.user.uid}",
        ),
      );
    }
  }

  Future<IAPError?> _kayeSuiteShallowDrinker(
    List<KayeBuryPatsy> options,
  ) async {
    int startTime = DateTime.now().millisecondsSinceEpoch;
    final bool valid = await _inAppPurchase.isAvailable();
    if (!valid) {
      int durationTime =
          (DateTime.now().millisecondsSinceEpoch - startTime) ~/ 1000;
      KayeKristenGlitterFlattering.kayeMorseAthenaeum(
        Platform.isAndroid ? 1 : 2,
        1,
        durationTime,
      );
      IAPError error = IAPError(
        source: "null",
        code: "-1",
        message: "kaye_trade_elsewhere_suite_carefully".tr,
      );
      return error;
    }
    Set<String> productIds = <String>{};
    for (var option in options) {
      if (!KayeWrestlingBarnacle.isEmptyString(option.platformProdId)) {
        productIds.add(option.platformProdId!);
      }
    }
    if (productIds.isNotEmpty) {
      final ProductDetailsResponse rsp = await _inAppPurchase
          .queryProductDetails(productIds);
      int durationTime =
          (DateTime.now().millisecondsSinceEpoch - startTime) ~/ 1000;
      if (rsp.error != null) {
        KayeKristenGlitterFlattering.kayeMorseAthenaeum(
          Platform.isAndroid ? 1 : 2,
          1,
          durationTime,
        );
        return rsp.error;
      } else if (rsp.productDetails.isNotEmpty) {
        KayeKristenGlitterFlattering.kayeMorseAthenaeum(
          Platform.isAndroid ? 1 : 2,
          0,
          durationTime,
        );
        for (var option in options) {
          if (!KayeWrestlingBarnacle.isEmptyString(option.platformProdId)) {
            for (var details in rsp.productDetails) {
              if (option.platformProdId!.compareTo(details.id) == 0) {
                option.productDetails = details;
                break;
              }
            }
          }
        }
      }
    }
    return null;
  }

  _kayeSprintCrayTaste(String? orderId, String? reason) {
    KAYE.http.submit(8014, {"order_id": orderId ?? "", "reason": reason});
  }

  Future<void> kayeSprintPitySprint(
    KayeBuryPatsy option,
    KayeBuryForklift paymentMethod,
    KayeSprintPayment order,
  ) async {
    if (KayeWrestlingBarnacle.isEmptyString(order.check_page_url)) {
      return;
    }

    bool success = false;
    if (order.jump_type != 0) {
      success = await launchUrl(
        Uri.parse(order.check_page_url!),
        mode: LaunchMode.externalApplication,
      );
    } else {
      KayePitySprintConcernedUpon arguments = KayePitySprintConcernedUpon(
        "",
        order.check_page_url ?? "",
        order.order_id ?? "",
        paymentMethod.pay_mode,
        showNavbar: true,
        showHtmlTitle: true,
      );
      KAYE.toNamed(
        KayeFortress.KayePitySprintConcernedPlanner,
        arguments: arguments,
      );
      success = true;
    }
    if (success) {
      kayeJavaPitySprintPetitePayment(
        KayeWrestlingBarnacle.dynamicToIntNotNull(order.order_id),
        paymentMethod.pay_mode,
      );
    } else {
      Fluttertoast.showToast(msg: "kaye_trade_bury_cray".tr);
    }
  }

  void kayeJavaPitySprintPetitePayment(int orderId, int payMode) {
    KayePitySprintPetitePayment order = KayePitySprintPetitePayment();
    order.order_id = orderId;
    order.pay_mode = payMode;
    order.time = DateTime.now().millisecondsSinceEpoch;
    List<KayePitySprintPetitePayment> orders = getThirdPayCachedOrders() ?? [];
    orders.add(order);
    kayeNamastePitySprintPetiteEyebrow(orders);
  }

  List<KayePitySprintPetitePayment>? getThirdPayCachedOrders() {
    String? cachedString = KAYE.kayeAmongst.getThirdPayOrdersString(
      KAYE.kayeOptimal!.user.uid,
    );
    if (KayeWrestlingBarnacle.isEmptyString(cachedString)) {
      return null;
    }
    List<String> cachedList = cachedString.split("##");
    List<KayePitySprintPetitePayment> orders = [];
    for (String cached in cachedList) {
      var item = KayePitySprintPetitePayment.fromJsonString(cached);
      if (item != null) {
        orders.add(item);
      }
    }
    kayeNamastePitySprintPetiteEyebrow(orders);
    return orders;
  }

  void kayeNamastePitySprintPetiteEyebrow(
    List<KayePitySprintPetitePayment>? orders,
  ) {
    if (KayeWrestlingBarnacle.isEmptyList(orders)) {
      KAYE.kayeAmongst.setThirdPayOrdersString(KAYE.kayeOptimal!.user.uid, "");
      return;
    }
    List<String> cachedList = [];
    for (KayePitySprintPetitePayment order in orders!) {
      cachedList.add(order.toJsonString());
    }
    KAYE.kayeAmongst.setThirdPayOrdersString(
      KAYE.kayeOptimal!.user.uid,
      cachedList.join("##"),
    );
  }

  void kayeDemandPitySprintPetitePayment(List<int> orderIds) {
    if (orderIds.isEmpty) return;
    List<KayePitySprintPetitePayment>? orders = getThirdPayCachedOrders();
    orders?.removeWhere((element) => orderIds.contains(element.order_id));
    kayeNamastePitySprintPetiteEyebrow(orders);
  }

  void kayeMumbleAmazonPitySprintPetiteEyebrow({bool showToast = false}) {
    if (KAYE.kayeOptimal == null) {
      return;
    }
    List<KayePitySprintPetitePayment>? orders = getThirdPayCachedOrders();
    if (orders == null || orders.isEmpty) return;
    String json = "[${orders.map((e) => e.toJsonString()).join(",")}]";

    bool isExistPaySuccessOrder = false;

    KAYE.http
        .rest(
          8013,
          {"orders": json},
          (p0) => KayeSprintMumbleAmazonMarge.fromJson(p0),
          showLoadingUI: showToast,
          autoToastOnError: showToast,
        )
        .then((value) {
          if (value != null) {
            KayeSprintMumbleAmazonMarge rsp = value;
            List<int> orderIds = [];
            rsp.batch
                ?.where(
                  (element) =>
                      (element.timeout == true || element.result == 1) &&
                      element.order_id != null,
                )
                .forEach((element) {
                  orderIds.add(element.order_id!);
                  if (element.result == 1) {
                    KAYE.fire(
                      KayeSprintMandarinImplant(element.order_id.toString()),
                    );
                    kayeChaoticFrontBlinker();

                    kayeGenitalsJockGlitterTie(element);
                    isExistPaySuccessOrder = true;
                  }
                });
            kayeDemandPitySprintPetitePayment(orderIds);
            if (isExistPaySuccessOrder && showToast) {}
          }
        });
  }

  void kayeGenitalsJockGlitterTie(KayeSprintAmazon payCheck) {
    num price = payCheck.total_price ?? 0;
    String currency = payCheck.currency ?? '';
    String orderId = payCheck.order_id.toString();
    AdjustEvent adjustEvent = AdjustEvent(KayeAdvertise.kayeJockSprintImplant);
    adjustEvent.setRevenue(price, currency);
    adjustEvent.transactionId = orderId;
    Adjust.trackEvent(adjustEvent);
  }
}
