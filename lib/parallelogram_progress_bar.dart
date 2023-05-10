import 'package:flutter/material.dart';

class ParallelogramProgressBar extends StatelessWidget {
  final double progress;
  final double width;
  final double height;
  final Color color;

  ParallelogramProgressBar({
    this.progress = 0.0,
    this.width = double.infinity,
    this.height = 20.0,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final widgetWidth = constraints.maxWidth;
        return CustomPaint(
          painter: ParallelogramPainter(
            progress: progress,
            widgetWidth: widgetWidth,
            height: height,
            filledColor: Colors.pink.shade100,
            unfilledColor: Color.fromARGB(255, 58, 58, 58),
          ),
          size: Size(widgetWidth, height),
        );
      },
    );
  }
}

class ParallelogramPainter extends CustomPainter {
  final double progress;
  final double widgetWidth;
  final double height;
  final Color filledColor;
  final Color unfilledColor;

  ParallelogramPainter({
    required this.progress,
    required this.widgetWidth,
    required this.height,
    this.filledColor = Colors.blue,
    this.unfilledColor = Colors.grey,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paintFilled = Paint()
      ..color = filledColor
      ..style = PaintingStyle.fill;

    final paintUnfilled = Paint()
      ..color = unfilledColor
      ..style = PaintingStyle.fill;

    final progressWidth = widgetWidth * progress;

    final filledPath = Path()
      ..moveTo(0, height)
      ..lineTo(progressWidth - height / 2, height)
      ..lineTo(progressWidth + height / 6, 0)
      ..lineTo(height / 2, 0)
      ..lineTo(0, height);

    final unfilledPath = Path()
      ..moveTo(progressWidth - height / 2, height)
      ..lineTo(progressWidth + height / 6, 0)
      ..lineTo(widgetWidth, 0)
      ..lineTo(widgetWidth - height / 1.5, height)
      ..lineTo(progressWidth - height / 2, height);

    canvas.drawPath(filledPath, paintFilled);
    canvas.drawPath(unfilledPath, paintUnfilled);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
