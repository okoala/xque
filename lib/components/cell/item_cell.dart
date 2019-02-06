import 'dart:async';
import 'package:flutter/cupertino.dart';

import 'package:yuque/config/theme.dart';

class ItemCell extends StatefulWidget {
  ItemCell({
    this.title,
    this.header,
    this.icon,
    this.iconColor,
    this.footer,
    this.isSingle,
    this.isLastItem,
    this.hiddenFooter = false,
    this.isCenter = false,
    this.onTap
  });

  final String title;
  final Widget header;
  final IconData icon;
  final Color iconColor;
  final Widget footer;
  final bool isSingle;
  final bool isLastItem;
  final bool hiddenFooter;
  final bool isCenter;
  final Function onTap;

  @override
  ItemCellState createState() => ItemCellState();
}


Timer timer;

class ItemCellState extends State<ItemCell> {
  Color bgColor;

  void initState() {
    super.initState();
    bgColor = CupertinoColors.white;
  }

  void onTapDown(TapDownDetails details) {
    setState(() {
      bgColor = YQColor.grey8;
    });
  }

  void onTapUp(TapUpDetails details) {
    if (timer != null) {
      timer?.cancel();
      timer = null;
    }

    timer = Timer(Duration(milliseconds: 50), () {
      setState(() {
        bgColor = CupertinoColors.white;
        widget.onTap();
        timer?.cancel();
        timer = null;
      });
    });

  }

  void onTapCancel() {
    setState(() {
      bgColor = CupertinoColors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header;

    if (widget.header == null && widget.icon != null) {
      header = Container(
        padding: EdgeInsets.only(left: 4.0, right: 4.0),
        child: Icon(
          widget.icon,
          color: widget.iconColor ?? CupertinoColors.inactiveGray,
          size: 26.0,
        )
      );
    }

    return GestureDetector(
      onTapDown: this.onTapDown,
      onTapUp: this.onTapUp,
      onTapCancel: this.onTapCancel,
      child: Container(
        color: bgColor,
        height: 56.0,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: header != null ? Align(
                alignment: Alignment.center,
                child: header,
              ) : null,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: widget.isSingle == false && widget.isLastItem == null ? Border(
                    // top: BorderSide(color: YQColor.grey5, width: 0.5),
                    bottom: BorderSide(color: YQColor.grey5, width: 0.5),
                  ) : null,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: widget.isCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 1.0,
                                  color: Color.fromARGB(50, 0, 0, 0),
                                ),
                              ],
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                    widget.hiddenFooter ? Container() : Padding(
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