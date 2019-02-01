import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'package:yuque/config/application.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  final String title;

  WebViewPage(this.url, this.title);

  WebViewPageState createState() => WebViewPageState();
}

class WebViewPageState extends State<WebViewPage> {
  _openMoreSetting() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: _openMoreSetting,
            icon: Icon(Icons.more_horiz, size: 14,)
          )
        ],
      ),
      body: WebviewScaffold(
        url: widget.url,
        userAgent: Application.yuque['useragent'],
        withZoom: false,
        withJavascript: true,
        withLocalStorage: true,
        appCacheEnabled: true,
      )
    );
  }
}