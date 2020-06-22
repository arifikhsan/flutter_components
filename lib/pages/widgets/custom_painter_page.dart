import 'package:flutter/material.dart';
import 'dart:math';

class CustomPainterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Painter'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              DragonCanvas(),
              SmileCanvas(),
            ],
          ),
        ),
      ),
    );
  }
}

class SmileCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: SmilePainter(),
      ),
    );
  }
}

class SmilePainter extends CustomPainter {
  void rotate(Canvas canvas, double cx, double cy, double angle) {
    canvas.translate(cx, cy);
    canvas.rotate(angle);
    canvas.translate(-cx, -cy);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius = [size.width, size.height].reduce(min) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()..color = Colors.yellow;

    // draw the body
    canvas.drawCircle(center, radius, paint);

    final smilePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    // canvas.rotate(0 * pi / 180);
    rotate(canvas, size.width / 2, size.height / 2, 180 * pi / 180);

    // draw the mouth
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius / 2),
      0,
      pi,
      false,
      smilePaint,
    );

    // draw the eyes

    canvas.drawCircle(
        Offset(center.dx - radius / 2, center.dy - radius / 2), 10, Paint());
    canvas.drawCircle(
        Offset(center.dx + radius / 2, center.dy - radius / 2), 10, Paint());

    // final myPaint = Paint()
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 4;
    // canvas.drawCircle(Offset(75, 75), 50, myPaint);
    // canvas.drawLine(Offset.zero, Offset(20, 20), Paint());
    // canvas.drawRect(
    //     Rect.fromPoints(Offset(200, 200), Offset(250, 250)),
    //     Paint()
    //       ..style = PaintingStyle.stroke
    //       ..strokeWidth = 2);
  }

  @override
  bool shouldRepaint(SmilePainter oldDelegate) => true;
}

class DragonCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: CustomPaint(
        painter: DragonPainter(),
      ),
    );
  }
}

class DragonPainter extends CustomPainter {
  void rotate(Canvas canvas, double cx, double cy, double angle) {
    canvas.translate(cx, cy);
    canvas.rotate(angle);
    canvas.translate(-cx, -cy);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final headCenter = Offset(size.width / 2, size.height / 2);
    final headPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;
    final double headRadius = 25;

    final tailCenter = Offset(headCenter.dx + headRadius * 2, headCenter.dy);
    final tailPaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.fill;

    canvas.drawCircle(headCenter, headRadius, headPaint);

    rotate(canvas, headCenter.dx, headCenter.dy, 45 * pi / 180);
    canvas.drawCircle(tailCenter, 25, tailPaint);
  }

  @override
  bool shouldRepaint(DragonPainter oldDelegate) => true;
}
