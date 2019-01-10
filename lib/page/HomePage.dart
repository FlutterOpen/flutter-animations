///
/// Created by NieBin on 2019/1/9
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_animation/constant/_constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const PAGES = [
  {
    "title": PageConst.ANIMATION_01,
    "img": ImagePath.PAGE_ANIMATION_01,
    "click": PageConst.ANIMATION_01
  },
  {
    "title": PageConst.ANIMATION_02,
    "img": ImagePath.PAGE_ANIMATION_02,
    "click": PageConst.ANIMATION_02
  },
];
const ITEM_COLORS = [
  BLUE_DARK2,
  RED_DARK5,
  BLUE_NORMAL,
  RED_DARK2,
  YELLOW_NORMAL,
  BLUE_DARK1,
  GREEN_NORMAL,
  RED_DARK3
];

class _HomeState extends State<HomePage> {
  Widget _listItem(index) => InkWell(
        child: Card(
          elevation: 10.0,
          child: Container(
            color: ITEM_COLORS[index % ITEM_COLORS.length].withOpacity(0.9),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    PAGES[index % PAGES.length]["img"],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(PAGES[index % PAGES.length]["click"]);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Open"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return _listItem(index);
          }),
    );
  }
}
