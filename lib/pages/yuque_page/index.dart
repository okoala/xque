import 'package:flutter/material.dart';

import 'package:yuque/config/theme.dart';
import 'package:yuque/components/search_input.dart';
import 'package:yuque/pages/yuque_page/group_cell.dart';

class YuquePage extends StatefulWidget {
  YuquePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  YuquePageState createState() => YuquePageState();
}

class YuquePageState extends State<YuquePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: YQColor.grey7,
        brightness: Brightness.light,
        textTheme: TextTheme(title: TextStyle(color: YQColor.grey1, fontSize: 18, fontWeight: FontWeight.w500)),
        elevation: 0.0,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('语雀'),
      ),
      body: Container(
        child: ListView(
          children: [
            SearchInput(),
            GroupCell(title: '我的消息', doctitle: '仙森邀请你来体验新APP',
            iconColor: YQColor.primary1,
            iconUrl: ClipOval(child:Image.asset('assets/images/notice.png'))),
            GroupCell(title: 'Egg.js 团队', doctitle: 'https://eggjs.org', iconUrl: ClipOval(child: Image.network('https://lark-assets-prod.oss-cn-hangzhou.aliyuncs.com/2017/png/avatar/5a143e30-d777-4c45-9105-dd2abf33fd07.png?x-oss-process=image/resize,m_fill,w_112,h_112/format,png', fit: BoxFit.cover,))),
            GroupCell(title: '关注的消息', doctitle: '语雀: 深入浅出语雀编辑器',
            iconColor: YQColor.blue2, iconUrl: ClipOval(child: Image.asset('assets/images/notice.png', fit: BoxFit.cover,))),
          ]
        )
      ),
    );
  }
}
