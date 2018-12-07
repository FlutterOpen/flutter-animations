///
/// Created by NieBin on 18-12-7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/view_lib.dart';
import 'package:flutter_layouts_higher/lib/constant_lib.dart';

class ScrollViewPage extends StatefulWidget {
  @override
  _ScrollViewState createState() => _ScrollViewState();
}

class _ScrollViewState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, String> m = {"S": "S"};
    m.values.toList();
    return Scaffold(
      appBar: MainAppBar(
        titleText: HOME_CHILD_PAGE_NAMES[0],
        titleColor: Colors.white,
      ),
      body: Text("Other"),
    );
  }
}
