import 'package:flutter/material.dart';
import 'page/WelcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Animation',
      home: WelcomePage(),
      routes: {},
    );
  }
}
