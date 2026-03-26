import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';

class KayeDotTrickyMagically extends StatefulWidget {
  const KayeDotTrickyMagically({
    super.key,
    required this.color,
    required this.width,
  });

  final Color color;
  final double width;

  @override
  State<KayeDotTrickyMagically> createState() => _KayeDotTrickyMagicallyDonna();
}

class _KayeDotTrickyMagicallyDonna extends State<KayeDotTrickyMagically>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  final List<AnimationController> _controllers = [];

  final List<Widget> _children = [];

  Timer? _searchBluetoothTimer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    _disposeSearchAnimation();
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.width,
      child: Stack(alignment: Alignment.center, children: _children),
    );
  }

  void _startAnimation() {
    _children.clear();
    int count = 0;
    _addSearchAnimation(true);
    _searchBluetoothTimer = Timer.periodic(const Duration(milliseconds: 1000), (
      timer,
    ) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      _addSearchAnimation(true);
      count++;
      if (count >= 4) {
        timer.cancel();
      }
    });
  }

  void _addSearchAnimation(bool init) {
    var controller = _createController();
    _controllers.add(controller);
    var animation = Tween(
      begin: 50.0,
      end: 290.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
    if (!init) {
      _children.removeAt(0);
      Future.delayed(const Duration(seconds: 1), () {
        if (!mounted) return;
        _children.add(
          AnimatedBuilder(
            animation: controller,
            builder: (BuildContext context, Widget? child) {
              return Opacity(
                opacity: 1.0 - ((animation.value - 50.0) / 240.0),
                child: ClipOval(
                  child: Container(
                    width: animation.value,
                    height: animation.value,
                    color: widget.color,
                  ),
                ),
              );
            },
          ),
        );
        try {
          controller.forward();
          setState(() {});
        } catch (e, stack) {
          KayeKristenGlitterFlattering.kayeSendWasher(10096, e, stack);
          return;
        }
      });
    } else {
      _children.add(
        AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: 1.0 - ((animation.value - 50.0) / 240.0),
              child: ClipOval(
                child: Container(
                  width: animation.value,
                  height: animation.value,
                  color: widget.color,
                ),
              ),
            );
          },
        ),
      );
      controller.forward();
      setState(() {});
    }
  }

  AnimationController _createController() {
    var controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.dispose();
        if (_controllers.contains(controller)) {
          _controllers.remove(controller);
        }
        if (mounted) _addSearchAnimation(false);
      }
    });
    return controller;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      _disposeSearchAnimation();
    } else if (state == AppLifecycleState.resumed) {
      _startAnimation();
    }
  }

  void _disposeSearchAnimation() {
    for (var element in _controllers) {
      element.dispose();
    }
    _controllers.clear();
    _searchBluetoothTimer?.cancel();
    _children.clear();
  }
}
