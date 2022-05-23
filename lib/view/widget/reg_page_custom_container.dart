
import 'package:flutter/material.dart';
import 'package:idman/utils/const.dart';

class RegPageCustomContainer extends StatelessWidget {
  const RegPageCustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: height > 750 ? 400 : 280),
      height: 600,
      width: double.infinity,
      child: CustomPaint(
        painter: RPSCustomPainter(),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final zeroPaintFill = Paint()..style = PaintingStyle.fill;
    zeroPaintFill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromLTWH(0, size.height * 0.1, size.width, size.height * 0.9),
          bottomRight: Radius.circular(size.width * 0.05),
          bottomLeft: Radius.circular(size.width * 0.05),
          topLeft: Radius.circular(size.width * 0.05),
          topRight: Radius.circular(size.width * 0.05),
        ),
        zeroPaintFill);

    final firstPath = Path();
    firstPath.moveTo(size.width * 0.15, size.height * 0.1);
    firstPath.lineTo(size.width * 0.9, size.height * 0.1);
    firstPath.cubicTo(size.width * 0.09, size.height * 0.09, size.width * 0.08,
        size.height * 0.1, size.width * 0.08, size.height * 0.11);
    firstPath.cubicTo(size.width * 0.08, size.height * 0.12, size.width * 0.09,
        size.height * 0.13, size.width * 0.1, size.height * 0.13);
    firstPath.lineTo(size.width * 0.63, size.height * 0.13);
    firstPath.cubicTo(size.width * 0.67, size.height * 0.13, size.width * 0.7,
        size.height * 0.1, size.width * 0.7, size.height * 0.06);
    firstPath.cubicTo(size.width * 0.71, size.height * 0.03, size.width * 0.67,
        0, size.width * 0.63, 0);
    firstPath.lineTo(size.width * 0.35, 0);
    firstPath.cubicTo(size.width * 0.31, 0, size.width * 0.28,
        size.height * 0.01, size.width * 0.256, size.height * 0.034);
    firstPath.lineTo(size.width * 0.2, size.height * 0.081);
    firstPath.cubicTo(size.width * 0.18, size.height * 0.093, size.width * 0.17,
        size.height * 0.1, size.width * 0.15, size.height * 0.1);
    firstPath.close();

    Paint firstPaintFill = Paint()..style = PaintingStyle.fill;
    firstPaintFill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(firstPath, firstPaintFill);

    final secondPath = Path();
    secondPath.moveTo(size.width * 0.85, size.height * 0.1);
    secondPath.lineTo(size.width * 0.9, size.height * 0.99);
    secondPath.cubicTo(size.width * 0.91, size.height * 0.99, size.width * 0.92,
        size.height * 0.1, size.width * 0.92, size.height * 0.12);
    secondPath.cubicTo(size.width * 0.92, size.height * 0.13, size.width * 0.91,
        size.height * 0.13, size.width * 0.9, size.height * 0.13);
    secondPath.lineTo(size.width * 0.62, size.height * 0.13);
    secondPath.cubicTo(size.width * 0.57, size.height * 0.13, size.width * 0.53,
        size.height * 0.1, size.width * 0.54, size.height * 0.7);
    secondPath.cubicTo(size.width * 0.53, size.height * 0.03, size.width * 0.57,
        0, size.width * 0.61, 0);
    secondPath.lineTo(size.width * 0.6550139, 0);
    secondPath.cubicTo(size.width * 0.68, 0, size.width * 0.71,
        size.height * 0.01, size.width * 0.73, size.height * 0.029);
    secondPath.lineTo(size.width * 0.8, size.height * 0.08);
    secondPath.cubicTo(
        size.width * 0.81,
        size.height * 0.092,
        size.width * 0.83,
        size.height * 0.1,
        size.width * 0.85,
        size.height * 0.1);
    secondPath.close();

    Paint secondPaintFill = Paint()..style = PaintingStyle.fill;
    secondPaintFill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(secondPath, secondPaintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
