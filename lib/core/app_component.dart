import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/config/config.dart';
import 'package:yuque/core/log.dart';

class AppComponent extends StatefulWidget {
  final AppApplication _application;
  final String _initRoute;

  AppComponent(this._application, this._initRoute);

  @override
  State createState() => AppComponentState(_application, _initRoute);
}

class AppComponentState extends State<AppComponent> {
  final AppApplication _application;
  final String _initRoute;

  AppComponentState(this._application, this._initRoute);

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
      initialRoute: this._initRoute,
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