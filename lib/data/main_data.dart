///
/// Created by NieBin on 18-12-7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///

enum HomePageType {
  GridView,
  ScrollView,
}

HomePageType convertChildType(int type) {
  for (var t in HomePageType.values) {
    if (t.index == type) {
      return t;
    }
    return HomePageType.ScrollView;
  }
}
