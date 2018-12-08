///
/// Created by NieBin on 18-12-7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/view_lib.dart';
import 'package:flutter_layouts_higher/data/main_data.dart';
import 'package:flutter_layouts_higher/lib/constant_lib.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        titleText: HOME_CHILD_PAGE_NAMES[HomePageType.GridView.index],
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 2.0,
          children: <Widget>[
            Text(
              "Hello",
            ),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
            Text("World"),
          ],
        ),
      ),
    );
  }
}
