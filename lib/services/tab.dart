import 'package:flutter/cupertino.dart';

class TabService {
  TabService(this.tabs);

  final List<Map<String, dynamic>> tabs;

  Image getTabIcon(int index, int curIdx) {
    if (index == curIdx) {
      return this.tabs[index]['selectedIcon'];
    } else {
      return this.tabs[index]['icon'];
    }
  }

  int getTabIdxByName(String name) {
    for (int i = 0; i < this.tabs.length; i++) {
      if (this.tabs[0]['name'] == name) {
        return i;
      }
    }

    return 0;
  }

  List<Widget> getPages() {
    List<Widget> pages = [];
    this.tabs.forEach((tab) => pages.add(tab['page']));
    return pages;
  }

  List<T> getBars<T>(Function barFunc) {
    List<T> ret = [];
    for (int i = 0; i < this.tabs.length; i++) {
      ret.add(barFunc(this.tabs[i], i));
    }
    return ret;
  }
}