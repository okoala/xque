import 'package:flutter/cupertino.dart';

import 'package:yuque/services/setting.dart';

class SettingPage extends StatefulWidget {
  SettingPage(this.developerConfiguration, this.updater);

  final DeveloperConfiguration developerConfiguration;
  final ValueChanged<DeveloperConfiguration> updater;

  @override
  SettingPageState createState() => SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  void _handleBackupChanged(bool value) {

  }

  void sendUpdates() {}

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: ListView(),
    );
  }
}