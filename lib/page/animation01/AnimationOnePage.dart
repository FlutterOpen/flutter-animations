///
/// Created by NieBin on 2019/1/9
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_animation/constant/_constant.dart';
import 'dart:math';

class AnimationOnePage extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<AnimationOnePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween(begin: 50.0, end: 200.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((state) {
        if (state == AnimationStatus.completed) {
          print("complete");
        }
      });
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Tutorial 01"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Transform.rotate(
                    angle: -_animation.value * 2 * pi / 200,
                    child: Image.asset(
                      ImagePath.FLUTTER_OPEN,
                      fit: BoxFit.fitHeight,
                      width: _animation.value,
                      height: _animation.value,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Center(
                  child: FloatingActionButton(
                    onPressed: () {
                      _controller.repeat();
                    },
                    child: Icon(Icons.refresh),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
