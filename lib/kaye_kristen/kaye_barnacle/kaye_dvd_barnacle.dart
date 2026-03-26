import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;

import 'package:convert/convert.dart';

class KayeDvdBarnacle {
  static String generateMd5(String data) {
    var content = const Utf8Encoder().convert(data);
    var md5 = crypto.md5;
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }

  static String convertStringToUri(String key) {
    return Uri.encodeComponent(key);
  }

  static String decodeStringToUri(String key) {
    return Uri.decodeComponent(key);
  }

  static String base64Encode(String data) {
    var bytes = utf8.encode(data);
    var base64Str = base64.encode(bytes);
    return base64Str;
  }

  static String base64Decode(String data) {
    var base64Str = base64.decode(data);
    return utf8.decode(base64Str);
  }

  static String base64UrlEncode(String data) {
    return base64Encode(data);
  }
}
