///
/// Created by NieBin on 2019/1/8
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'GesturePainter.dart';

class GesturePage extends StatefulWidget {
  @override
  _GestureState createState() => _GestureState();
}

class _GestureState extends State<GesturePage> {
  Offset center = Offset(100.0, 100.0);

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: GestureDetector(
          onTapDown: (detail) {
            print(
                "detail.pos.x: ${detail.globalPosition.dx}, y: ${detail.globalPosition.dy}");
          },
          onHorizontalDragUpdate: (detail) {
            setState(() {
              center = detail.globalPosition;
            });
          },
          behavior: HitTestBehavior.deferToChild,
          child: CustomPaint(
            painter: GesturePainter(center: center),
            child: Container(),
          ),
        ),
      ),
    );
  }
}
