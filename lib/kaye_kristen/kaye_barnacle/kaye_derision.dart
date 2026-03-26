import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';

class KayeDerision {
  late Encrypter _encrypt;
  final IV _ivAes = IV.fromLength(16);

  KayeDerision(this._encrypt);

  factory KayeDerision.create(String aesSecretKey) {
    Key key = Key.fromUtf8(md5.convert(utf8.encode(aesSecretKey)).toString());
    return KayeDerision(
      Encrypter(AES(key, mode: AESMode.ecb, padding: "PKCS7")),
    );
  }

  String encrypt(String content) {
    return _encrypt.encrypt(content, iv: _ivAes).base64;
  }

  String decrypt(String content) {
    return _encrypt.decrypt(Encrypted.fromBase64(content), iv: _ivAes);
  }
}
