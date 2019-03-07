import 'package:flutter/material.dart';
import 'package:yuque/config/config.dart';
import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/components/menu.dart';


class MePage extends StatefulWidget {
  final String title;

  MePage({Key key, this.title}) : super(key: key);

  @override
  MePageState createState() => MePageState();
}

class MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: '我的',
      body: Container(
        child: Menu(
          menus: Config.meMenus,
        )
      ),
    );
  }
}
