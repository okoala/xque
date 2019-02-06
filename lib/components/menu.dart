import 'package:flutter/cupertino.dart';

import 'package:yuque/config/application.dart';
import 'package:yuque/components/cell/single_cell.dart';
import 'package:yuque/components/cell/group_cell.dart';
import 'package:yuque/services/dialog.dart';

class Menu extends StatefulWidget {
  Menu({this.menus});

  final List<List<Map<String, dynamic>>> menus;

  MenuState createState() => MenuState();
}

class MenuState extends State<Menu> {
  void handleTap(menu) {
    final String page = menu['page'];
    if (page != null) {
      if (page.startsWith('http')) {
        Application.router.openWeb(page);
      } else {
        Application.router.navigateTo(context, page);
      }
    } else {
      showError(context, '功能尚未实现!');
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];

    for (int i = 0; i < widget.menus.length; i++) {
      final List<Map<String, dynamic>> menus = widget.menus[i];
      if (menus.length == 1) {
        Map<String, dynamic> menu = menus[0];
        children.add(SingleCell(
          title: menu['title'],
          icon: menu['icon'],
          iconColor: menu['iconColor'],
          isCenter: menu['center'] ?? false,
          hiddenFooter: menu['center'] ?? false,
          onTap: () {
            handleTap(menu);
          },
        ));
      } else if (menus.length > 1) {
        children.add(GroupCell(
          group: menus,
          onTap: (menu) {
            handleTap(menu);
          }
        ));
      }
    }

    return Container(
      child: ListView(
        children: children,
      )
    );
  }
}