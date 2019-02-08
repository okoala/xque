import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

import 'package:yuque/config/theme.dart';
import 'package:yuque/config/config.dart';
import 'package:yuque/core/tab.dart';

TabCore tab = new TabCore(Config.tabs);

class RootPage extends StatefulWidget {
  final String name;

  RootPage(this.name);

  @override
  State<StatefulWidget> createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  int tabIdx = 0;

  @override
  void initState() {
    super.initState();
    tabIdx = tab.getTabIdxByName(widget.name);
  }

  BottomNavigationBarItem getBottomNavigationBarItem(_tab, idx) {
    return BottomNavigationBarItem(icon: tab.getTabIcon(idx, tabIdx), title: Text(_tab['title']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: tab.getPages(),
        index: tabIdx,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: YQColor.grey6,
        activeColor: YQColor.primary1,
        currentIndex: tabIdx,
        onTap: (index) {
          setState(() {
            tabIdx = index;
          });
        },
        border: Border(
          top: BorderSide(
            color: Color(0x66000000),
            width: 0.1, // One physical pixel.
            style: BorderStyle.solid,
          ),
        ),
        items: tab.getBars(this.getBottomNavigationBarItem),
      ),
    );
  }
}

