import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:yuque/config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String yuque = "/yuque";
  static String doc = "/doc";
  static String me = "/me";
  static String webview = '/webview';
  static String deeplink = "/message";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print("Route was not found !!!");
      }
    );

    router.define(root, handler: rootHandler);
    router.define(yuque, handler: yuqueHandler);
    router.define(doc, handler: docHandler);
    router.define(me, handler: meHandler);
    router.define(webview, handler: webviewHandler);
    router.define(deeplink, handler: deeplinkHandler);
  }
}