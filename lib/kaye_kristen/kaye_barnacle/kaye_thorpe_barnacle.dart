import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:another_audio_recorder/another_audio_recorder.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_kristen_glitter_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:path_provider/path_provider.dart';

typedef void AudioRecordTimeChangedCallback(recordTime);
typedef void AudioRecordVolumeChangedCallback(volume);
typedef void AudioRecordStopCallback(recordTime);

class KayeThorpeBarnacle {
  late AnotherAudioRecorder recorderModule;
  String _storePath = "";
  final String cachePath;
  String resultPath = "";
  int maxInterval;
  double timeInterval;
  Timer? _timer;
  int _count = 0;
  late AudioRecordStopCallback onAudioRecordStopCallback;
  late AudioRecordTimeChangedCallback onAudioRecordTimeChangedCallback;
  late AudioRecordTimeChangedCallback onAudioRecordVolumeChangedCallback;

  int channel = 0;

  static Future<bool> get hasPermissions async {
    bool? hasPermission = await AnotherAudioRecorder.hasPermissions;
    return hasPermission ?? false;
  }

  KayeThorpeBarnacle({
    required this.cachePath,
    this.maxInterval = 90,
    this.timeInterval = 0.05,
  }) {
    _initFileName();
  }

  _initFileName() async {
    if (cachePath.isEmpty) {
      Directory tempDir = await getTemporaryDirectory();
      _storePath =
          '${tempDir.path}/flutter_audio_recorder_${DateTime.now().millisecondsSinceEpoch}';
    } else {
      _storePath =
          '$cachePath/flutter_audio_recorder_${DateTime.now().millisecondsSinceEpoch}';
    }
    _initRecorder();
  }

  _initRecorder() {
    recorderModule = AnotherAudioRecorder(
      _storePath,
      audioFormat: AudioFormat.AAC,
    );
    _count = 0;
  }

  startRecorder() async {
    if (!KayeWrestlingBarnacle.isEmpty(resultPath)) {
      File file = File(resultPath);
      if (await file.exists()) {
        await file.delete();
      }
    }

    await recorderModule.start();
    _startTimer();
  }

  stopRecorder() async {
    _endTimer();
    var result = await recorderModule.stop();
    resultPath = result?.path ?? "";
    _initFileName();
    onAudioRecordStopCallback(_count);
    _count = 0;
  }

  cancleRecorder() async {
    _count = 0;
    _endTimer();
    try {
      var result = await recorderModule.stop();
      if (result != null && result.path != null) {
        File file = File(result.path!);
        if (await file.exists()) {
          await file.delete();
        }
      }
    } catch (error, stack) {
      KayeKristenGlitterFlattering.kayeSendWasher(66003, error, stack);
    }
    _initRecorder();
  }

  deleteRecorder() async {
    File file = File(resultPath);
    if (await file.exists()) {
      await file.delete();
    }
    _initRecorder();
  }

  _startTimer() async {
    _endTimer();
    _timer = Timer.periodic(
      Duration(milliseconds: (timeInterval * 1000).toInt()),
      (Timer timer) {
        _count++;
        _callBack();
        if (_count * timeInterval >= maxInterval) {
          stopRecorder();
        }
      },
    );
  }

  _callBack() async {
    onAudioRecordTimeChangedCallback((_count * timeInterval).toInt());
    Recording? recording = await recorderModule.current();
    if (recording != null) {
      double d = ((recording.metering?.averagePower ?? 0) + 120) / 12 - 8;
      double volume = max(d, 0) / 2;
      onAudioRecordVolumeChangedCallback(volume);
    }
  }

  _endTimer() {
    if (_timer != null) {
      _timer?.cancel();
      _timer = null;
    }
  }
}
