///
/// Created by NieBin on 18-12-6
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/constant_lib.dart';

class MainAppBar extends AppBar {
  MainAppBar({
    Key key,
    this.titleText,
    this.titleColor = Colors.white,
    this.rightWidget,
    this.bottomWidget,
    this.bottomHeight = 0,
  }) : super(
            key: key,
            title: Text(
              titleText,
              style: TextStyle(
                fontSize: TEXT_SIZE_LARGE,
                color: Colors.white,
              ),
            ),
            bottom: bottomWidget == null
                ? null
                : PreferredSize(
                    child: bottomWidget,
                    preferredSize: Size(0.0, bottomHeight),
                  ),
            actions: rightWidget == null ? null : [rightWidget],
            elevation: 1.0);

  final String titleText;
  final Color titleColor;
  final Widget rightWidget;
  final Widget bottomWidget;
  final double bottomHeight;
}
