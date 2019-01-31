import 'package:flutter/material.dart';
import 'package:yuque/pages/root_page/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '语雀',
      home: RootPage(),
    );
  }
}
