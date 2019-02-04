import 'package:flutter/cupertino.dart';

import 'package:yuque/config/theme.dart';

class ItemCell extends StatefulWidget {
  ItemCell({ this.title, this.header, this.footer, this.isSingle, this.onTap });

  final String title;
  final Widget header;
  final Widget footer;
  final bool isSingle;
  final Function onTap;

  @override
  ItemCellState createState() => ItemCellState();
}

class ItemCellState extends State<ItemCell> {
  Color bgColor;

  void initState() {
    super.initState();
    bgColor = CupertinoColors.white;
  }

  void activityTab(TapDownDetails details) {
    setState(() {
      bgColor = YQColor.grey8;
    });
  }

  void unactivityTab(TapUpDetails details) {
    setState(() {
      bgColor = CupertinoColors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: this.activityTab,
      onTapUp: this.unactivityTab,
      onTap: widget.onTap,
      child: Container(
        color: bgColor,
        height: 60.0,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 20.0),
              child: widget.header != null ? Align(
                alignment: Alignment.topCenter,
                child: widget.header,
              ) : null,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: widget.isSingle == false ? Border(
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
                            widget.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: widget.footer != null ? widget.footer : Icon(
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
      )
    );
  }
}