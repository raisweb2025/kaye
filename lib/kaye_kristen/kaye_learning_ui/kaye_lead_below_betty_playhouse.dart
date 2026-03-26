import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_goggles_betty.dart';
import 'package:kaye/kaye_kristen/kaye_goggles/kaye_luther.dart';
import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_flattering.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_lead_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_dvd_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_sydney_separate.dart';
import 'package:kaye/kaye_kristen/kaye_barnacle/kaye_wrestling_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_clueless_survival_flattering.dart';
import '../kaye_classy/kaye_toddler_barnacle.dart';
import '../kaye_classy/kaye_hand.dart';
import 'kaye_sydney_placebo_increase_dot.dart';

class KayeLeadBelowBettyPlayhouse extends StatefulWidget {
  final KayeLuther snap;
  final String cachePath;

  const KayeLeadBelowBettyPlayhouse({
    Key? key,
    required this.snap,
    required this.cachePath,
  }) : super(key: key);

  @override
  _ChatCellVoiceViewState createState() => _ChatCellVoiceViewState();
}

class _ChatCellVoiceViewState extends State<KayeLeadBelowBettyPlayhouse> {
  int _timeSec = 0;
  int _currentTimeSec = 0;
  bool _isPlaying = false;

  KayeGogglesBetty? get _voice => widget.snap.voice;
  StreamSubscription? _positionSubscription;
  StreamSubscription? _playerStateChangeSubscription;

  @override
  void dispose() {
    _positionSubscription?.cancel();
    _playerStateChangeSubscription?.cancel();
    KayeCluelessSurvivalFlattering.instance.cancelPlayAudio();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _timeSec = _voice?.duration?.toInt() ?? 0;
    _currentTimeSec = _timeSec;

    _positionSubscription = KayeCluelessSurvivalFlattering
        .instance
        .audioPlayer
        .onPositionChanged
        .listen((p) {
          if (isCurrentFile()) {
            setState(() {
              _currentTimeSec = p.inSeconds < 1 ? 1 : p.inSeconds;
            });
          }
        });

    _playerStateChangeSubscription = KayeCluelessSurvivalFlattering
        .instance
        .audioPlayer
        .onPlayerStateChanged
        .listen((event) {
          if (isCurrentFile()) {
            if (event == PlayerState.playing) {
              setState(() {
                _isPlaying = true;
              });
            } else {
              setState(() {
                _isPlaying = false;
              });
            }
          }
        });
  }

  bool isCurrentFile() {
    var mediaUrl = KayeCluelessSurvivalFlattering.instance.audioUrl;
    if (_voice == null) return false;
    if (!KayeWrestlingBarnacle.isEmpty(_voice!.relativePath) &&
        mediaUrl == _voice!.relativePath)
      return true;
    if (!KayeWrestlingBarnacle.isEmpty(_voice!.voiceUrl) &&
        mediaUrl == _voice!.voiceUrl)
      return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Widget tapWidget;
    if (!widget.snap.isMine && widget.snap.isUnread) {
      tapWidget = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[getContainer(), getUnreadRed()],
      );
    } else {
      tapWidget = getContainer();
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        _readAction();
        if (!_isPlaying) {
          if (!KayeWrestlingBarnacle.isEmpty(_voice?.relativePath)) {
            File voiceFile = File(_voice!.relativePath!);
            if (await voiceFile.exists()) {
              KayeCluelessSurvivalFlattering.instance.startPlayFileAudio(
                voiceFile,
              );
              setState(() {
                _isPlaying = true;
              });
              return;
            }
          }

          if (!KayeWrestlingBarnacle.isEmpty(_voice?.voiceUrl)) {
            _downLoadVoice(_voice!.voiceUrl!).then((file) {
              if (file != null) {
                KayeCluelessSurvivalFlattering.instance.startPlayFileAudio(
                  file,
                );
                setState(() {
                  _isPlaying = true;
                });
              }
            });
          }
        } else {
          KayeCluelessSurvivalFlattering.instance.stopPlayAudio();
          setState(() {
            _isPlaying = false;
            _currentTimeSec = _timeSec;
          });
        }
      },
      child: tapWidget,
    );
  }

  Widget getContainer() {
    List<Widget> rowChildren = [];
    if (_voice?.voiceUrl != null) {
      rowChildren = widget.snap.isMine
          ? <Widget>[getVoiceIcon(), const SizedBox(width: 8), getText()]
          : <Widget>[getVoiceIcon(), const SizedBox(width: 8), getText()];
    } else {
      rowChildren = [const Text('')];
    }
    var decoration = widget.snap.isMine
        ? BoxDecoration(
            borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByEggplant(),
            gradient: KayeLeadBarnacle.kayeLeadBelowPileTattletaleByEggplant(),
          )
        : BoxDecoration(
            borderRadius: KayeLeadBarnacle.kayeLeadBelowGardenByBingo(),
            color: KayeToddlerBarnacle.b1,
          );
    return Container(
      width: (90.0 + _timeSec),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: decoration,
      child: Row(
        mainAxisAlignment: widget.snap.isMine
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: rowChildren,
      ),
    );
  }

  Widget getVoiceIcon() {
    return Visibility(
      visible: !_isPlaying,
      replacement: Container(child: _voiceAnimation()),
      child: KayeSydney.local(
        fileName: 'kaye_ten_lead_biologist',
        width: 18.0,
        height: 18.0,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget getText() {
    return Text(
      '${_isPlaying ? _currentTimeSec : _voice?.duration}”',
      style: const TextStyle(
        color: KayeToddlerBarnacle.white,
        fontSize: 16,
        fontFamily: AppText.fontFamily,
      ),
    );
  }

  Future<File?> _downLoadVoice(String url) async {
    return await KAYE.http.cache(url);
  }

  Widget _voiceAnimation() {
    List<String> urls = [];
    const prefix = 'kaye_ten_lead_betty';
    for (var i = 1; i <= 12; i++) {
      urls.add('$prefix$i');
    }
    return KayeSydneyPlaceboIncreaseDot(
      width: 18.0,
      height: 18.0,
      imageURLs: urls,
      intervalMilliseconds: 120,
    );
  }

  Widget getUnreadRed() {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        width: 12.0,
        height: 12.0,
        decoration: BoxDecoration(
          color: KayeToddlerBarnacle.ff4e4e,
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
    );
  }

  void _readAction() {
    if (!widget.snap.isMine && widget.snap.isUnread) {
      widget.snap.unread = false;
      KAYE.kayeDb.snapDao.saveOrUpdateModels([widget.snap]);
      KayeLeadFlattering.instance.kayeGenitalsProductLutherMandatory(
        widget.snap.chatBoxId!,
        snapIds: [widget.snap.id!],
      );
    }
  }
}
