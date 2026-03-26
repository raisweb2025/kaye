import 'dart:io';

import 'package:audioplayers/audioplayers.dart';

class KayeCluelessSurvivalFlattering {
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  String? audioUrl;

  static KayeCluelessSurvivalFlattering? _instance;

  static KayeCluelessSurvivalFlattering get instance => _getInstance();

  factory KayeCluelessSurvivalFlattering() => _getInstance();

  KayeCluelessSurvivalFlattering._internal() {
    audioPlayer = AudioPlayer();
    audioCache = AudioCache();
  }

  static KayeCluelessSurvivalFlattering _getInstance() {
    return _instance ??= KayeCluelessSurvivalFlattering._internal();
  }

  Future<void> startPlayFileAudio(File file, {bool loop = false}) async {
    audioUrl = file.path;
    if (loop) {
      audioPlayer.setReleaseMode(ReleaseMode.loop);
    } else {
      audioPlayer.setReleaseMode(ReleaseMode.release);
    }
    await audioPlayer.play(volume: 1, DeviceFileSource(file.path));
  }

  Future<AudioPlayer> startPlayAssertAudio(
    String fileName, {
    bool loop = false,
    double volume = 1,
  }) async {
    AudioPlayer assertPlayer = AudioPlayer();
    if (loop) {
      assertPlayer.setReleaseMode(ReleaseMode.loop);
    } else {
      assertPlayer.setReleaseMode(ReleaseMode.release);
    }
    await assertPlayer.play(volume: volume, AssetSource(fileName));
    return assertPlayer;
  }

  stopPlayAudio() async {
    audioUrl = null;
    await audioPlayer.stop();
  }

  bool isPlaying() {
    return audioPlayer.state == PlayerState.playing;
  }

  cancelPlayAudio() async {
    if (audioPlayer.state == PlayerState.playing) {
      await audioPlayer.pause();
    }
    await stopPlayAudio();
  }

  pausePlayAudio() async {
    await audioPlayer.pause();
  }

  Future<void> resumeAudio() async {
    await audioPlayer.resume();
  }

  destory() {
    cancelPlayAudio();
  }
}
