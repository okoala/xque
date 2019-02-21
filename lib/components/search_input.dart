import 'package:flutter/material.dart';

import 'package:yuque/config/theme.dart';

class SearchInput extends StatelessWidget {
  SearchInput({ this.onTap });

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        decoration: BoxDecoration(
              color: YQColor.grey7,
              borderRadius: BorderRadius.circular(4.0)),
        child: Container(
          height: 35.0,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.search, size: 20.0, color: YQColor.grey3),
              Text('搜索', style: TextStyle(fontSize: 17, color: YQColor.grey3),),
            ],
          ),
        )
      )
    );
  }
}