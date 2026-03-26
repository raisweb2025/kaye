import 'package:flutter/material.dart';

class KayeTattletaleSecretaryCreep extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;
  final double strokeWidth;
  final Color strokeColor;

  const KayeTattletaleSecretaryCreep({
    super.key,
    required this.text,
    required this.style,
    required this.gradient,
    this.strokeWidth = 3,
    this.strokeColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final tp = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    final width = tp.width;
    final height = tp.height;

    return Stack(
      children: [
        Text(
          text,
          style: style.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),

        ShaderMask(
          shaderCallback: (_) {
            return gradient.createShader(Rect.fromLTWH(0, 0, width, height));
          },
          blendMode: BlendMode.srcIn,
          child: Text(text, style: style),
        ),
      ],
    );
  }
}
