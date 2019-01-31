import 'package:flutter/material.dart';
import 'package:yuque/config/theme.dart';

class GroupCell extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconUrl;
  final String title;
  final String doctitle;

  GroupCell({this.iconUrl, this.title, this.doctitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 72,
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 5.0),
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: YQColor.primary1,
                      child: Image.asset('assets/images/notice.png'),
                    )
                  ),
                  Column(                                    //单条消息记录，昵称和消息内容垂直排列
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('我的消息', style: TextStyle(color: YQColor.grey2, fontSize: 18)),
                      Container(
                        margin: EdgeInsets.only(top: 4.0),
                        child: Text('仙森邀请你来体验新APP', style: TextStyle(color: YQColor.grey4, fontSize: 16),),                    //消息文字
                      ),
                    ],
                  ),
                ],
              )
            ),
            Container(
              height: 1,
              color: Colors.white70,
              margin: EdgeInsets.only(left: 60),
            ),
          ],
        )
      )
    );
  }
}