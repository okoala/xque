// import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'package:yuque/core/router.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:yuque/pages/root_page/index.dart';
import 'package:yuque/pages/login_page/index.dart';
import 'package:yuque/pages/webview_page/index.dart';
import 'package:yuque/pages/setting_page/index.dart';
import 'package:yuque/helpers/color_helpers.dart';

var rootHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new RootPage('yuque');
});

var yuqueHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new RootPage('yuque');
});

var docHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new RootPage('doc');
});

var meHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new RootPage('me');
});

var settingHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SettingPage();
});

var loginHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new LoginPage();
});


var webviewHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String title = params['title']?.first;
  String url = params['url']?.first;
  return new WebViewPage(url, title);
});

var launcherHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String url = params['url']?.first;

  launch(url);
});

var deeplinkHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String colorHex = params["color_hex"]?.first;
    String result = params["result"]?.first;
    Color color = new Color(0xFFFFFFFF);
    if (colorHex != null && colorHex.length > 0) {
      color = ColorHelpers.fromHexString(colorHex);
    }
    // return new Demo(
    //     message: "DEEEEEP LINK!!!", color: color, result: result);
  }
);

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