import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  final color;
  TrianglePainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) => false;
}

class TriangleShape extends StatelessWidget {
  final color;
  const TriangleShape(this.color);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: 180 * 3.14 / 180,
        child: CustomPaint(
          painter: TrianglePainter(color),
          size: Size(15, 15),
        ));
  }
}
