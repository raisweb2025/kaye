import 'dart:async';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_barnacle/kaye_thorpe_barnacle.dart';
import 'kaye_sydney.dart';
import '../kaye_classy/kaye_hand.dart';

enum ChatInputVoiceRecordState { none, recording, recordingOnDelete }

class KayeLeadBettyCopulate extends StatefulWidget {
  final ValueChanged<String> onVoiceRecord;
  final String cachePath;

  const KayeLeadBettyCopulate({
    super.key,
    required this.onVoiceRecord,
    required this.cachePath,
  });

  @override
  _KayeLeadBettyCopulateDonna createState() => _KayeLeadBettyCopulateDonna();
}

class _KayeLeadBettyCopulateDonna extends State<KayeLeadBettyCopulate> {
  ChatInputVoiceRecordState _recordState = ChatInputVoiceRecordState.none;

  Timer? _timer;
  double _volume = 0;
  final GlobalKey<_VoiceRecordAnimationState> _voiceRecordAnimationKey =
      GlobalKey();
  late KayeThorpeBarnacle _recorder;

  @override
  void dispose() {
    _endTimer();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _recorder = KayeThorpeBarnacle(cachePath: widget.cachePath);
    _recorder.onAudioRecordVolumeChangedCallback = (volume) {
      _volume = volume;
    };
    _recorder.onAudioRecordStopCallback = (time) {
      _endTimer();
    };
    _recorder.onAudioRecordTimeChangedCallback = (time) {};
    checkMikePhonePermission();
  }

