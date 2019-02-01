import 'package:flutter/material.dart';

import 'package:yuque/config/theme.dart';
import 'package:yuque/components/search_input.dart';
import 'package:yuque/pages/yuque_page/group_cell.dart';

class YuquePage extends StatefulWidget {
  final String title;

  YuquePage({Key key, this.title}) : super(key: key);

  @override
  YuquePageState createState() => YuquePageState();
}

class YuquePageState extends State<YuquePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: YQColor.grey7,
          brightness: Brightness.light,
          textTheme: TextTheme(title: TextStyle(color: YQColor.grey1, fontSize: 18, fontWeight: FontWeight.w500)),
          elevation: 0.0,
          title: Text('语雀'),
        )
      ),
      body: Container(
        child: ListView(
          children: [
            SearchInput(),
            GroupCell(title: '我的消息', doctitle: '仙森邀请你来体验新APP',
            iconColor: YQColor.primary1,
            iconUrl: ClipOval(child:Image.asset('assets/images/notice.png'))),
            GroupCell(title: 'Egg.js 团队', doctitle: 'https://eggjs.org', iconUrl: ClipOval(child: Image.network('https://lark-assets-prod.oss-cn-hangzhou.aliyuncs.com/2017/png/avatar/5a143e30-d777-4c45-9105-dd2abf33fd07.png?x-oss-process=image/resize,m_fill,w_112,h_112/format,png', fit: BoxFit.cover,))),
            GroupCell(title: '订阅的消息', doctitle: '语雀: 深入浅出语雀编辑器',
            iconColor: YQColor.blue2, iconUrl: ClipOval(child: Image.asset('assets/images/notice.png', fit: BoxFit.cover,))),
          ]
        )
      ),
    );
  }
}
