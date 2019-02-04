import 'package:flutter/material.dart';

import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/components/cell/single_cell.dart';
import 'package:yuque/components/cell/group_cell.dart';


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
            GroupCell(group: [{'title': '收藏'}, {'title': '相册'}, {'title': '卡包'}, {'title': '表情'}]),
            SingleCell(title: '设置',),
          ],
        )
      ),
    );
  }
}
