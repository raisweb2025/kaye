import 'dart:async';

import 'package:kaye/kaye_kristen/kaye_honk/kaye_sydney.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../kaye_mason/kaye_kristen_glitter_flattering.dart';
import '../kaye_mason/kaye_stroke.dart';
import '../kaye_barnacle/kaye_sydney_separate.dart';

class KayeDotGoalMagically extends StatefulWidget {
  const KayeDotGoalMagically({
    super.key,
    required this.color,
    required this.width,
    required this.icon,
  });

  final Color color;
  final double width;
  final String icon;

  @override
  State<KayeDotGoalMagically> createState() => _KayeDotGoalMagicallyDonna();
}

class _KayeDotGoalMagicallyDonna extends State<KayeDotGoalMagically>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                size: const Size(200, 200),
                painter: ExpandPainter(
                  widget.color,
                  widget.width,
                  (_controller.value + i / 3) % 1.0,
                ),
              );
            },
          ),
        KayeSydney.circle(
          url: widget.icon,
          size: 140,
          fit: BoxFit.cover,
          clip: ImageClipType.middle,
        ),
      ],
    );
  }
}

class ExpandPainter extends CustomPainter {
  final double progress;
  final Color color;
  final double bgWidth;

  ExpandPainter(this.color, this.bgWidth, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = size.width / 2;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = bgWidth;

    paint.color = color.withOpacity(1 - progress);

    final radius = maxRadius * progress;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
