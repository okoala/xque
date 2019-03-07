import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/config/config.dart';
import 'package:yuque/config/theme.dart';

class AppNavBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  AppNavBar({ this.showLeading, this.title });

  final bool showLeading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      backgroundColor: YQColor.grey7,
      transitionBetweenRoutes: false,
      padding: EdgeInsetsDirectional.only(start: 0.0, end: 0.0),
      border: Border(
        bottom: BorderSide(
          color: YQColor.grey7,
          width: 0.0, // One physical pixel.
          style: BorderStyle.solid,
        ),
      ),
      middle: this.title != null ? Text(this.title) : null,
      // automaticallyImplyLeading: false,
      leading: showLeading != null ? CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          AppProvider.getRouter(context).pop(context);
        },
        child: Icon(Icons.chevron_left, size: 30, color: YQColor.grey1,)
      ) : null,
    );
  }

  @override
  bool get fullObstruction => true;

  @override
  Size get preferredSize {
    return new Size.fromHeight(24.0);
  }
}

class AppScaffold extends StatelessWidget {
  AppScaffold({ this.body, this.showNavigationBar = true, this.showLeading, this.title });

  final Widget body;
  final bool showNavigationBar;
  final bool showLeading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: CupertinoTheme.of(context).textTheme.textStyle,
      child: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: YQColor.grey7,
        navigationBar: showNavigationBar == true ? AppNavBar(showLeading: this.showLeading, title: this.title,) : null,
        child: this.body,
      ),
    );
  }
}