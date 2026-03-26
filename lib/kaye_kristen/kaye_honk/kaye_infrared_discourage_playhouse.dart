import 'package:flutter/material.dart';

class KayeInfraredDiscouragePlayhouse extends StatefulWidget {
  final Offset position;
  final Color color;

  KayeInfraredDiscouragePlayhouse({
    required Key key,
    required this.position,
    required this.color,
  }) : super(key: key);

  @override
  __KayeInfraredDiscouragePlayhouseDonna createState() =>
      __KayeInfraredDiscouragePlayhouseDonna();
}

class __KayeInfraredDiscouragePlayhouseDonna
    extends State<KayeInfraredDiscouragePlayhouse>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<Offset> _positionAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    _opacityAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _sizeAnimation = Tween<double>(
      begin: 40.0,
      end: 80.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _positionAnimation = Tween<Offset>(
      begin: widget.position,
      end: Offset(widget.position.dx, widget.position.dy - 150),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          left: _positionAnimation.value.dx,
          top: _positionAnimation.value.dy,
          child: Opacity(
            opacity: _opacityAnimation.value,
            child: Icon(
              Icons.favorite,
              color: widget.color,
              size: _sizeAnimation.value,
            ),
          ),
        );
      },
    );
  }
}
