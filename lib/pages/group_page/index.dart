import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/bloc/search_bloc.dart';
import 'package:yuque/config/theme.dart';

class GroupPage extends StatefulWidget {
  final String title;

  GroupPage({Key key, this.title}) : super(key: key);

  @override
  GroupPageState createState() => GroupPageState();
}

class GroupPageState extends State<GroupPage> {
  Widget _buildBook() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        children: <Widget>[
          Center(
            child:Container(
              height: 40,
              alignment: Alignment.centerLeft,
              padding:EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color:YQColor.grey6,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0)),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 5.0),
                    child: Icon(CupertinoIcons.book)
                  ),
                  Expanded(
                    child: Container(
                      // padding: EdgeInsets.only(bottom: 10),
                      child: Text('语雀使用帮助', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: YQColor.grey1),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.only(bottom: 20),
            decoration:BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5, color: YQColor.grey7))
            ),
            child: Text('深入浅出语雀编辑器', style: TextStyle(fontSize: 16, color: YQColor.grey1, fontWeight: FontWeight.w400),)
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.only(bottom: 20),
            decoration:BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5, color: YQColor.grey7))
            ),
            child: Text('导出文档', style: TextStyle(fontSize: 16, color: YQColor.grey1, fontWeight: FontWeight.w400),)
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: EdgeInsets.only(bottom: 20),
            decoration:BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5, color: YQColor.grey7))
            ),
            child: Text('Kitchen 更新日志', style: TextStyle(fontSize: 16, color: YQColor.grey1, fontWeight: FontWeight.w400),)
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text('查看目录', style: TextStyle(fontSize: 15, color: YQColor.blue1, fontWeight: FontWeight.w400),)
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      // showNavigationBar: false,
      showLeading: true,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
            Column(
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  alignment: Alignment.topCenter,
                  child: ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: 'https://cdn.nlark.com/yuque/0/2019/png/84147/1547032500238-d93512f4-db23-442f-b4d8-1d46304f9673.png?x-oss-process=image/resize,m_fill,w_112,h_112/format,png',
                      fadeOutDuration: new Duration(milliseconds: 300),
                      fadeInDuration: new Duration(milliseconds: 300),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.topCenter,
                  child: Text('语雀的天空', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: YQColor.grey1)),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Text('知识创作与分享', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: YQColor.grey2),),
                ),
                SizedBox(height: 30,),
                Column(
                  children: <Widget>[
                    _buildBook(),
                  ],
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}
