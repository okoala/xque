import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:yuque/pages/root_page/index.dart';
import 'package:yuque/pages/login_page/index.dart';
import 'package:yuque/pages/webview_page/index.dart';
import 'package:yuque/helpers/color_helpers.dart';
import 'package:yuque/components/demo.dart';

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

var loginHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new LoginPage();
});


var webviewHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String title = params['title']?.first;
  String url = params['url']?.first;
  return new WebViewPage(url, title);
});


var deeplinkHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String colorHex = params["color_hex"]?.first;
    String result = params["result"]?.first;
    Color color = new Color(0xFFFFFFFF);
    if (colorHex != null && colorHex.length > 0) {
      color = new Color(ColorHelpers.fromHexString(colorHex));
    }
    return new Demo(
        message: "DEEEEEP LINK!!!", color: color, result: result);
  }
);