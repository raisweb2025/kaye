import 'package:flutter/material.dart';

class KayeHormonalKitchen extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTRB(0, 0, size.width, size.height - 10);
    final rRect = RRect.fromRectAndRadius(rect, const Radius.circular(28));

    final path = Path()
      ..addRRect(rRect)
      ..moveTo(size.width / 2 - 10, size.height - 10)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width / 2 + 10, size.height - 10)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}
