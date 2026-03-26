import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pag/pag.dart';
import 'package:path/path.dart' as Path;

class KayeGeographicPlayhouse extends StatefulWidget {
  double? width;
  double? height;

  late String url;

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

  KayeGeographicPlayhouse(
    this.url, {
    this.width,
    this.height,
    this.repeatCount = PAGView.REPEAT_COUNT_DEFAULT,
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
  State<KayeGeographicPlayhouse> createState() =>
      _KayeGeographicPlayhouseDonna();
}

class _KayeGeographicPlayhouseDonna extends State<KayeGeographicPlayhouse> {
  Uint8List? bytesData;

  @override
  Widget build(BuildContext context) {
    if (widget.url.startsWith("http://") || widget.url.startsWith("https://")) {
      if (bytesData == null) {
        _download(widget.url);
      } else {
        return _bytes();
      }
    } else {
      return _asset();
    }

    if (widget.defaultBuilder != null) {
      return widget.defaultBuilder!(context);
    } else {
      return const SizedBox(width: 1, height: 1);
    }
  }

  PAGView _bytes() {
    return PAGView.bytes(
      bytesData,
      width: widget.width,
      height: widget.height,
      autoPlay: widget.autoPlay,
      repeatCount: widget.repeatCount,
      initProgress: widget.initProgress,
      package: widget.package,
      onInit: widget.onInit,
      onAnimationStart: widget.onAnimationStart,
      onAnimationEnd: widget.onAnimationEnd,
      onAnimationCancel: widget.onAnimationCancel,
      onAnimationRepeat: widget.onAnimationRepeat,
      defaultBuilder: widget.defaultBuilder,
      key: widget.key,
    );
  }

  PAGView _asset() {
    return PAGView.asset(
      widget.url,
      width: widget.width,
      height: widget.height,
      autoPlay: widget.autoPlay,
      repeatCount: widget.repeatCount,
      initProgress: widget.initProgress,
      package: widget.package,
      onInit: widget.onInit,
      onAnimationStart: widget.onAnimationStart,
      onAnimationEnd: widget.onAnimationEnd,
      onAnimationCancel: widget.onAnimationCancel,
      onAnimationRepeat: widget.onAnimationRepeat,
      defaultBuilder: widget.defaultBuilder,
      key: widget.key,
    );
  }

  Future<void> _download(String url) async {
    File? file = await KAYE.http.cache(url);
    if (file == null) {
      return;
    }

    Uint8List data = await file.readAsBytes();
    if (mounted) {
      setState(() {
        bytesData = data;
      });
    }
    return;
  }
}
