import 'package:flutter/material.dart';

class KayeAwfulProtector {
  VoidCallback? _start;
  VoidCallback? _stop;
  VoidCallback? _pause;
  VoidCallback? _resume;

  void start() => _start?.call();
  void stop() => _stop?.call();
  void pause() => _pause?.call();
  void resume() => _resume?.call();
}

class KayeAwfulDot extends StatefulWidget {
  final Widget child;
  final double minScale;
  final double maxScale;
  final Duration duration;
  final Curve curve;

  final int? repeatCount;

  final KayeAwfulProtector? controller;

  const KayeAwfulDot({
    Key? key,
    required this.child,
    this.minScale = 0.9,
    this.maxScale = 1.0,
    this.duration = const Duration(milliseconds: 600),
    this.curve = Curves.easeInOut,
    this.repeatCount,
    this.controller,
  }) : super(key: key);

  @override
  _KayeAwfulDotDonna createState() => _KayeAwfulDotDonna();
}

class _KayeAwfulDotDonna extends State<KayeAwfulDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;

  int _completedCount = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);

    _animation = Tween<double>(
      begin: widget.maxScale,
      end: widget.minScale,
    ).animate(CurvedAnimation(parent: _controller, curve: widget.curve));

    _bindController();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _completedCount++;

        if (widget.repeatCount != null &&
            _completedCount >= widget.repeatCount!) {
          _controller.stop();
          return;
        }
        _controller.forward();
      }
    });

    _controller.forward();
  }

  void _bindController() {
    if (widget.controller != null) {
      widget.controller!._start = () {
        _completedCount = 0;
        _controller.forward();
      };
      widget.controller!._pause = () => _controller.stop();
      widget.controller!._resume = () => _controller.forward();
      widget.controller!._stop = () => _controller.stop();
    }
  }

  @override
  void didUpdateWidget(covariant KayeAwfulDot oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.duration != widget.duration) {
      _controller.duration = widget.duration;
    }

    if (oldWidget.minScale != widget.minScale ||
        oldWidget.maxScale != widget.maxScale ||
        oldWidget.curve != widget.curve) {
      _animation = Tween<double>(
        begin: widget.maxScale,
        end: widget.minScale,
      ).animate(CurvedAnimation(parent: _controller, curve: widget.curve));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(scale: _animation, child: widget.child);
  }
}
