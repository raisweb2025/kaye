import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_attach_order.dart';
import 'package:kaye/kaye_kristen/kaye_delta/kaye_cat_lava.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_derision.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:convert/convert.dart';
import 'package:flutter/foundation.dart';

import '../kaye_advertise.dart';
import 'package:path/path.dart' as Path;

class KayeCat {
  static final KayeDerision _aes = KayeDerision.create(
    KayeAdvertise.kayeFermionDerisionBelgian,
  );

  late GetConnect connect;
  late String signKey;
  late String? sessionId;
  late String? api;
  late Duration timeout;

  KayeCat(this.connect, this.signKey, this.sessionId, this.api, this.timeout);

  factory KayeCat.create(
    String signKey,
    String? sessionId,
    String api,
    String userAgent, {
    timeout = const Duration(seconds: 5),
    followRedirects = true,
    maxRedirects = 5,
    sendUserAgent = true,
    allowAutoSignedCert = false,
    withCredentials = false,
    contentType = 'application/json',
  }) {
    GetConnect connect = GetConnect(
      userAgent: userAgent,
      timeout: timeout,
      followRedirects: followRedirects,
      maxRedirects: maxRedirects,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: 1,
      allowAutoSignedCert: allowAutoSignedCert,
      withCredentials: withCredentials,
    );

    return KayeCat(connect, signKey, sessionId, api, timeout);
  }

  KayeCat setTimeout(int timeout) {
    connect.timeout = Duration(seconds: timeout);
    return this;
  }

