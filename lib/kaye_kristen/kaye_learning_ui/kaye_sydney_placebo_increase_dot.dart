import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_classy/kaye_toddler_barnacle.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class KayeSydneyPlaceboIncreaseDot extends StatefulWidget {
  final double width;
  final double height;
  final bool autoStart;

  const KayeSydneyPlaceboIncreaseDot({
    Key? key,
    required this.width,
    required this.height,
    this.autoStart = true,
    this.intervalMilliseconds = 200,
    this.reverseDuration,
    required this.imageURLs,
  }) : assert(intervalMilliseconds > 0),
       super(key: key);

  @override
  _ImageFrameAnimationWidgetState createState() =>
      _ImageFrameAnimationWidgetState();

  final int intervalMilliseconds;
  final Duration? reverseDuration;
  final List<String> imageURLs;
}

class _ImageFrameAnimationWidgetState
    extends State<KayeSydneyPlaceboIncreaseDot>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late Animation<int> _animation;
  late AnimationController _controller;

  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
    WidgetsBinding.instance?.removeObserver(this);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    final int imageCount = widget.imageURLs.length;
    final int maxTime = widget.intervalMilliseconds * imageCount;

    _controller = AnimationController(
      duration: Duration(milliseconds: maxTime),
      vsync: this,
    );
    _animation = IntTween(begin: 0, end: imageCount - 1).animate(_controller);
    _controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        if (widget.reverseDuration == null ||
            widget.reverseDuration == const Duration()) {
          _controller.forward(from: 0.0);
        } else {
          _timer = Timer(widget.reverseDuration!, () {
            _timer = null;
            _controller.forward(from: 0.0);
          });
        }
      }
    });
    if (widget.autoStart) _controller.forward();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      initFu = _preloadImages();
      setState(() {});
    });
  }

  void startAnimation() {
    _controller.forward();
  }

  void stopAnimation() {
    _controller.stop();
  }

  void reStartAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        if (!_controller.isAnimating) _controller.forward();
        break;
      case AppLifecycleState.detached:
        _timer?.cancel();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
        if (_controller.isAnimating) _controller.stop();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  Future? initFu;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initFu,
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.done) {
          return AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return loadImage(
                widget.imageURLs[_animation.value],
                widget.width,
                widget.height,
              );
            },
          );
        } else {
          return loadImage(widget.imageURLs[0], widget.width, widget.height);
        }
      },
    );
  }

  Widget loadImage(String imageUrl, double width, double height) {
    return imageUrl.startsWith("http")
        ? Container(
            width: width,
            height: height,
            color: KayeToddlerBarnacle.black_10p,
            child: Image.network(
              imageUrl,
              width: width,
              height: height,
              fit: BoxFit.cover,
              gaplessPlayback: true,
            ),
          )
        : KayeSydney.local(fileName: imageUrl, width: width, height: height);
  }

  Future? _preloadImages() async {
    for (String url in widget.imageURLs) {
      await precacheImage(AssetImage('assets/images/$url.png'), context);
    }
  }
}
