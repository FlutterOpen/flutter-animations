///
/// Created by NieBin on 18-12-7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/constant_lib.dart';

const APP_NAME = ["Flutter", "Widgets"];

class WelcomePage extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this,
        animationBehavior: AnimationBehavior.preserve);
    animation = Tween(begin: 100.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {});
        print("value:${animation.value}");
      })
      ..addStatusListener((status) {
        if (AnimationStatus.completed == status ||
            AnimationStatus.dismissed == status) {
          Navigator.of(context).pushReplacementNamed(MAIN_PAGE);
        }
      });
    controller.forward();
  }

  TextSpan _nameSpan(String name, Color color) {
    return TextSpan(
      text: name,
      style: TextStyle(
        color: color,
        fontSize: TEXT_SIZE_LARGE,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.black45,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        width: animation.value,
                        height: animation.value,
                        child: Container(
                          child: FlutterLogo(
                            colors: Colors.amber,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                       _nameSpan(APP_NAME[0], Colors.blueAccent),
                       _nameSpan(APP_NAME[1], Colors.yellowAccent),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
