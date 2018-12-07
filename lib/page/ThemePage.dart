///
/// Created by NieBin on 18-12-7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///

import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/view_lib.dart';
import '../main.dart';
class ThemePage extends StatefulWidget {

  ThemePage();

  @override
  _ThemeState createState() => _ThemeState();
}

class _ThemeState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        titleText: "Theme Select",
        titleColor: Colors.white,
      ),
      body: Text("Theme Select"),
    );
  }
}
