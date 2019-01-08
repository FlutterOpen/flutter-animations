///
/// Created by NieBin on 18-12-7
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///

const THEME_PAGE = "theme_page/";
const MAIN_PAGE = "main_page";
const HOME_CHILD_PAGE_NAMES = [
  "GridView",
  "SliverGrid2",
  "Gesture",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
  "SliverGrid",
];

enum HomePageType {
  GridView,
  ScrollView,
  Gesture,
}

HomePageType convertChildType(int type) {
  for (var t in HomePageType.values) {
    if (t.index == type) {
      return t;
    }
  }
  return HomePageType.ScrollView;
}
