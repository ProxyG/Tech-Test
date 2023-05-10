import 'package:flutter/material.dart';

class ParallelogramPainter extends CustomPainter {
  final Color color;
  final Paint _paint;
  final bool _isFilled;

  ParallelogramPainter(this.color, {bool isFilled = true})
      : _paint = Paint(),
        _isFilled = isFilled {
    _paint.color = color;
    _paint.style = _isFilled ? PaintingStyle.fill : PaintingStyle.stroke;
    _paint.strokeWidth = 4.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width / 3, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 2 / 3, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Parallelogram extends StatelessWidget {
  final bool isReached;

  Parallelogram(this.isReached);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: isReached
          ? ParallelogramPainter(Colors.pink.shade100)
          : ParallelogramPainter(Color.fromARGB(255, 58, 58, 58)),
      child: Container(),
    );
  }
}
