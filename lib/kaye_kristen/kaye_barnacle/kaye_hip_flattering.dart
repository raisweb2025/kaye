import 'dart:async';
import 'dart:io';

import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_toothpick_archimedes.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:qiniu_sdk_base/qiniu_sdk_base.dart';

import '../kaye_goggles/kaye_goggles_hip_lava.dart';
import '../kaye_goggles/kaye_hip_whatever_tie.dart';
import '../kaye_mason/kaye_stroke.dart';
import 'kaye_wrestling_barnacle.dart';

enum UploadType { image, video, voice, log }

enum UploadStatus { success, error, progress }

class UploadEvent {
  KayeHipWhateverTie? result;
  String? errorMsg;
  UploadStatus status;
  int progress;

  UploadEvent(this.status, {this.progress = 0, this.result});
}

class KayeHipFlattering {
  static final KayeHipFlattering _instance = KayeHipFlattering._();

  static KayeHipFlattering get instance => _instance;

  KayeHipFlattering._();

  final Storage storage = Storage();

  Stream<UploadEvent> upload(
    String filePath,
    UploadType type, {
    bool showLoadingUI = false,
  }) {
    StreamController<UploadEvent> controller = StreamController<UploadEvent>();
    var event = UploadEvent(UploadStatus.progress);
    controller.add(event);

    if (showLoadingUI) {
      EasyLoading.show();
    }
    _getToken(type).then((token) {
      if (KayeWrestlingBarnacle.isEmpty(token)) {
        if (showLoadingUI) {
          EasyLoading.dismiss();
        }
        event.status = UploadStatus.error;
        event.errorMsg = "kaye_trade_hip_carefully".tr;
        controller.add(event);
        controller.close();
        return;
      }
      var putController = PutController();
      putController.addStatusListener((status) {});
      putController.addProgressListener((percent) {
        event.progress = (percent * 100).toInt();
        controller.add(event);
      });
      final putOptions = PutOptions(controller: putController);
      storage
          .putFile(File(filePath), token!, options: putOptions)
          .then((response) {
            if (showLoadingUI) {
              EasyLoading.dismiss();
            }
            KayeGogglesHipLava uploadJsonResp = KayeGogglesHipLava.fromJson(
              response.rawData,
            );
            if (uploadJsonResp.code == 0) {
              event.status = UploadStatus.success;
              event.result = uploadJsonResp.data;
              controller.add(event);
              controller.close();
            } else {
              event.status = UploadStatus.error;
              event.errorMsg = "${uploadJsonResp.code}->${uploadJsonResp.msg}";
              controller.add(event);
              controller.close();
            }
          })
          .catchError((e) {
            if (showLoadingUI) {
              EasyLoading.dismiss();
            }
            event.status = UploadStatus.error;
            event.errorMsg = e.toString();
            controller.add(event);
            controller.close();
          });
    });
    return controller.stream;
  }

  Future<String?> _getToken(UploadType type) async {
    String? token = _getTokenByType(type);
    if (!KayeWrestlingBarnacle.isEmpty(token) &&
        KAYE.kayeAmongst.getUploadTokenExpireTime() >
            DateTime.now().millisecondsSinceEpoch) {
      return token;
    } else {
      KayeGogglesToothpickArchimedes? resp = await KAYE.http.rest(
        1016,
        {},
        (p0) => KayeGogglesToothpickArchimedes.fromJson(p0),
        showLoadingUI: false,
        autoToastOnError: true,
      );
      if (resp != null) {
        KAYE.kayeAmongst.setUploadImageToken(resp.imageToken!);
        KAYE.kayeAmongst.setUploadVideoToken(resp.videoToken!);
        KAYE.kayeAmongst.setUploadVoiceToken(resp.voiceToken!);
        KAYE.kayeAmongst.setUploadLogToken(resp.logToken!);
        KAYE.kayeAmongst.setUploadTokenExpireTime(resp.expireTime!);
      }
      return _getTokenByType(type);
    }
  }

  String? _getTokenByType(UploadType type) {
    String? token;
    switch (type) {
      case UploadType.image:
        token = KAYE.kayeAmongst.getUploadImageToken();
        break;
      case UploadType.video:
        token = KAYE.kayeAmongst.getUploadVideoToken();
        break;
      case UploadType.voice:
        token = KAYE.kayeAmongst.getUploadVoiceToken();
        break;
      case UploadType.log:
        token = KAYE.kayeAmongst.getUploadLogToken();
        break;
    }
    return token;
  }
}
