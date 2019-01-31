import 'package:flutter/material.dart';
import 'package:yuque/config/theme.dart';

class SearchInput extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            color: YQColor.grey7,
            borderRadius: BorderRadius.circular(4.0)),
      child: Container(
        height: 40.0,
        alignment: Alignment.center,
        margin: EdgeInsets.only(right: 10.0, bottom: 10.0, left: 10.0),
        padding: EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.search, size: 23.0, color: YQColor.grey4),
            Text('搜索', style: TextStyle(fontSize: 18, color: YQColor.grey4),),
          ],
        ),
      )
    );
  }
}