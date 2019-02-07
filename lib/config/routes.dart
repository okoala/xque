// import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:yuque/config/route_handlers.dart';
import 'package:yuque/core/router.dart';

class Routes {
  static String root = "/";
  static String yuque = "/yuque";
  static String doc = "/doc";
  static String me = "/me";
  static String login = '/login';
  static String setting = '/setting';
  static String webview = '/webview';
  static String launcher = '/launcher';
  static String deeplink = "/message";

  static void configureRoutes(CupertinoRouter router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("Route was not found !!!");
      }
    );

    router.define(root, handler: rootHandler);
    router.define(yuque, handler: yuqueHandler);
    router.define(doc, handler: docHandler);
    router.define(me, handler: meHandler);
    router.define(setting, handler: settingHandler);
    router.define(login, handler: loginHandler);
    router.define(webview, handler: webviewHandler);
    router.define(launcher, handler: launcherHandler);
    router.define(deeplink, handler: deeplinkHandler);
  }
}