  _startTimer() {
    _endTimer();
    _timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
      _voiceRecordAnimationKey.currentState?.updateVolumeList(_volume);
    });
  }

  _endTimer() {
    if (_timer != null && _timer!.isActive) {
      _timer!.cancel();
      _timer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    String recordTips;
    switch (_recordState) {
      case ChatInputVoiceRecordState.recording:
        recordTips = "kaye_trade_advertise_to_genitals".tr; //Release to send
        break;
      case ChatInputVoiceRecordState.recordingOnDelete:
        recordTips = "kaye_trade_advertise_to_bros".tr; //Release to cancel
        break;
      default:
        recordTips = "kaye_trade_ego_to_gerbil".tr; //Press and hold to Speak
        break;
    }

    final MediaQueryData deviceData = MediaQuery.of(context);
    final rightSpace = (deviceData.size.width - 100.0) / 2;
    final buttonSpace = (rightSpace - 72.0) / 2;
    final GlobalKey _deleteButtonKey = GlobalKey();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 30.0),
        Text(
          recordTips,
          style: KayeCreepDesperate.style(
            color: KayeToddlerBarnacle.white,
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10.0),
        VoiceRecordAnimation(key: _voiceRecordAnimationKey),
        const SizedBox(height: 20.0),
        Row(
          children: <Widget>[
            SizedBox(width: buttonSpace),
            Visibility(
              visible:
                  _recordState == ChatInputVoiceRecordState.recording ||
                  _recordState == ChatInputVoiceRecordState.recordingOnDelete,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: CupertinoButton(
                key: _deleteButtonKey,
                padding: EdgeInsets.zero,
                child: Container(
                  width: 72.0,
                  height: 72.0,
                  decoration: BoxDecoration(
                    color:
                        _recordState ==
                            ChatInputVoiceRecordState.recordingOnDelete
                        ? KayeToddlerBarnacle.color_ff4d4d
                        : KayeToddlerBarnacle.transparent,
                    borderRadius: BorderRadius.circular(36.0),
                  ),
                  child: Center(
                    child: KayeSydney.local(
                      fileName: "kaye_ten_betty_locket",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: buttonSpace),
            GestureDetector(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: _recordState == ChatInputVoiceRecordState.none
                      ? KayeToddlerBarnacle.white_10p
                      : null,
                  border: _recordState == ChatInputVoiceRecordState.none
                      ? Border.all(
                          color: KayeToddlerBarnacle.white_20p,
                          width: 1,
                        )
                      : null,
                  gradient: _recordState == ChatInputVoiceRecordState.none
                      ? null
                      : const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFB955), Color(0xFFCE4400)],
                        ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                alignment: Alignment.center,
                child: KayeSydney.local(
                  fileName: _recordState == ChatInputVoiceRecordState.none
                      ? "kaye_ten_betty_on_interface"
                      : "kaye_ten_betty_eagle_interface",
                  width: 36,
                  height: 36,
                ),
              ),
              onLongPressStart: (details) {
                startRecord();
              },
              onLongPressEnd: (details) {
                _recordEnd();
              },
              onLongPressUp: () {
                _setRecordState(ChatInputVoiceRecordState.none);
              },
              onLongPressMoveUpdate: (details) {
                RenderBox? box =
                    _deleteButtonKey.currentContext?.findRenderObject()
                        as RenderBox;
                Offset offset = box.localToGlobal(Offset.zero);
                Size? size = box.size;
                if (details.globalPosition.dx > offset.dx &&
                    details.globalPosition.dx < offset.dx + size.width &&
                    details.globalPosition.dy > offset.dy &&
                    details.globalPosition.dy < offset.dy + size.height) {
                  _setRecordState(ChatInputVoiceRecordState.recordingOnDelete);
                } else {
                  _setRecordState(ChatInputVoiceRecordState.recording);
                }
              },
            ),
            SizedBox(width: rightSpace),
          ],
        ),
      ],
    );
  }

  _recordEnd() async {
    _endTimer();
    if (_recordState == ChatInputVoiceRecordState.recordingOnDelete) {
      await _recorder.cancleRecorder();
    }
    if (_recordState == ChatInputVoiceRecordState.recording) {
      await _recorder.stopRecorder();
      widget.onVoiceRecord(_recorder.resultPath);
    }
    _setRecordState(ChatInputVoiceRecordState.none);

    _voiceRecordAnimationKey.currentState?.initVolumeListState();
  }

  void _setRecordState(ChatInputVoiceRecordState state) {
    if (_recordState == state) return;
    _recordState = state;
    setState(() {});
  }

  Future<void> checkMikePhonePermission() async {
    PermissionStatus status = await Permission.microphone.request();
    if (status == PermissionStatus.granted) {
      KayeKristenGlitterFlattering.kayeWavePlop(3, 1);
    } else {
      KayeKristenGlitterFlattering.kayeWavePlop(3, 0);
      Fluttertoast.showToast(msg: "kaye_trade_dwell_corpse_plop".tr);
    }
  }

  void startRecord() {
    _setRecordState(ChatInputVoiceRecordState.recording);
    _recorder.startRecorder();
    _startTimer();
  }
}

class VoiceRecordAnimation extends StatefulWidget {
  const VoiceRecordAnimation({required Key key}) : super(key: key);

  @override
  _VoiceRecordAnimationState createState() => _VoiceRecordAnimationState();
}

class _VoiceRecordAnimationState extends State<VoiceRecordAnimation> {
  List<Widget> lineWidgets = <Widget>[];
  List volumeList = [];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initVolumeListState();
  }

  void initVolumeListState() {
    volumeList.clear();
    for (var i = 0; i < 29; i++) {
      volumeList.add(0.toDouble());
    }
    _setVolumeList(0);
  }

  void updateVolumeList(double volume) {
    _setVolumeList(volume);
    setState(() {});
  }

  void _setVolumeList(double volume) {
    for (var i = 0; i < 15; i++) {
      if (i == 14) {
        volumeList[i] = volume;
      } else {
        double temp = volumeList[i + 1];
        volumeList[i] = temp;
        volumeList[volumeList.length - 1 - i] = temp;
      }
    }

    lineWidgets.clear();
    for (var i = 0; i < volumeList.length; i++) {
      lineWidgets.add(
        Container(
          width: 2,
          height: 8.0 + volumeList[i] * 20,
          color: KayeToddlerBarnacle.black_10p,
        ),
      );
      if (i != volumeList.length - 1) {
        lineWidgets.add(const SizedBox(width: 2));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 114,
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: lineWidgets,
      ),
    );
  }
}
