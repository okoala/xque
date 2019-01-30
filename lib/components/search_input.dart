import 'package:flutter/material.dart';
import 'package:yuque/config/theme.dart';

class SearchInput extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 10.0, top: 0.0, left: 10.0),
      decoration: BoxDecoration(
          color: YQColor.grey6,
          borderRadius: BorderRadius.circular(4.0)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
            child: Icon(Icons.search,
                size: 24.0, color: YQColor.grey4)
          ),
          Expanded(
            child: Text('搜索')
          ),
        ],
      ),
    );
  }
}