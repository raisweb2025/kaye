import 'package:kaye/kaye_kristen/kaye_mason/kaye_stroke.dart';
import 'package:kaye/kaye_kristen/kaye_honk/kaye_anything_zip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class KayeCalshoptvIncrease extends StatefulWidget {
  KayeCalshoptvIncrease({
    Key? key,
    required this.child,
    this.alphaStart = 0,
    this.alphaEnd = 1,
    this.repeat = false,
    this.duration = const Duration(seconds: 1),
  }) : super(key: key);

  Widget child;
  double alphaStart;
  double alphaEnd;
  bool repeat;
  Duration duration;

  @override
  State<KayeCalshoptvIncrease> createState() => _KayeCalshoptvIncreaseDonna();
}

class _KayeCalshoptvIncreaseDonna extends State<KayeCalshoptvIncrease>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animation = Tween(begin: widget.alphaStart, end: widget.alphaEnd).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    );
    if (widget.repeat) {
      _animationController.repeat();
    } else {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (BuildContext ctx, child) {
        return Opacity(opacity: _animation.value, child: child);
      },
    );
  }
}

class KayeCuteIncreaseFootstep {
  Widget child;
  List<PropertyAnimation> animations = [];
  Duration duration = const Duration(seconds: 1);

  KayeCuteIncreaseFootstep._(this.child);
  static KayeCuteIncreaseFootstep animate(Widget child) {
    return KayeCuteIncreaseFootstep._(child);
  }

  _increaseDurationIfNeed(Duration animateDuration, Duration startDelay) {
    if (animateDuration.inMilliseconds + startDelay.inMilliseconds >
        duration.inMilliseconds) {
      duration = Duration(
        milliseconds:
            animateDuration.inMilliseconds + startDelay.inMilliseconds,
      );
    }
  }

  KayeCuteIncreaseFootstep alpha(
    List<double> alphaValues, {
    Duration duration = const Duration(seconds: 1),
    Curve curve = Curves.linear,
    Duration startDelay = const Duration(milliseconds: 0),
  }) {
    animations.add(
      PropertyAnimation<double>(
        AnimationProperty.alpha,
        alphaValues,
        duration,
        curve,
      ),
    );
    _increaseDurationIfNeed(duration, startDelay);
    return this;
  }

  KayeCuteIncreaseFootstep scale(
    List<double> scaleValues, {
    Duration duration = const Duration(seconds: 1),
    Curve curve = Curves.linear,
    Duration startDelay = const Duration(milliseconds: 0),
  }) {
    animations.add(
      PropertyAnimation<double>(
        AnimationProperty.scale,
        scaleValues,
        duration,
        curve,
      ),
    );
    _increaseDurationIfNeed(duration, startDelay);
    return this;
  }

  KayeCuteIncreaseFootstep scaleX(
    List<double> scaleValues, {
    Duration duration = const Duration(seconds: 1),
    Curve curve = Curves.linear,
    Duration startDelay = const Duration(milliseconds: 0),
  }) {
    animations.add(
      PropertyAnimation<double>(
        AnimationProperty.scaleX,
        scaleValues,
        duration,
        curve,
      ),
    );
    _increaseDurationIfNeed(duration, startDelay);
    return this;
  }

  KayeCuteIncreaseFootstep scaleY(
    List<double> scaleValues, {
    Duration duration = const Duration(seconds: 1),
    Curve curve = Curves.linear,
    Duration startDelay = const Duration(milliseconds: 0),
  }) {
    animations.add(
      PropertyAnimation<double>(
        AnimationProperty.scaleY,
        scaleValues,
        duration,
        curve,
      ),
    );
    _increaseDurationIfNeed(duration, startDelay);
    return this;
  }

  KayeCuteIncreaseFootstep translate(
    List<Offset> translateValues, {
    Duration duration = const Duration(seconds: 1),
    Curve curve = Curves.linear,
    Duration startDelay = const Duration(milliseconds: 0),
  }) {
    animations.add(
      PropertyAnimation<Offset>(
        AnimationProperty.translation,
        translateValues,
        duration,
        curve,
      ),
    );
    _increaseDurationIfNeed(duration, startDelay);
    return this;
  }

