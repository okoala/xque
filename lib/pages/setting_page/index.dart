import 'package:flutter/material.dart';
import 'package:yuque/config/config.dart';
import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/components/menu.dart';


class SettingPage extends StatefulWidget {
  final String title;

  SettingPage({Key key, this.title}) : super(key: key);

  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showLeading: true,
      body: Container(
        child: Menu(
          menus: Config.settingMenus,
        )
      ),
    );
  }
}
