///
/// Created by NieBin on 18-12-6
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/view_lib.dart';
import 'package:flutter_layouts_higher/lib/page_lib.dart';
import 'package:flutter_layouts_higher/lib/constant_lib.dart';


class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  Widget _item(index) {
    return InkWell(
      child: Container(
        color: Colors.grey,
        margin: EdgeInsets.only(bottom: 5.0),
        child: SizedBox(
            height: 50.0,
            child: Center(
              child: Text(
                HOME_CHILD_PAGE_NAMES[index],
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: TEXT_SIZE_NORMAL,
                ),
              ),
            )),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(HOME_CHILD_PAGE_NAMES[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          titleText: PAGE_TITLES[PageType.Home.index],
          titleColor: Colors.white,
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _item(index);
                },
                childCount: HOME_CHILD_PAGE_NAMES.length,
              ),
            ),
          ],
        ));
  }
}
