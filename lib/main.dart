import 'package:flutter/material.dart';
import 'package:flutter_animation/constant/_constant.dart';
import 'package:flutter_animation/page/_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Animation',
      home: WelcomePage(),
      routes: {
        PageConst.HOME_PAGE: (context) => HomePage(),
        PageConst.ANIMATION_01: (context) => AnimationOnePage(),
        PageConst.ANIMATION_02: (context) => FlarePage(),
      },
    );
  }
}
