import 'package:flutter/cupertino.dart';

import 'package:yuque/config/theme.dart';

class ItemCell extends StatelessWidget {
  ItemCell({ this.title, this.header, this.footer, this.isSingle });

  final String title;
  final Widget header;
  final Widget footer;
  final bool isSingle;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      height: 60.0,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: this.header != null ? Align(
              alignment: Alignment.topCenter,
              child: this.header,
            ) : null,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: isSingle == false ? Border(
                  top: BorderSide(color: YQColor.grey5, width: 0.5),
                  bottom: BorderSide(color: YQColor.grey5, width: 0.5),
                ) : null,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: this.footer != null ? this.footer : Icon(
                      CupertinoIcons.right_chevron,
                      color: YQColor.grey4
                    ),
                  ),
                ],
              )
            ),
          )
        ],
      )
    );
  }
}