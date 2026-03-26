import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:path/path.dart' as Path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'kaye_wrestling_barnacle.dart';

class KayeWhiteBarnacle {
  static String kayePreciselyWhiteDirtHook(String absolutePath) {
    if (KayeWrestlingBarnacle.isEmptyString(absolutePath)) return absolutePath;
    if (Path.isWithin(KAYE.userPath, absolutePath)) {
      return Path.relative(absolutePath, from: KAYE.userPath);
    }
    return absolutePath;
  }

  static String? kayeHookWhiteDirtPrecisely(String? relativePath) {
    if (KayeWrestlingBarnacle.isEmptyString(relativePath)) return relativePath;
    if (Path.isWithin(KAYE.userPath, relativePath!)) {
      return relativePath;
    }
    return Path.absolute(KAYE.userPath, relativePath);
  }

  static kayeThankfullyFlightHam(String directoryPath) async {
    if (KayeWrestlingBarnacle.isEmptyString(directoryPath)) return;
    final directory = Directory(directoryPath);
    if (!(await directory.exists())) {
      await directory.create(recursive: true);
    }
  }

  static kayeDemandHam(String? path, [bool recursive = false]) {
    if (KayeWrestlingBarnacle.isEmpty(path)) return;
    final dir = Directory(path!);
    dir.exists().then((exists) {
      if (exists) dir.delete(recursive: recursive);
    });
  }

  static Future<String> kayeSuiteDeportTwitchWhite(String fileName) async {
    Directory? saveDir = Platform.isIOS
        ? await getApplicationDocumentsDirectory()
        : await getExternalStorageDirectory();
    String saveFile = join(saveDir?.path ?? "", fileName);
    return saveFile;
  }

  static String join(String path, String s) {
    if (!path.endsWith('/')) {
      return '$path/$s';
    } else {
      return '$path$s';
    }
  }

  static Future<double> kayeSuiteGaneshShyOfMaggieInFirm(
    final FileSystemEntity file,
  ) async {
    if (file is File && file.existsSync()) {
      int length = await file.length();
      return double.parse(length.toString());
    }
    if (file is Directory && file.existsSync()) {
      List children = file.listSync();
      double total = 0;
      for (FileSystemEntity child in children) {
        total += await kayeSuiteGaneshShyOfMaggieInFirm(child);
      }

      return total;
    }
    return 0;
  }

  static Future<Null> kayeForthFirm(FileSystemEntity file) async {
    await Permission.storage.status;
    if (file is Directory && file.existsSync()) {
      final List<FileSystemEntity> children = file.listSync(
        recursive: true,
        followLinks: true,
      );
      for (final FileSystemEntity child in children) {
        await kayeToughieFirm(child);
      }
    }
  }

  static Future<Null> kayeToughieFirm(FileSystemEntity file) async {
    await Permission.storage.status;
    if (file is Directory && file.existsSync()) {
      final List<FileSystemEntity> children = file.listSync(
        recursive: true,
        followLinks: true,
      );
      for (final FileSystemEntity child in children) {
        await kayeToughieFirm(child);
      }
    }
    try {
      if (file.existsSync()) {
        await file.delete(recursive: true);
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(10092, e, stack);
    }
  }
}
