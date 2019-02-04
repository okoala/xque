import 'package:flutter/material.dart';
import 'package:yuque/config/theme.dart';

class AppScaffold extends StatelessWidget {
  AppScaffold({ this.body });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: YQColor.grey7,
          brightness: Brightness.light,
          textTheme: TextTheme(title: TextStyle(color: YQColor.grey1, fontSize: 18, fontWeight: FontWeight.w500)),
          elevation: 0.0,
          title: Text('语雀'),
        )
      ),
      body: this.body,
    );
  }
}