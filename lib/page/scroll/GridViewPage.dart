///
/// Created by NieBin on 18-12-7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_layouts_higher/lib/view_lib.dart';
import 'package:flutter_layouts_higher/data/main_data.dart';
import 'package:flutter_layouts_higher/lib/constant_lib.dart';
import 'package:flutter_layouts_higher/data/move_data.dart';

const RELEASE_DATE = "RELEASE DATE", RUNTIME = "RUMTIME";

class GridViewPage extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<GridViewPage> {
  Widget _backImage(MoveItem item) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Image.asset(
        item.trailerImg1,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _showtimeItem(name, value) {
    return Column(
      children: <Widget>[
        Text(
          name,
          style:
              TextStyle(fontSize: TEXT_SIZE_SMALL_2, color: Colors.grey[500]),
        ),
        SizedBox(height: 2.0),
        Text(
          value,
          style:
              TextStyle(fontSize: TEXT_SIZE_SMALL_2, color: Colors.grey[900]),
        )
      ],
    );
  }

  //The total star is 5 and the total score is 10.
  Widget _star(double rating) {
    int num = rating ~/ 2; //the entire star
    bool isHalf = (rating - num * 2) > 1.0; // half star
    List<Widget> stars = List();
    var line = SizedBox(
      width: 0.0,
    );
    var size = 20.0;
    for (int n = 0; n < num; n++) {
      stars.add(
        Icon(
          Icons.star,
          color: Colors.deepOrange,
          size: size,
        ),
      );
      stars.add(line);
    }
    if (isHalf) {
      stars.add(Icon(
        Icons.star_half,
        color: Colors.deepOrange,
        size: size,
      ));
      stars.add(line);
    }
    int surplus = num + (isHalf ? 1 : 0);
    surplus = 5 - surplus;
    for (int n = 0; n < surplus; n++) {
      stars.add(
        Icon(
          Icons.star_border,
          color: Colors.deepOrange,
          size: size,
        ),
      );
      stars.add(line);
    }
    return Row(
      children: stars,
    );
  }

  Widget _cardBottom(MoveItem item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 1.0,
        ),
        Text(
          item.name,
          style: TextStyle(
            color: BOTTOM_COLORS[COLOR_LIGHT_INDEX],
            fontSize: TEXT_SIZE_SMALL,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 1.0),
        Text(
          item.category,
          style: TextStyle(
              color: BOTTOM_COLORS[COLOR_DARK_INDEX],
              fontSize: TEXT_SIZE_SMALL),
        ),
        SizedBox(height: 1.0),
        _star(item.rating),
        SizedBox(height: 2.0),
        Row(
          children: <Widget>[
            _showtimeItem(RELEASE_DATE, item.releaseDate),
            SizedBox(width: 6.0),
            _showtimeItem(RUNTIME, item.runtime),
          ],
        )
      ],
    );
  }

  Widget _grdItem(MoveItem item) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _backImage(item),
            Container(
              padding: EdgeInsets.only(left: 4.0, right: 4.0, bottom: 6.0),
              child: _cardBottom(item),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var items = getItemList();
    var l = List<Widget>();
    for (var item in items) {
      l.add(_grdItem(item));
    }
    return Scaffold(
      appBar: MainAppBar(
        titleText: HOME_CHILD_PAGE_NAMES[HomePageType.GridView.index],
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 2.0,
          childAspectRatio: 0.9,
          children: l,
        ),
      ),
    );
  }
}
