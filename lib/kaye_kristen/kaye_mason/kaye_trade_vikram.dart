import 'dart:ui' as ui;

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_dedicate_tie.dart';
import 'package:get/get.dart';

class KayeTradeVikram extends Translations {
  static final KayeTradeVikram _instance = KayeTradeVikram._();

  factory KayeTradeVikram() {
    return _instance;
  }

  KayeTradeVikram._();

  @override
  Map<String, Map<String, String>> get keys => {
    "en": {
      "kaye_trade_dutch_delta_farewell_justice":
          "Operation failed, please check the network settings",
    },
    "ar": {
      "kaye_trade_dutch_delta_farewell_justice":
          "فشلت العملية، يرجى التحقق من إعدادات الشبكة أو إعادة المحاولة",
    },
    "es": {
      "kaye_trade_dutch_delta_farewell_justice":
          "Operación fallida, por favor verifique la configuración de red o vuelva a intentarlo",
    },
    "hi": {
      "kaye_trade_dutch_delta_farewell_justice":
          "ऑपरेशन विफल, कृपया नेटवर्क सेटिंग की जाँच करें या पुनः प्रयास करें",
    },
    "in": {
      "kaye_trade_dutch_delta_farewell_justice":
          "operasi gagal, silakan periksa pengaturan jaringan atau coba lagi",
    },
    "pt": {
      "kaye_trade_dutch_delta_farewell_justice":
          "Falha na operação, verifique as configurações de rede ou tente novamente",
    },
    "vi": {
      "kaye_trade_dutch_delta_farewell_justice":
          "hoạt động không thành công, vui lòng kiểm tra cài đặt mạng hoặc thử lại",
    },
    "ur": {
      "kaye_trade_dutch_delta_farewell_justice":
          "آپریشن ناکام ہوگیا، براہ کرم نیٹ ورک کی ترتیبات چیک کریں یا دوبارہ کوشش کریں",
    },
  };

  int _version = 0;

  int version() {
    return _version;
  }

  void updateWithUpgradeResponse(KayeDedicateTie? data) {
    if (data == null) {
      return;
    }

    _version = data.version;
    if (data.val != null) {
      Map<String, dynamic> cfg = data.val;
      for (var e in cfg.entries) {
        String lang = e.key;
        Map<String, dynamic> kvs = e.value;

        Map<String, String>? trans = Get.translations[lang];
        trans ??= {};
        trans.addAll(kvs.map((key, value) => MapEntry(key, value as String)));
        Get.translations[lang] = trans;
      }

      Map<String, String>? inVals = Get.translations["in"];
      if (inVals != null) {
        Get.translations["id"] = inVals;
      }
    }
  }

  static String localeLang() {
    return ui.PlatformDispatcher.instance.locale.languageCode.toLowerCase();
  }

  static String? localeCountry() {
    return ui.PlatformDispatcher.instance.locale.countryCode;
  }

  KayeDedicateTie asVersionData() {
    return KayeDedicateTie()
      ..version = _version
      ..val = keys;
  }
}
