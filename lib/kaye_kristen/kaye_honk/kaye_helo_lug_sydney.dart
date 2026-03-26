import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../kaye_cable.dart';
import 'kaye_autograph_sydney.dart';

class KayeHeloLugSydney extends StatefulWidget {
  final bool isMatching;

  const KayeHeloLugSydney({super.key, required this.isMatching});

  @override
  State<KayeHeloLugSydney> createState() => _KayeHeloLugSydneyDonna();
}

class _KayeHeloLugSydneyDonna extends State<KayeHeloLugSydney>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late AnimationController _controller;

  bool _isDisposed = false;
  bool _isSpinning = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
      lowerBound: 0,
      upperBound: double.infinity,
    );

    if (widget.isMatching) {
      _startSpinning();
    }
  }

  @override
  void didUpdateWidget(covariant KayeHeloLugSydney oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isMatching && !_isSpinning) {
      _startSpinning();
    } else if (!widget.isMatching && _isSpinning) {
      _stopWithDeceleration();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  void _startSpinning() {
    _isSpinning = true;
    _spinLoop();
  }

  Future<void> _spinLoop() async {
    while (_isSpinning && mounted) {
      try {
        await _controller.animateTo(
          _controller.value + 1.0,
          duration: const Duration(milliseconds: 800),
          curve: Curves.linear,
        );
      } catch (_) {
        break;
      }
    }
  }

  void _stopWithDeceleration() {
    _isSpinning = false;

    final double current = _controller.value;

    final double target = current + 1.1;

    _controller.animateTo(
      target,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_isDisposed) return;

    if (state == AppLifecycleState.paused) {
      _isSpinning = false;
      _controller.stop();
    } else if (state == AppLifecycleState.resumed) {
      if (widget.isMatching) {
        _startSpinning();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: const KayeAutographSydney(
        url: KayeCable.kaye_uptown_kaye_warp_glorious,
        width: 320,
        height: 320,
      ),
    );
  }
}
