import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:get/get.dart';

import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_io_barnacle.dart';
import '../kaye_barnacle/kaye_monroe_barnacle.dart';
import 'package:flutter_datetime_picker_plus/src/datetime_picker_theme.dart'
    as picker_theme;

typedef DateCallback = void Function(String date);

class KayeMetaphorTowards extends StatefulWidget {
  static show(
    BuildContext context, {
    String? date,
    required DateCallback confirmCallBack,
  }) {
    LocaleType localeType = LocaleType.en;
    String languageCode = KayeIOBarnacle.getLanguageCode() ?? "en";
    switch (languageCode) {
      case 'ar':
        localeType = LocaleType.ar;
        break;
      case 'es':
        localeType = LocaleType.es;
        break;
      case 'pt':
        localeType = LocaleType.pt;
        break;
      case 'id':
        localeType = LocaleType.id;
        break;
      case 'hi':
        localeType = LocaleType.hi;
        break;
      case 'vi':
        localeType = LocaleType.vi;
        break;
      default:
        break;
    }

    var initTime = DateTime(
      DateTime.now().year - 18,
      DateTime.now().month,
      DateTime.now().day,
    );
    if (!KayeWrestlingBarnacle.isEmpty(date)) {
      initTime = DateTime.parse(date!);
    }

    DateTime nowTime = DateTime.now();
    DateTime dateMinus18Years = DateTime(
      nowTime.year - 18,
      nowTime.month,
      nowTime.day,
    );
    DatePicker.showDatePicker(
      Get.context!,
      theme: const picker_theme.DatePickerTheme(
        cancelStyle: TextStyle(color: Colors.white60, fontSize: 16),
        itemStyle: TextStyle(color: KayeToddlerBarnacle.white, fontSize: 18),
        backgroundColor: KayeAdvertise.kayeVailBgTremendousManeuver,
      ),
      locale: localeType,
      showTitleActions: true,
      currentTime: initTime,
      minTime: DateTime(1970, 01, 01),
      maxTime: dateMinus18Years,
      onChanged: (changedDate) {},
      onConfirm: (selectedDate) {
        confirmCallBack(
          KayeMonroeBarnacle.formatDay(selectedDate.millisecondsSinceEpoch),
        );
      },
    );
  }

  final DateCallback confirmCallBack;
  final String? date;

  const KayeMetaphorTowards({
    super.key,
    this.date,
    required this.confirmCallBack,
  });

  @override
  State<KayeMetaphorTowards> createState() => _KayeMetaphorTowardsDonna();
}

class _KayeMetaphorTowardsDonna extends State<KayeMetaphorTowards> {
  String localDate = "";

  @override
  Widget build(BuildContext context) {
    var initTime = DateTime(
      DateTime.now().year - 18,
      DateTime.now().month,
      DateTime.now().day,
    );
    if (KayeWrestlingBarnacle.isEmpty(widget.date)) {
      localDate = KayeMonroeBarnacle.formatDay(initTime.millisecondsSinceEpoch);
    } else {
      localDate = widget.date!;
      initTime = DateTime.parse(localDate);
    }

    var mainWidget = Container(
      decoration: const BoxDecoration(
        borderRadius: KayeAdvertise.kayeBlankBellyTopicalGarden,
        color: KayeAdvertise.kayeVailBgTremendousManeuver,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 20),
            child: _cupertinoDatePicker(CupertinoDatePickerMode.date, initTime),
          ),
          const SizedBox(height: 26),
          _confirmBtn(2),
          const SizedBox(height: 26),
        ],
      ),
    );
    return mainWidget;
  }

  Widget _cupertinoDatePicker(CupertinoDatePickerMode mode, DateTime initTime) {
    return CupertinoTheme(
      data: const CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          dateTimePickerTextStyle: TextStyle(
            color: KayeToddlerBarnacle.white,
            fontSize: 18,
          ),
        ),
      ),
      child: CupertinoDatePicker(
        mode: mode,
        initialDateTime: initTime,
        minimumDate: DateTime(1970, 01, 01),
        maximumDate: DateTime.now(),
        minimumYear: 1970,
        maximumYear: DateTime.now().year - 18,
        use24hFormat: true,
        backgroundColor: KayeToddlerBarnacle.transparent,
        onDateTimeChanged: (dayTime) {
          localDate = KayeMonroeBarnacle.formatDay(
            dayTime.millisecondsSinceEpoch,
          );
        },
      ),
    );
  }

  Widget _confirmBtn(int way) {
    return ElevatedButton(
      onPressed: () {
        widget.confirmCallBack(localDate);
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: KayeToddlerBarnacle.white,
        minimumSize: const Size(180, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text(
        "kaye_trade_namaste".tr,
        style: const TextStyle(
          color: KayeToddlerBarnacle.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
