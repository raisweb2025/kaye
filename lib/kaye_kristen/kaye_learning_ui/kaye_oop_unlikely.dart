import 'package:flutter/material.dart';
import 'dart:async';

import '../kaye_honk/kaye_angle_human_protector.dart';

class KayeOopUnlikely extends StatefulWidget {
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final double itemWidth;
  final double itemSpacing;
  final double speedPxPerSec;
  final EdgeInsets padding;
  final List<String>? precacheAssets;
  final KayeAngleHumanProtector? controller;
  final Duration centerAnimationDuration;
  final ValueChanged<int>? onStopped;

  const KayeOopUnlikely({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.itemWidth,
    required this.itemSpacing,
    this.speedPxPerSec = 160.0,
    this.padding = EdgeInsets.zero,
    this.precacheAssets,
    this.controller,
    this.centerAnimationDuration = const Duration(milliseconds: 350),
    this.onStopped,
  });

  @override
  _KayeOopUnlikelyDonna createState() => _KayeOopUnlikelyDonna();
}

class _KayeOopUnlikelyDonna extends State<KayeOopUnlikely>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _viewportWidth = 0;
  Timer? _precacheTimer;
  Timer? _stopTimer;
  bool _isStopped = false;

  double get _singleWidth => widget.itemWidth + widget.itemSpacing;
  double get _contentWidth => widget.itemCount * _singleWidth;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    if (widget.precacheAssets != null && widget.precacheAssets!.isNotEmpty) {
      _precacheTimer = Timer(const Duration(milliseconds: 100), () {
        for (final name in widget.precacheAssets!) {
          try {
            precacheImage(AssetImage('assets/images/$name.png'), context);
          } catch (_) {}
        }
      });
    }
    widget.controller?.setHandlers(
      play: () {
        _isStopped = false;
        if (!_controller.isAnimating) _controller.repeat();
      },
      stopAndCenter: () {
        print('[KayeOopUnlikely] stopAndCenter handler invoked');
        _isStopped = true;
        _stopAndCenter(widget.centerAnimationDuration);
      },
    );
    widget.controller?.setStopAfterHandler((delay) {
      _stopTimer?.cancel();
      _stopTimer = Timer(delay, () {
        _isStopped = true;
        _stopAndCenter(widget.centerAnimationDuration);
      });
    });
  }

  @override
  void dispose() {
    _precacheTimer?.cancel();
    _stopTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startIfNeeded(double viewportWidth) {
    final contentWidth = _contentWidth == 0 ? 1.0 : _contentWidth;
    final seconds =
        contentWidth / (widget.speedPxPerSec == 0 ? 1 : widget.speedPxPerSec);
    final duration = Duration(
      milliseconds: (seconds * 1000).toInt().clamp(100, 1000000),
    );
    if (_isStopped) return;
    if (_controller.duration == null || _controller.duration != duration) {
      _controller.duration = duration;
      _controller.repeat();
    } else if (!_controller.isAnimating) {
      _controller.repeat();
    }
  }

  void _stopAndCenter([Duration? centerDuration]) {
    if (!mounted) return;
    _stopTimer?.cancel();
    print('[KayeOopUnlikely] _stopAndCenter called');
    final contentWidth = _contentWidth == 0 ? 1.0 : _contentWidth;
    final currentOffset = _controller.value * contentWidth;
    final viewportCenter = currentOffset + (_viewportWidth / 2.0);
    final relative = viewportCenter - (widget.itemWidth / 2.0);
    final double floatIndex = relative / (_singleWidth);
    int index = floatIndex.ceil();
    if (index < 0) index = 0;
    if (index > widget.itemCount - 1) index = widget.itemCount - 1;

    final desiredLeft = index * _singleWidth;
    final desiredOffset =
        desiredLeft - (_viewportWidth - widget.itemWidth) / 2.0;
    double targetValue = (desiredOffset % contentWidth) / contentWidth;
    if (targetValue < 0) targetValue += 1.0;

    _controller.stop();
    final currValue = _controller.value;
    final currentOffsetLocal = currValue * contentWidth;
    double delta = (targetValue * contentWidth) - currentOffsetLocal;
    if (delta < 0) delta += contentWidth;
    final speed = widget.speedPxPerSec > 0 ? widget.speedPxPerSec : 1.0;
    double seconds = delta / speed;
    seconds = seconds.clamp(0.05, 1.5);
    final duration =
        centerDuration ?? Duration(milliseconds: (seconds * 1000).toInt());
    _controller
        .animateTo(targetValue, duration: duration, curve: Curves.linear)
        .whenComplete(() {
          try {
            widget.onStopped?.call(index);
          } catch (_) {}
        });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.itemCount == 0) return const SizedBox.shrink();
    return LayoutBuilder(
      builder: (context, constraints) {
        _viewportWidth = constraints.maxWidth;
        final contentWidth = _contentWidth == 0 ? 1.0 : _contentWidth;
        final repeats =
            ((_viewportWidth + contentWidth) / contentWidth).ceil() + 1;

        final List<Widget> single = [];
        for (int i = 0; i < widget.itemCount; i++) {
          single.add(
            SizedBox(
              width: widget.itemWidth,
              child: RepaintBoundary(child: widget.itemBuilder(context, i)),
            ),
          );
          single.add(SizedBox(width: widget.itemSpacing));
        }

        final List<Widget> all = [];
        for (int r = 0; r < repeats; r++) {
          all.addAll(single);
        }

        WidgetsBinding.instance.addPostFrameCallback((_) {
          _startIfNeeded(_viewportWidth);
        });

        return ClipRect(
          child: Padding(
            padding: widget.padding,
            child: SizedBox(
              height: double.infinity,
              child: AnimatedBuilder(
                animation: _controller,
                child: OverflowBox(
                  maxWidth: double.infinity,
                  child: SizedBox(
                    width: contentWidth * repeats,
                    child: Row(mainAxisSize: MainAxisSize.min, children: all),
                  ),
                ),
                builder: (context, child) {
                  final progress =
                      (_controller.duration == null ||
                          _controller.duration!.inMilliseconds == 0)
                      ? 0.0
                      : _controller.value;
                  final offsetPx = (progress * contentWidth) % (contentWidth);
                  return Transform.translate(
                    offset: Offset(-offsetPx, 0),
                    child: child,
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
