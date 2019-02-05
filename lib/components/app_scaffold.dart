import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yuque/config/application.dart';
import 'package:yuque/config/theme.dart';

class AppNavBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      backgroundColor: YQColor.grey7,
      border: Border(
        bottom: BorderSide(
          color: YQColor.grey7,
          width: 0.0, // One physical pixel.
          style: BorderStyle.solid,
        ),
      ),
      middle: Text(Application.yuque['name']),
      leading: null,
      // leading: CupertinoButton(
      //   padding: EdgeInsets.zero,
      //   onPressed: () {
      //     Application.router.pop(context);
      //   },
      //   child: Icon(Icons.chevron_left, size: 30, color: YQColor.grey1,)
      // ),
    );
  }

  @override
  bool get fullObstruction => true;

  @override
  Size get preferredSize {
    return new Size.fromHeight(0.0);
  }
}

class AppScaffold extends StatelessWidget {
  AppScaffold({ this.body });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: CupertinoTheme.of(context).textTheme.textStyle,
      child: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        navigationBar: AppNavBar(),
        child: this.body,
      ),
    );
  }
}