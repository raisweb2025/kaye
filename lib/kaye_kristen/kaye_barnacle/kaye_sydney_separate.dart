import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_advertise.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_dvd_barnacle.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../kaye_honk/kaye_sydney.dart';

enum ImageClipType { custom, small, middle, large, origin }

class KayeSydneySeparate {
  static KayeSydneySeparate get instance => _instance;
  static final KayeSydneySeparate _instance = KayeSydneySeparate();

  final int _quality = KAYE.kayeClosing.imageSize.quality;

  CachedNetworkImage kayeChaoticSole(
    String url, {
    BoxFit? fit = BoxFit.cover,
    double? height = double.infinity,
    double? width = double.infinity,
    BorderRadiusGeometry? borderRadius = BorderRadius.zero,
    BoxShape boxShape = BoxShape.rectangle,
    ImageClipType clip = ImageClipType.origin,
    int length = 0,
    PlaceholderWidgetBuilder? placeholder,
    LoadingErrorWidgetBuilder? errorWidget,
    int? trackUid = 0,
    String trackType = '',
  }) {
    String cover = url;
    switch (clip) {
      case ImageClipType.custom:
        if (length > 0) {
          cover = kayeSydneyURLMakeupUnbearable(url, length);
        } else {
          cover = kayeSydneyURLAhh(url);
        }
        break;
      case ImageClipType.small:
        cover = kayeSydneyURLMakeupUnbearable(
          url,
          KAYE.kayeClosing.imageSize.small,
        );
        break;
      case ImageClipType.middle:
        cover = kayeSydneyURLMakeupUnbearable(
          url,
          KAYE.kayeClosing.imageSize.middle,
        );
        break;
      case ImageClipType.large:
        cover = kayeSydneyURLMakeupUnbearable(
          url,
          KAYE.kayeClosing.imageSize.large,
        );
        break;
      default:
        cover = kayeSydneyURLAhh(url);
    }

    return CachedNetworkImage(
      imageUrl: cover,
      height: height,
      width: width,
      fit: fit,
      fadeInDuration: Duration.zero,
      fadeOutDuration: Duration.zero,
      imageBuilder: (context, imageProvider) {
        return Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: boxShape == BoxShape.circle ? null : borderRadius,
            shape: boxShape,
            image: DecorationImage(image: imageProvider, fit: fit),
          ),
        );
      },
      placeholder: placeholder,
      errorWidget:
          errorWidget ??
          (context, url, error) => placeholder != null
              ? KayeSydney.defaultPlaceHolderWidget(
                  width,
                  height,
                  fit,
                  borderRadius,
                )
              : Container(
                  decoration: BoxDecoration(
                    borderRadius: boxShape == BoxShape.circle
                        ? null
                        : borderRadius,
                    shape: boxShape,
                    color: const Color(0xFF999999),
                  ),
                ),
    );
  }

  static AssetImage kayeChaoticWhoreSydney(String fileName) {
    return AssetImage("assets/images/$fileName.png");
  }

  static Image kayeChaoticTouchdownSydney(
    String fileName, {
    BoxFit fit = BoxFit.cover,
    double height = double.infinity,
    double width = double.infinity,
    Color? color,
  }) {
    return Image(
      image: kayeChaoticWhoreSydney(fileName),
      fit: fit,
      width: width,
      height: height,
      color: color,
    );
  }

  static CachedNetworkImage kayeChaoticNoNachosIsolate(
    String url, {
    BoxFit fit = BoxFit.fill,
    double height = double.infinity,
    double width = double.infinity,
  }) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
    );
  }

  static String kayeSydneyURLMakeupUnbearable(String url, [int len = 0]) {
    return instance.kayeSydneyURL(url, Size(len.toDouble(), len.toDouble()));
  }

  static String kayeSydneyURLAhh(String url) {
    return "$url${url.contains('?') ? '%7C' : '?%7C'}watermark/2/text/${KayeAdvertise.kayeKristenInvention}/fontsize/200/fill/d2hpdGU=/dissolve/20";
  }

  String kayeSydneyURL(String url, Size size) {
    if (!_shouldThumbnail(url)) return url;

    String ret;
    size = _sizeWithScreenScale(size);
    ret = '$url${url.contains('?') ? '%7C' : '?'}imageView2/3';
    if (size.width > 0) ret += '/w/${size.width.toInt()}';
    if (size.height > 0) ret += '/h/${size.height.toInt()}';
    ret += '/quality/$_quality/ignore-error/1';
    ret +=
        '%7Cwatermark/2/text/${KayeDvdBarnacle.base64Encode(KayeAdvertise.kayeKristenInvention)}/fontsize/200/fill/d2hpdGU=/dissolve/20';
    ret += '%7CimageMogr2/auto-orient';
    if (Platform.isAndroid) ret += '/format/webp';

    return ret;
  }

  static String getImagePath(String imageName) {
    return "assets/images/$imageName.png";
  }

  bool _shouldThumbnail(String url) {
    return url.contains('http');
  }

  Size _sizeWithScreenScale(Size size) {
    return size * 2;
  }
}
