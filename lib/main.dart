import 'package:flutter/material.dart';

import 'package:yuque/config/application.dart';
import 'package:yuque/config/routes.dart';
import 'package:yuque/core/router.dart';
import 'package:yuque/core/db.dart';
import 'package:yuque/services/token.dart';

var db;

void main() async {
  final provider = new DBService();
  await provider.init();
  db = DBService.db;

  var initRoute = '/';

  final token = await Token.getToken();
  if (token == null) {
    initRoute = 'login';
  }

  runApp(YuqueApp(initRoute));
}

class YuqueApp extends StatefulWidget {
  final String initRoute;

  YuqueApp(this.initRoute);

  // This widget is the root of your application.
  @override
  State createState() => YuqueAppState();
}

class YuqueAppState extends State<YuqueApp> {
  YuqueAppState() {
    final router = new CupertinoRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: '语雀',
      debugShowCheckedModeBanner: false,
      initialRoute: widget.initRoute,
      onGenerateRoute: Application.router.generator,
    );

    print("initial route = ${app.initialRoute}");
    return app;
  }
}
