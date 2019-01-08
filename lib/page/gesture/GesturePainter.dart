///
/// Created by NieBin on 2019/1/8
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";

class GesturePainter extends CustomPainter {
  GesturePainter({this.center});

  final Offset center;

  @override
  void paint(Canvas canvas, Size size) {
    print("GesturePainter.size.width:${size.width}, height: ${size.height}");
    var paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0;
    canvas.drawCircle(center, 50.0, paint);
    canvas.save();
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
