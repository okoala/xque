import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../pages/root_page/index.dart';
import '../pages/webview_page/index.dart';
import '../helpers/color_helpers.dart';
import '../components/demo.dart';

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