import 'package:flutter/material.dart';

import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/components/cell/single_cell.dart';


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
      body: Container(
        child: ListView(
          children: <Widget>[
            SingleCell(title: '支付',),
            SingleCell(title: '收藏',),
            SingleCell(title: '相册',),
            SingleCell(title: '卡包',),
            SingleCell(title: '表情',),
            SingleCell(title: '设置',),
          ],
        )
      ),
    );
  }
}
