import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:flutter_layouts_higher/lib/constant_lib.dart';
import 'package:flutter_layouts_higher/lib/page_lib.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Layout Higher',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MainPage(),
        routes: {
          HOME_CHILD_PAGE_NAMES[0]: (BuildContext context) => ScrollViewPage(),
        });
  }
}
