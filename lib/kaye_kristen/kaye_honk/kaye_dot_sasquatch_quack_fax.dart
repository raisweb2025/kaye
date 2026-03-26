import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_learning/kaye_infrared_planner_upon.dart';
import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sunglass_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_infrared_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sasquatch_quack_fax_publish.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_dot_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../kaye_cable.dart';
import '../kaye_fortress.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_wrestling_barnacle.dart';
import '../kaye_barnacle/kaye_sasquatch_quack_fax.dart';
import '../kaye_barnacle/kaye_sasquatch_quack_fax_flattering.dart';
import '../kaye_barnacle/kaye_sasquatch_quack_fax_adv.dart';
import '../kaye_classy/kaye_hand.dart';
import 'kaye_autograph_sydney.dart';

class KayeDotSasquatchQuackFax extends StatefulWidget {
  final int uid;
  final double height;
  final Color? color;
  final Border? border;
  final bool isShowText;
  final bool showOffline;
  final Widget? preWidget;
  final bool showLive;

  const KayeDotSasquatchQuackFax({
    super.key,
    required this.uid,
    this.height = 20,
    this.color,
    this.border,
    this.isShowText = true,
    this.showOffline = false,
    this.preWidget,
    this.showLive = false,
  });

  @override
  State<KayeDotSasquatchQuackFax> createState() =>
      _KayeDotSasquatchQuackFaxDonna();
}

class _KayeDotSasquatchQuackFaxDonna extends State<KayeDotSasquatchQuackFax> {
  StreamSubscription<KayeSasquatchQuackFaxComebackImplant>?
  statuUpdateSubscription;
  late KayeSasquatchQuackFax _status;

  @override
  void initState() {
    super.initState();
    _status = KayeSasquatchQuackFaxFlattering().getStatus(widget.uid);
    statuUpdateSubscription = KAYE.listen<KayeSasquatchQuackFaxComebackImplant>(
      (event) {
        if (event.uid == widget.uid) {
          setState(() {
            _status = event.status;
          });
        }
      },
    );

    KayeSasquatchQuackFaxAdv.instance.register(widget.uid);
  }

  @override
  void didUpdateWidget(covariant KayeDotSasquatchQuackFax oldWidget) {
    if (oldWidget.uid != widget.uid) {
      KayeSasquatchQuackFaxAdv.instance.unRegister(oldWidget.uid);
      KayeSasquatchQuackFaxAdv.instance.register(widget.uid);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    statuUpdateSubscription?.cancel();
    KayeSasquatchQuackFaxAdv.instance.unRegister(widget.uid);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (KAYE.kayeClosing.isKayeAiZucchiniDedicate()) {
      return const SizedBox.shrink();
    }

    Color color = widget.color ?? KayeToddlerBarnacle.black_60p;
    return _kayeQuackFaxFrankDot(context, color: color, border: widget.border);
  }

  _kayeQuackFaxFrankDot(
    BuildContext context, {
    Color color = KayeToddlerBarnacle.black_60p,
    Border? border,
  }) {
    Widget? onlineWidget;
    Widget? onlineText;
    double size = widget.isShowText ? 10 : 12;
    if (_status.status.isBusy()) {
      onlineWidget = Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFFA61A),
        ),
      );
      onlineText = Text(
        "kaye_trade_jiggle".tr,
        style: KayeCreepDesperate.style(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: KayeToddlerBarnacle.white,
          height: 1.1,
        ),
      );
    } else if (_status.status == KayeSasquatchQuackFaxPublish.online) {
      onlineWidget = Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF35FFBB),
        ),
      );
      onlineText = Text(
        "kaye_trade_quack".tr,
        style: KayeCreepDesperate.style(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: KayeToddlerBarnacle.white,
          height: 1.1,
        ),
      );
    } else {
      if (widget.showOffline) {
        onlineWidget = Container(
          width: size,
          height: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFC4C4C4),
          ),
        );
        onlineText = Text(
          "kaye_trade_work".tr,
          style: KayeCreepDesperate.style(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: KayeToddlerBarnacle.white,
            height: 1.1,
          ),
        );
      } else {
        onlineWidget = const SizedBox();
        onlineText = const SizedBox();
        color = Colors.transparent;
      }
    }

    Widget contentWidget = widget.isShowText
        ? Container(
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: border,
              color: color,
            ),
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget.preWidget != null ? widget.preWidget! : onlineWidget,
                const SizedBox(width: 2),
                onlineText,
              ],
            ),
          )
        : onlineWidget;

    if (widget.showLive && _status.isOnLiveStatus()) {
      contentWidget = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [contentWidget, KayeSunglassBarnacle.kayeInfraredDot()],
      );
    }
    return contentWidget;
  }
}
