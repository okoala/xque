import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import './config/application.dart';
import './config/routes.dart';

import './services/provider.dart';

var db;

void main() async {
  final provider = new Provider();
  await provider.init();
  db = Provider.db;

  runApp(YuqueApp());
}

class YuqueApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State createState() => YuqueAppState();
}

class YuqueAppState extends State<YuqueApp> {
  YuqueAppState() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: '语雀',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Application.router.generator,
    );

    print("initial route = ${app.initialRoute}");
    return app;
  }
}
