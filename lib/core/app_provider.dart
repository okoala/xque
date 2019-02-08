import 'package:flutter/cupertino.dart';

import 'package:yuque/core/app_application.dart';
import 'package:yuque/core/router.dart';

class AppProvider extends InheritedWidget {
  final AppApplication application;

  AppProvider({Key key, Widget child, this.application}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static AppProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(AppProvider) as AppProvider);
  }

  static CupertinoRouter getRouter(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(AppProvider) as AppProvider).application.router;
  }

  static AppApplication getApplication(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(AppProvider) as AppProvider).application;
  }
}