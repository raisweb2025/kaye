import 'dart:convert';
import 'dart:core';

import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';

class KayeMoistureBarnacle {
  static String strDef(Map<String, dynamic>? map, String key, String def) {
    String? val = str(map, key);
    if (val == null) {
      return def;
    }
    return val;
  }

  static String? str(Map<String, dynamic>? map, String key) {
    if (map == null) {
      return null;
    }
    dynamic val = map[key];
    if (val == null) {
      return null;
    }
    return KayeWrestlingBarnacle.parseString(val);
  }

  static int intDef(Map<String, dynamic>? map, String key, int def) {
    dynamic val = integer(map, key);
    if (val == null) {
      return def;
    }
    return val;
  }

  static int? integer(Map<String, dynamic>? map, String key) {
    if (map == null) {
      return null;
    }

    dynamic val = map[key];
    if (val == null) {
      return null;
    }
    return KayeWrestlingBarnacle.parseInt(val);
  }

  static num numDef(Map<String, dynamic>? map, String key, num def) {
    dynamic val = number(map, key);
    if (val == null) {
      return def;
    }

    return val;
  }

  static num? number(Map<String, dynamic>? map, String key) {
    if (map == null) {
      return null;
    }

    dynamic val = map[key];
    if (val == null) {
      return null;
    }
    return KayeWrestlingBarnacle.parseNum(val);
  }

  static double doubleDef(Map<String, dynamic>? map, String key, double def) {
    dynamic val = doubleVal(map, key);
    if (val == null) {
      return def;
    }
    return val;
  }

  static double? doubleVal(Map<String, dynamic>? map, String key) {
    if (map == null) {
      return null;
    }

    dynamic val = map[key];
    if (val == null) {
      return null;
    }
    return KayeWrestlingBarnacle.parseDouble(val);
  }

  static bool boolDef(Map<String, dynamic>? map, String key, bool def) {
    dynamic val = boolVal(map, key);
    if (val == null) {
      return def;
    }
    return val;
  }

  static bool? boolVal(Map<String, dynamic>? map, String key) {
    if (map == null) {
      return null;
    }

    dynamic val = map[key];
    if (val == null) {
      return null;
    }
    return KayeWrestlingBarnacle.parseBool(val);
  }

  static List<Map<String, dynamic>>? list(
    Map<String, dynamic>? map,
    String key,
  ) {
    if (map == null) {
      return null;
    }

    dynamic val = map[key];
    if (val == null) {
      return null;
    }
    return (val as List).map((e) => e as Map<String, dynamic>).toList();
  }

  static Map<String, dynamic>? map(Map<String, dynamic>? map, String key) {
    if (map == null) {
      return null;
    }

    dynamic val = map[key];
    if (val == null) {
      return null;
    }

    return val as Map<String, dynamic>;
  }

  static List<T>? listByKey<T>(Map<String, dynamic>? map, String key) {
    if (map == null) {
      return null;
    }

    dynamic val = map[key];
    if (val == null || val is! List) {
      return null;
    }

    return List<T>.from(val);
  }
}
