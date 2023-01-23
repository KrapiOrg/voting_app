import 'dart:math' as math;

import 'package:flutter/material.dart';

class SemiCircle extends StatelessWidget {
  final double radius;
  final Offset center;
  final Widget? child;

  const SemiCircle({
    super.key,
    required this.radius,
    required this.center,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(center, radius),
      size: const Size(1, 1),
      child: child,
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  final Offset center;
  final double radius;

  MyPainter(this.center, this.radius);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawArc(
      Rect.fromCenter(
        center: center,
        height: radius,
        width: radius,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
