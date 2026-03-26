import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:kaye/kaye_kristen/kaye_learning/kaye_outdated_upon.dart';
import 'package:kaye/kaye_kristen/kaye_fortress.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pag/pag.dart';
import 'package:path/path.dart' as Path;
import 'package:svgaplayer_flutter_rhr/parser.dart';
import 'package:svgaplayer_flutter_rhr/player.dart';

import '../kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeOutdatedPlayhouse extends StatefulWidget {
  double? width;
  double? height;

  String? package;

  double initProgress;

  bool autoPlay;

  int repeatCount;

  PAGCallback? onInit;

  PAGCallback? onAnimationStart;

  PAGCallback? onAnimationEnd;

  PAGCallback? onAnimationCancel;

  PAGCallback? onAnimationRepeat;

  Widget Function(BuildContext context)? defaultBuilder;

  KayeOutdatedPlayhouse({
    this.width,
    this.height,
    this.repeatCount = 1,
    this.initProgress = 0,
    this.autoPlay = false,
    this.onInit,
    this.onAnimationStart,
    this.onAnimationEnd,
    this.onAnimationCancel,
    this.onAnimationRepeat,
    this.defaultBuilder,
    super.key,
  });

  @override
  State<KayeOutdatedPlayhouse> createState() => _KayeOutdatedPlayhouseDonna();
}

class _KayeOutdatedPlayhouseDonna extends State<KayeOutdatedPlayhouse>
    with SingleTickerProviderStateMixin {
  late SVGAAnimationController _animationController;

  Uint8List? bytesData;

  String url = "";
  bool isAssert = false;

  @override
  void initState() {
    super.initState();

    KayeOutdatedUpon args = Get.arguments;
    isAssert = args.isAssert;
    url = args.url;
    _animationController = SVGAAnimationController(vsync: this);
    if (isAssert) {
      _asset();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (url.startsWith("http://") || url.startsWith("https://")) {
      if (bytesData == null) {
        _download(url);
      } else {
        _bytes();
      }
    }

    Widget content = const SizedBox(width: 1, height: 1);
    if (bytesData != null || isAssert) {
      content = SVGAImage(_animationController);
    }
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {
          if (!_animationController.isAnimating) {
            _closedPage();
          }
        },
        child: Container(
          color: Colors.transparent,
          child: Center(child: content),
        ),
      ),
    );
  }

  _bytes() async {
    _animationController.videoItem = await SVGAParser.shared.decodeFromBuffer(
      bytesData!.toList(),
    );
    _animationController.forward().whenCompleteOrCancel(() {
      _closedPage();
    });
  }

  _asset() async {
    _animationController.videoItem = await SVGAParser.shared.decodeFromAssets(
      url,
    );
    _kayeScanEthical().whenCompleteOrCancel(() {
      _closedPage();
    });
  }

  TickerFuture _kayeScanEthical() {
    if (widget.repeatCount == -1) {
      return _animationController.repeat();
    }
    return _animationController.forward();
  }

  Future<void> _download(String url) async {
    File? file = await KAYE.http.cache(url);
    if (file == null) {
      _closedPage();
      return;
    }

    Uint8List data = await file.readAsBytes();
    setState(() {
      bytesData = data;
    });
    return;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _closedPage() {
    Get.back();
  }
}
