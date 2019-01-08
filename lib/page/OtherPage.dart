///
/// Created by NieBin on 18-12-6
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/view_lib.dart';

class OtherPage extends StatefulWidget {
  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, String> m = {"S": "S"};
    m.values.toList();
    return Scaffold(
      appBar: MainAppBar(
        titleText: "Other",
        titleColor: Colors.white,
      ),
//      body: Container(
//        child: FlareActor(
//          "assets/images/man.flr",
//          animation: "Build and Fade Out",
//        ),
//      ),
      body: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
        child: GestureDetector(
          onTapDown: (position) {
            print(
                "x:${position.globalPosition.dx}, y: ${position.globalPosition.dy}");
          },
          onVerticalDragUpdate: (detail){},
        ),
      ),
    );
  }
}
