///
/// Created by NieBin on 2019/1/9
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_animation/constant/_constant.dart';

class FlarePage extends StatefulWidget {
  @override
  _FlareState createState() => _FlareState();
}

class _FlareState extends State<FlarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flare Animation"),
      ),
      body: Container(
        color: Color(0xff18222c),
        child: Center(
          child: Center(
            child: FlareActor(
//              ImagePath.SOLAR_FLARE,
              "assets/images/solar.flr",
              animation: "solar_run",
            ),
          ),
        ),
      ),
    );
  }
}
