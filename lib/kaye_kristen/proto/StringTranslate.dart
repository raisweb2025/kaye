import 'dart:math';

class StringTranslate {
  static String z2e(String z) {
    String appName = "bfuni";
    List<String> result = [];
    for (int i = 0; i < z.length; i++) {
      int index = Random().nextInt(appName.length);
      if (i % 2 == 0) {
        result.add(appName[index]);
      }
      result.add(z[i]);
    }
    return result.join();
  }

  static String e2z(String? e) {
    if (e == null || e.isEmpty) {
      return "";
    }
    List<String> result = [];
    for (int i = 0; i < e.length; i++) {
      if (i % 3 != 0) {
        result.add(e[i]);
      }
    }

    return result.join();
  }
}
