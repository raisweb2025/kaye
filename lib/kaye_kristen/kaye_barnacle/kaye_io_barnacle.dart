import 'dart:io';
import 'dart:ui';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';

class KayeIOBarnacle {
  static Future<double> getTotalSizeOfFilesInDir(
    final FileSystemEntity file,
  ) async {
    if (file is File && file.existsSync()) {
      int length = await file.length();
      return double.parse(length.toString());
    }
    if (file is Directory && file.existsSync()) {
      List children = file.listSync();
      double total = 0;
      if (children.isNotEmpty)
        for (FileSystemEntity child in children) {
          total += await getTotalSizeOfFilesInDir(child);
        }

      return total;
    }
    return 0;
  }

  static Future<Null> requestPermission(FileSystemEntity file) async {
    PermissionStatus status = await Permission.storage.status;
    await delDir(file);
  }

  static Future<Null> delDir(FileSystemEntity file) async {
    if (file is Directory && file.existsSync()) {
      final List<FileSystemEntity> children = file.listSync(
        recursive: true,
        followLinks: true,
      );
      for (final FileSystemEntity child in children) {
        await delDir(child);
      }
    }
    try {
      if (file.existsSync()) {
        await file.delete(recursive: true);
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10088, e, stack);
    }
  }

  static makeSureDirectory(String directoryPath) async {
    if (KayeWrestlingBarnacle.isEmptyString(directoryPath)) return;
    final directory = Directory(directoryPath);
    if (!(await directory.exists())) {
      await directory.create(recursive: true);
    }
  }

  static String? getParamFromUrl(String url, String paramName) {
    try {
      return Uri.parse(url).queryParameters[paramName];
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10089, e, stack);
    }
    return null;
  }

  static String getLang() {
    Locale? ret;
    try {
      ret = Get.deviceLocale;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10090, e, stack);
      ret = window.locale;
    }
    return '${ret?.countryCode}_${ret?.languageCode}';
  }

  static bool isARLanguage() {
    return getLanguageCode() == 'ar' || getLanguageCode() == "ur";
  }

  static bool isIDLanguage() {
    return getLanguageCode() == 'id';
  }

  static String? getLanguageCode() {
    Locale? ret;
    try {
      ret = Get.deviceLocale;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10091, e, stack);
      ret = window.locale;
    }
    return ret?.languageCode.toLowerCase();
  }
}
