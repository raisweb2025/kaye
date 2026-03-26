import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PAGView extends StatefulWidget {
  final double? width;
  final double? height;

  final Uint8List? bytesData;

  final String? url;

  final String? assetName;

  final String? package;

  final double initProgress;

  final bool autoPlay;

  final int repeatCount;

  final PAGCallback? onInit;

  final PAGCallback? onAnimationStart;

  final PAGCallback? onAnimationEnd;

  final PAGCallback? onAnimationCancel;

  final PAGCallback? onAnimationRepeat;

  final Widget Function(BuildContext context)? defaultBuilder;

  static const int REPEAT_COUNT_LOOP = -1;
  static const int REPEAT_COUNT_DEFAULT = 1;

  PAGView.network(
    this.url, {
    this.width,
    this.height,
    this.repeatCount = REPEAT_COUNT_DEFAULT,
    this.initProgress = 0,
    this.autoPlay = false,
    this.onInit,
    this.onAnimationStart,
    this.onAnimationEnd,
    this.onAnimationCancel,
    this.onAnimationRepeat,
    this.defaultBuilder,
    Key? key,
  }) : this.bytesData = null,
       this.assetName = null,
       this.package = null,
       super(key: key);

  PAGView.asset(
    this.assetName, {
    this.width,
    this.height,
    this.repeatCount = REPEAT_COUNT_DEFAULT,
    this.initProgress = 0,
    this.autoPlay = false,
    this.package,
    this.onInit,
    this.onAnimationStart,
    this.onAnimationEnd,
    this.onAnimationCancel,
    this.onAnimationRepeat,
    this.defaultBuilder,
    Key? key,
  }) : this.bytesData = null,
       this.url = null,
       super(key: key);

  PAGView.bytes(
    this.bytesData, {
    this.width,
    this.height,
    this.repeatCount = REPEAT_COUNT_DEFAULT,
    this.initProgress = 0,
    this.autoPlay = false,
    this.package,
    this.onInit,
    this.onAnimationStart,
    this.onAnimationEnd,
    this.onAnimationCancel,
    this.onAnimationRepeat,
    this.defaultBuilder,
    Key? key,
  }) : this.url = null,
       this.assetName = null,
       super(key: key);

  @override
  PAGViewState createState() => PAGViewState();
}

class PAGViewState extends State<PAGView> {
  bool _hasLoadTexture = false;
  int _textureId = -1;
  bool _frameReady = false;

  double rawWidth = 0;
  double rawHeight = 0;

  static int _instanceCounter = 0;
  late final int instanceId;

  static bool checkAvailable = true;

  static const double defaultSize = 50;

  static const String _nativeInit = 'initPag';
  static const String _nativeRelease = 'release';
  static const String _nativeStart = 'start';
  static const String _nativeStop = 'stop';
  static const String _nativePause = 'pause';
  static const String _nativeSetProgress = 'setProgress';
  static const String _nativeGetPointLayer = 'getLayersUnderPoint';
  static const String _nativeEnableMultiThread = "enableMultiThread";

  static const String _argumentTextureId = 'textureId';
  static const String _argumentAssetName = 'assetName';
  static const String _argumentPackage = 'package';
  static const String _argumentUrl = 'url';
  static const String _argumentBytes = 'bytesData';
  static const String _argumentRepeatCount = 'repeatCount';
  static const String _argumentInitProgress = 'initProgress';
  static const String _argumentAutoPlay = 'autoPlay';
  static const String _argumentWidth = 'width';
  static const String _argumentHeight = 'height';
  static const String _argumentPointX = 'x';
  static const String _argumentPointY = 'y';
  static const String _argumentProgress = 'progress';
  static const String _argumentEvent = 'PAGEvent';
  static const String _argumentCacheEnabled = "cacheEnabled";
  static const String _argumentCacheSize = "cacheSize";
  static const String _argumentMultiThreadEnabled = "multiThreadEnabled";
  static const String _argumentViewId = "viewId";
  static const String _argumentFrameAvailable = "frameAvailable";

  static const String _playCallback = 'PAGCallback';
  static const String _eventStart = 'onAnimationStart';
  static const String _eventEnd = 'onAnimationEnd';
  static const String _eventCancel = 'onAnimationCancel';
  static const String _eventRepeat = 'onAnimationRepeat';
  static const String _eventUpdate = 'onAnimationUpdate';
  static const String _eventFrameReady = 'onFrameReady';

  static MethodChannel get _channel =>
      (const MethodChannel('flutter_pag_plugin')
        ..setMethodCallHandler((result) {
          if (result.method == _playCallback) {
            final map = callbackHandlers[result.arguments[_argumentTextureId]];
            if (map != null) {
              for (var entry in map.entries) {
                entry.value?.call(result.arguments[_argumentEvent]);
              }
            }
            if (result.arguments[_argumentEvent] == _eventFrameReady) {
              frameReadyHandlers[result.arguments[_argumentViewId]]?.call();
            }
          }

          return Future<dynamic>.value();
        }));