  KayeCuteIncreaseFootstep rotation(
    List<double> rotationValues, {
    Duration duration = const Duration(seconds: 1),
    Curve curve = Curves.linear,
    Duration startDelay = const Duration(milliseconds: 0),
  }) {
    animations.add(
      PropertyAnimation<double>(
        AnimationProperty.rotation,
        rotationValues,
        duration,
        curve,
      ),
    );
    _increaseDurationIfNeed(duration, startDelay);
    return this;
  }

  Widget build({int repeatTime = 1}) {
    return EasyAnimation(
      child: child,
      animations: animations,
      duration: duration,
      repeatTime: repeatTime,
    );
  }
}

enum AnimationProperty { alpha, scale, scaleX, scaleY, translation, rotation }

class PropertyAnimation<T> {
  AnimationProperty propertyName;
  List<T> values;
  Duration duration;
  Curve curve;
  Duration startTime;

  Animation<T>? _animation;
  AnimationController? animationController;

  initAnimation(AnimationController animationController) {
    this.animationController = animationController;
    List<TweenSequenceItem<T>> tweens = [];
    for (int i = 0; i < values.length - 1; i++) {
      tweens.add(
        TweenSequenceItem<T>(
          tween: Tween(begin: values[i], end: values[i + 1]),
          weight: 100.0 / values.length,
        ),
      );
    }
    _animation = TweenSequence(tweens).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(
          startTime.inMilliseconds /
              animationController.duration!.inMilliseconds,
          (startTime.inMilliseconds + duration.inMilliseconds) /
              animationController.duration!.inMilliseconds,
        ),
      ),
    );
  }

  Widget buildAnimationWidget(Widget child) {
    Widget result = Container();
    switch (propertyName) {
      case AnimationProperty.alpha:
        result = FadeTransition(
          opacity: _animation as Animation<double>,
          child: child,
        );
        break;
      case AnimationProperty.scale:
        result = ScaleTransition(
          scale: _animation as Animation<double>,
          child: child,
        );
        break;
      case AnimationProperty.scaleX:
        result = KayeAnythingZip(
          scale: _animation as Animation<double>,
          scaleType: KayeAnythingWrestling.X,
        );
        break;
      case AnimationProperty.scaleY:
        result = KayeAnythingZip(
          scale: _animation as Animation<double>,
          scaleType: KayeAnythingWrestling.Y,
        );
        break;
      case AnimationProperty.translation:
        result = SlideTransition(
          position: _animation as Animation<Offset>,
          child: child,
        );
        break;
      case AnimationProperty.rotation:
        result = RotationTransition(
          turns: _animation as Animation<double>,
          child: child,
        );
        break;
    }
    return result;
  }

  PropertyAnimation(
    this.propertyName,
    this.values,
    this.duration,
    this.curve, {
    this.startTime = const Duration(milliseconds: 0),
  });
}

class EasyAnimation extends StatefulWidget {
  EasyAnimation({
    Key? key,
    required this.child,
    required this.animations,
    required this.duration,
    required this.repeatTime,
  }) : super(key: key);

  Widget child;
  final List<PropertyAnimation> animations;
  bool animationInited = false;
  Duration duration = const Duration(seconds: 1);
  int repeatTime;

  @override
  State<EasyAnimation> createState() => _EasyAnimationState();
}

class _EasyAnimationState extends State<EasyAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  var animatedTimes = 0;
  late List<PropertyAnimation> animations;

  @override
  void initState() {
    super.initState();
    animations = widget.animations;
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animatedTimes++;
        if (animatedTimes < widget.repeatTime) {
          _animationController.forward(from: 0);
        }
      }
    });
    for (var elem in animations) {
      elem.initAnimation(_animationController);
    }
    if (widget.repeatTime == -1) {
      _animationController.repeat();
    } else {
      _animationController.forward();
    }
    widget.animationInited = true;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildAnimation(BuildContext context, child) {
    Widget wrappedChild = child;
    for (var elem in animations) {
      wrappedChild = elem.buildAnimationWidget(wrappedChild);
    }
    return wrappedChild;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: widget.child,
      builder: _buildAnimation,
    );
  }
}
