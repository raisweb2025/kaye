import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_moisture_barnacle.dart';

class KayeCatLava {
  bool httpSuccess = false;

  int httpCode = -1;

  int? code;

  String? msg;

  dynamic data;

  int decryptionTime = 0;

  KayeCatLava(this.httpSuccess, this.httpCode);

  factory KayeCatLava.parse(Map<String, dynamic> resp) {
    KayeCatLava r = KayeCatLava(true, 200);

    r.code = KayeMoistureBarnacle.intDef(resp, "code", -1);
    r.msg = KayeMoistureBarnacle.str(resp, "msg");
    r.data = resp['data'];

    return r;
  }

  get hasError {
    return !httpSuccess;
  }

  get isSuccess {
    return code == 0;
  }

  get isSessionInvalid {
    return code == 20 || code == 22;
  }
}
