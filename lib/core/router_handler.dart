import 'package:flutter/cupertino.dart';

import 'package:yuque/core/router.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:yuque/pages/root_page/index.dart';
import 'package:yuque/pages/login_page/index.dart';
import 'package:yuque/pages/webview_page/index.dart';
import 'package:yuque/pages/setting_page/index.dart';
import 'package:yuque/pages/group_page/index.dart';
import 'package:yuque/pages/search_page/index.dart';
import 'package:yuque/pages/search_result_page/index.dart';
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

var groupHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return GroupPage();
});

var searchHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SearchPage();
});

var searchResultHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SearchResultPage();
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
