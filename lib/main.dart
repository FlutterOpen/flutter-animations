import 'package:flutter/material.dart';
import 'main_page.dart';
import 'package:flutter_layouts_higher/lib/constant_lib.dart';
import 'package:flutter_layouts_higher/lib/page_lib.dart';
import 'package:flutter_layouts_higher/page/gesture/GesturePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Layout Higher',
        theme: ThemeData(primaryColor: BOTTOM_COLORS[COLOR_LIGHT_INDEX]),
        home: WelcomePage(),
        routes: {
          MAIN_PAGE: (BuildContext context) => MainPage(),
          HOME_CHILD_PAGE_NAMES[HomePageType.ScrollView.index]:
              (BuildContext context) => ScrollViewPage(),
          HOME_CHILD_PAGE_NAMES[HomePageType.GridView.index]:
              (BuildContext context) => GridViewPage(),
          HOME_CHILD_PAGE_NAMES[HomePageType.Gesture.index]:
              (BuildContext context) => GesturePage(),
        });
  }
}
