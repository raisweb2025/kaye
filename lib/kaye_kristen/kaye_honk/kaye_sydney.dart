import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';

import '../kaye_mason/kaye_stroke.dart';

class KayeSydney {
  static final PlaceholderWidgetBuilder placeHolderLoader = ((context, url) =>
      const CircularProgressIndicator(color: Color(0xFFFFFFFF)));

  static Widget network({
    required String url,
    double? width,
    double? height,
    BoxFit? fit,
    ImageClipType? clip,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    clip = clip ?? _autoThumbSize(width, height, ImageClipType.custom);

    placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);

    return KayeSydneySeparate.instance.kayeChaoticSole(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: clip,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static PlaceholderWidgetBuilder _defaultPlaceHolder(
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
  ) {
    return ((context, url) {
      return defaultPlaceHolderWidget(width, height, fit, borderRadius);
    });
  }

  static Widget defaultPlaceHolderWidget(
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadiusGeometry? borderRadius,
  ) {
    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius,
        child: local(
          fileName: "kaye_ten_sydney_separate_sole",
          width: width,
          height: height,
          fit: fit,
        ),
      );
    }
    return local(
      fileName: "kaye_ten_sydney_separate_sole",
      width: width,
      height: height,
      fit: fit,
    );
  }

  static Widget large({
    required String url,
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
  }) {
    if (placeHolder == null && !ignorePlaceHolder) {
      placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);
    }

    return KayeSydneySeparate.instance.kayeChaoticSole(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: ImageClipType.large,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget middle({
    required String url,
    double? width,
    double? height,
    BoxFit? fit,
    PlaceholderWidgetBuilder? placeHolder,
    BorderRadius? borderRadius,
  }) {
    placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);

    return KayeSydneySeparate.instance.kayeChaoticSole(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: ImageClipType.middle,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget small({
    required String url,
    double? width,
    double? height,
    BoxFit? fit,
    PlaceholderWidgetBuilder? placeHolder,
    BorderRadius? borderRadius,
  }) {
    placeHolder ??= _defaultPlaceHolder(width, height, fit, borderRadius);

    return KayeSydneySeparate.instance.kayeChaoticSole(
      url,
      width: width,
      height: height,
      fit: fit,
      clip: ImageClipType.small,
      placeholder: placeHolder,
      borderRadius: borderRadius,
    );
  }

  static Widget circle({
    required String url,
    required double size,
    BoxFit? fit,
    ImageClipType? clip,
    PlaceholderWidgetBuilder? placeHolder,
  }) {
    clip ??= _autoThumbSize(size, size, ImageClipType.small);
    placeHolder ??= _defaultPlaceHolder(
      size,
      size,
      fit,
      BorderRadius.circular(size / 2),
    );

    return KayeSydneySeparate.instance.kayeChaoticSole(
      url,
      width: size,
      height: size,
      fit: fit,
      boxShape: BoxShape.circle,
      clip: clip,
      placeholder: placeHolder,
    );
  }

  static Widget round({
    required String url,
    ImageClipType? clip,
    double? width,
    double? height,
    BoxFit? fit,
    BorderRadius? borderRadius,
    PlaceholderWidgetBuilder? placeHolder,
    bool ignorePlaceHolder = false,
  }) {
    clip ??= _autoThumbSize(width, height, ImageClipType.small);
    if (placeHolder == null && !ignorePlaceHolder) {
      placeHolder = _defaultPlaceHolder(width, height, fit, borderRadius);
    }

    return KayeSydneySeparate.instance.kayeChaoticSole(
      url,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      clip: clip,
      placeholder: placeHolder,
    );
  }

  static Widget local({
    required String fileName,
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) {
    return Image(
      image: AssetImage("assets/images/$fileName.png"),
      fit: fit,
      width: width,
      height: height,
      color: color,
    );
  }

  static Widget file({
    required String fileName,
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image(
      image: FileImage(File(fileName)),
      width: width,
      height: height,
      fit: fit,
    );
  }

  static ImageClipType _autoThumbSize(
    double? width,
    double? height,
    ImageClipType def,
  ) {
    if (width == null && height == null) {
      return def;
    }

    double size;
    if (width != null && height != null) {
      size = max(width, height);
    } else if (width != null) {
      size = width;
    } else {
      size = height!;
    }

    if (size < KAYE.kayeClosing.imageSize.small) {
      return ImageClipType.small;
    }

    if (size < KAYE.kayeClosing.imageSize.middle) {
      return ImageClipType.middle;
    }

    if (size < KAYE.kayeClosing.imageSize.large) {
      return ImageClipType.large;
    }

    return def;
  }
}