  Future<bool> submit(
    int apiId,
    Map<String, dynamic>? params, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
  }) async {
    bool? ret = await _rest<bool>(
      apiId,
      params,
      (p) {
        return true;
      },
      showLoadingUI: showLoadingUI,
      autoToastOnError: autoToastOnError,
      timeout: timeout,
    );

    if (ret == null) {
      return false;
    }
    return ret;
  }

  Future<R?> rest<R>(
    int apiId,
    Map<String, dynamic>? params,
    R Function(Map<String, dynamic>) decoder, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
  }) async {
    return _rest<R>(
      apiId,
      params,
      (p) {
        if (p == null || p.isEmpty) {
          return null;
        }
        return decoder.call(p);
      },
      showLoadingUI: showLoadingUI,
      autoToastOnError: autoToastOnError,
      timeout: timeout,
    );
  }

  Future<R?> _rest<R>(
    int apiId,
    Map<String, dynamic>? params,
    R? Function(Map<String, dynamic>?) decoder, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
  }) async {
    int startTime = DateTime.now().millisecondsSinceEpoch;
    try {
      KayeCatLava resp = await _req(
        apiId,
        params,
        showLoadingUI: showLoadingUI,
        autoToastOnError: autoToastOnError,
        startTime: startTime,
      );
      if (resp.hasError) {
        return null;
      }

      httpRespond(
        apiId.toString(),
        startTime: startTime,
        resultCode: resp.httpCode,
        decryptionTime: resp.decryptionTime,
      );

      if (resp.isSessionInvalid) {
        KAYE.fire(KayeAttachOrder(KayeAttachAthenaeum.LOGOUT));
        return null;
      }

      if (!resp.isSuccess) {
        return null;
      }

      return decoder.call(resp.data);
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(20001, e, stack);

      httpRespond(apiId.toString(), startTime: startTime, e: e, s: stack);
      return null;
    }
  }

  Future<KayeCatLava> _req(
    int apiId,
    Map<String, dynamic>? params, {
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    Duration? timeout,
    int startTime = 0,
  }) async {
    try {
      Map<String, dynamic> form = _sign(apiId, params);
      String reqJson = json.encode(form);
      String reqBody = _aes.encrypt(reqJson);

      Response<dynamic> resp = await post(
        api,
        reqBody,
        showLoadingUI: showLoadingUI,
        timeout: timeout,
      );

      if (resp.hasError) {
        if (autoToastOnError) {
          Fluttertoast.showToast(
            msg:
                "${KayeAdvertise.kayeDutchDeltaMarchJustice.tr} \n1-$apiId-${KayeAdvertise.kayeKristenDedicate}-${resp.statusCode}-${resp.statusText}",
          );
        }
        return KayeCatLava(false, -1);
      }

      if (!resp.isOk) {
        if (autoToastOnError) {
          Fluttertoast.showToast(
            msg:
                "${KayeAdvertise.kayeDutchDeltaMarchJustice.tr} \n2-$apiId-${KayeAdvertise.kayeKristenDedicate}-${resp.statusCode}-${resp.statusText}",
          );
        }
        return KayeCatLava(
          false,
          resp.statusCode != null ? resp.statusCode! : -1,
        );
      }

      int decryptionTime = 0;

      Map<String, dynamic> bodyMap;
      dynamic body = resp.body;
      if (body == null) {
        if (autoToastOnError) {
          Fluttertoast.showToast(
            msg:
                "${KayeAdvertise.kayeDutchDeltaMarchJustice.tr} \n3-$apiId-${KayeAdvertise.kayeKristenDedicate}",
          );
        }
        return KayeCatLava(
          false,
          resp.statusCode != null ? resp.statusCode! : -1,
        );
      } else if (body is Map) {
        bodyMap = body.cast<String, dynamic>();
      } else {
        int startDecryptionTime = DateTime.now().millisecondsSinceEpoch;
        String jsonString = _aes.decrypt(body as String);
        decryptionTime =
            DateTime.now().millisecondsSinceEpoch - startDecryptionTime;
        bodyMap = json.decode(jsonString);
      }

      KayeCatLava rsp = KayeCatLava.parse(bodyMap);
      if (autoToastOnError &&
          !rsp.isSuccess &&
          rsp.msg != null &&
          rsp.msg!.isNotEmpty) {
        Fluttertoast.showToast(msg: "${rsp.msg} - $apiId");
      }

      rsp.decryptionTime = decryptionTime;
      return rsp;
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(20002, e, stack);
      if (autoToastOnError) {
        Fluttertoast.showToast(
          msg:
              "${KayeAdvertise.kayeDutchDeltaMarchJustice.tr} \n4-$apiId-${KayeAdvertise.kayeKristenDedicate}",
        );
      }

      httpRespond(apiId.toString(), startTime: startTime, e: e, s: stack);

      return KayeCatLava(false, -1);
    }
  }

  Future<Response<T>> post<T>(
    String? url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
    bool showLoadingUI = false,
    Duration? timeout,
  }) async {
    if (showLoadingUI) {
      EasyLoading.show();
    }

    try {
      if (timeout != null) {
        connect.timeout = timeout;
      } else {
        connect.timeout = this.timeout;
      }

      return await connect.post<T>(
        url,
        body,
        contentType: contentType,
        headers: headers,
        query: query,
        decoder: decoder,
        uploadProgress: uploadProgress,
      );
    } finally {
      if (showLoadingUI) {
        EasyLoading.dismiss();
      }
    }
  }

  Map<String, dynamic> _sign(int apiId, Map<String, dynamic>? params) {
    Map<String, dynamic> form = {};

    if (params != null) {
      form.addAll(params);
    }

    form['id__'] = apiId;
    form['ts'] = DateTime.now().millisecondsSinceEpoch;
    if (sessionId != null) {
      form['session'] = sessionId!;
    }

    List<String> keys = <String>[];
    keys.addAll(form.keys);
    keys.sort((a, b) => b.compareTo(a));

    var buffer = StringBuffer();
    for (final elem in keys) {
      dynamic val = form[elem];
      String str = '';
      if (val is String) {
        str = val;
      } else {
        str = val.toString();
      }
      buffer.write(str);
      buffer.write(":");
    }
    buffer.write(signKey);
    form['sig'] = hex.encode(
      md5.convert(Utf8Encoder().convert(buffer.toString())).bytes,
    );
    return form;
  }

  Future<File?> cache(
    String url, {
    String method = 'get',
    Map<String, dynamic>? header,
  }) async {
    String? filePath;
    try {
      Uri uri = Uri.parse(url);
      filePath = Path.join(
        KAYE.filePath,
        md5.convert(utf8.encode(url)).toString(),
      );
      String ext = Path.extension(uri.path);
      if (ext.isNotEmpty) {
        filePath = filePath + ext;
      }

      File file = File(filePath);

      if (await file.exists()) {
        return file;
      }

      if (await download(url, file.path)) {
        return file;
      }
    } catch (e, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(20003, e, stack);

      httpRespond(url, e: e, s: stack);
    }

    return null;
  }

  Future<bool> download(
    String url,
    String output, {
    String method = 'get',
    Map<String, dynamic>? header,
  }) async {
    int startTime = DateTime.now().millisecondsSinceEpoch;
    final httpClient = HttpClient();
    httpClient.connectionTimeout = const Duration(seconds: 5);

    try {
      HttpClientRequest request;
      switch (method.toLowerCase()) {
        case 'get':
          request = await httpClient.getUrl(Uri.parse(url));
          break;
        case 'post':
          request = await httpClient.postUrl(Uri.parse(url));
          break;
        default:
          request = await httpClient.getUrl(Uri.parse(url));
          break;
      }

      header?.forEach((key, value) => request.headers.add(key, value));

      final HttpClientResponse response = await request.close();

      File tmpFile = File(
        "${output}_${DateTime.now().millisecond}_${Random().nextInt(100000)}",
      );
      if (await _consolidateHttpClientResponseBytes(response, tmpFile)) {
        await tmpFile.rename(output);
      }

      httpRespond(url, startTime: startTime);
      return true;
    } catch (error, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(20004, e, stack);

      httpRespond(url, startTime: startTime, e: e, s: stack);
      return false;
    } finally {
      httpClient.close(force: true);
    }
  }

  Future<bool> _consolidateHttpClientResponseBytes(
    HttpClientResponse response,
    File output,
  ) {
    final Completer<bool> completer = Completer<bool>.sync();

    IOSink sink = output.openWrite();

    late final StreamSubscription<List<int>> subscription;
    subscription = response.listen(
      (List<int> chunk) {
        try {
          sink.add(chunk);
        } catch (error, stackTrace) {
          KayeKristenGlitterFlattering.kayeSendWasher(20005, e, stackTrace);
          httpRespond(output.uri.toString(), e: error, s: stackTrace);
          completer.completeError(error, stackTrace);
          subscription.cancel();
          return;
        }
      },
      onDone: () {
        sink.close();
        completer.complete(true);
      },
      onError: completer.completeError,
      cancelOnError: true,
    );

    return completer.future;
  }

  void httpRespond(
    String url, {
    int? startTime,
    int resultCode = 200,
    int decryptionTime = 0,
    Object? e,
    StackTrace? s,
  }) {
    int durationTime = 0;
    if (startTime != null) {
      durationTime = DateTime.now().millisecondsSinceEpoch - startTime;
    }
    KayeKristenGlitterFlattering.kayeCatEccentric(
      url,
      resultCode: resultCode,
      decryptionTime: decryptionTime,
      durationTime: durationTime,
      e: e,
      s: s,
    );
  }

  void dispose() {
    connect.dispose();
  }
}