  static Map<int, Map<int, Function(String event)?>?> callbackHandlers = {};
  static Map<int, Function()> frameReadyHandlers = {};

  @override
  void initState() {
    super.initState();
    instanceId = _instanceCounter++;
    frameReadyHandlers[instanceId] = () {
      setState(() {
        _frameReady = true;
      });
    };
    newTexture();
  }

  bool _isAvailable() {
    return true;
  }

  void newTexture() async {
    int repeatCount =
        widget.repeatCount <= 0 &&
            widget.repeatCount != PAGView.REPEAT_COUNT_LOOP
        ? PAGView.REPEAT_COUNT_DEFAULT
        : widget.repeatCount;
    double initProcess = widget.initProgress < 0 ? 0 : widget.initProgress;

    try {
      dynamic result = await _channel.invokeMethod(_nativeInit, {
        _argumentAssetName: widget.assetName,
        _argumentPackage: widget.package,
        _argumentUrl: widget.url,
        _argumentBytes: widget.bytesData,
        _argumentRepeatCount: repeatCount,
        _argumentInitProgress: initProcess,
        _argumentAutoPlay: widget.autoPlay,
        _argumentViewId: instanceId,
      });
      if (result is Map) {
        _textureId = result[_argumentTextureId];
        rawWidth = result[_argumentWidth] ?? 0;
        rawHeight = result[_argumentHeight] ?? 0;
      }
      if (mounted) {
        setState(() {
          _hasLoadTexture = true;
        });
        widget.onInit?.call();
      } else {
        notifyRelease();
      }
    } catch (e) {
      print('PAGViewState error: $e');
    }

    if (_textureId >= 0 && mounted) {
      var events = <String, PAGCallback?>{
        _eventStart: widget.onAnimationStart,
        _eventEnd: widget.onAnimationEnd,
        _eventCancel: widget.onAnimationCancel,
        _eventRepeat: widget.onAnimationRepeat,
      };
      if (!callbackHandlers.containsKey(_textureId))
        callbackHandlers[_textureId] = {};
      callbackHandlers[_textureId]?[instanceId] = (event) {
        events[event]?.call();
      };
    }
  }

  void start() {
    if (!_hasLoadTexture) {
      return;
    }
    _channel.invokeMethod(_nativeStart, {_argumentTextureId: _textureId});
  }

  void stop() {
    if (!_hasLoadTexture) {
      return;
    }
    _channel.invokeMethod(_nativeStop, {_argumentTextureId: _textureId});
  }

  void pause() {
    if (!_hasLoadTexture) {
      return;
    }
    _channel.invokeMethod(_nativePause, {_argumentTextureId: _textureId});
  }

  void setProgress(double progress) {
    if (!_hasLoadTexture) {
      return;
    }
    _channel.invokeMethod(_nativeSetProgress, {
      _argumentTextureId: _textureId,
      _argumentProgress: progress,
    });
  }

  Future<List<String>> getLayersUnderPoint(double x, double y) async {
    if (!_hasLoadTexture) {
      return [];
    }
    return (await _channel.invokeMethod(_nativeGetPointLayer, {
              _argumentTextureId: _textureId,
              _argumentPointX: x,
              _argumentPointY: y,
            })
            as List)
        .map((e) => e.toString())
        .toList();
  }

  void notifyRelease() {
    _channel.invokeMethod(_nativeRelease, {
      _argumentTextureId: _textureId,
      _argumentViewId: instanceId,
      _argumentFrameAvailable: _isAvailable(),
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_hasLoadTexture) {
      if (_isAvailable()) {
        return SizedBox(
          width: widget.width ?? (rawWidth / 2),
          height: widget.height ?? (rawHeight / 2),
          child: Texture(textureId: _textureId),
        );
      } else {
        return widget.defaultBuilder?.call(context) ??
            SizedBox(
              width: widget.width ?? (rawWidth / 2),
              height: widget.height ?? (rawHeight / 2),
            );
      }
    } else {
      return widget.defaultBuilder?.call(context) ??
          SizedBox(
            width: widget.width ?? defaultSize,
            height: widget.height ?? defaultSize,
          );
    }
  }

  @override
  void dispose() {
    super.dispose();
    notifyRelease();

    callbackHandlers[_textureId]?.remove(instanceId);
    if (callbackHandlers[_textureId] != null &&
        callbackHandlers[_textureId]!.isEmpty) {
      callbackHandlers.remove(_textureId);
    }
    frameReadyHandlers.remove(instanceId);
  }
}

typedef PAGCallback = void Function();

class PAG {
  static void enableCheckAvailable(bool enable) {
    PAGViewState.checkAvailable = enable;
  }
}
