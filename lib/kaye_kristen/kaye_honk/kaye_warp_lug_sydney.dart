import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../kaye_cable.dart';
import 'kaye_autograph_sydney.dart';

class KayeWarpLugSydney extends StatefulWidget {
  const KayeWarpLugSydney({super.key});

  @override
  State<KayeWarpLugSydney> createState() => _RotatingImageState();
}

class _RotatingImageState extends State<KayeWarpLugSydney>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late AnimationController _controller;
  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _isDisposed = true;
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_isDisposed) return;

    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      if (_controller.isAnimating) {
        _controller.stop();
      }
    } else if (state == AppLifecycleState.resumed) {
      if (!_controller.isAnimating) {
        _controller.repeat();
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
