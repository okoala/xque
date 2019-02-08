import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/config/config.dart';
import 'package:yuque/core/log.dart';

class AppComponent extends StatefulWidget {
  final AppApplication _application;

  AppComponent(this._application);

  @override
  State createState() => AppComponentState(_application);
}

class AppComponentState extends State<AppComponent> {
  final AppApplication _application;

  AppComponentState(this._application);

  @override
  void dispose() async {
    Log.info('dispose');
    await _application.onTerminate();
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: Config.value.appName,
      debugShowCheckedModeBanner: false,
      // initialRoute: widget.initRoute,
      onGenerateRoute: _application.router.generator,
    );

    print("initial route = ${app.initialRoute}");

    final appProvider = AppProvider(
      child: app,
      application: _application,
    );
    return appProvider;
  }
}