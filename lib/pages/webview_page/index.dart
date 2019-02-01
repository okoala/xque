import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'package:yuque/config/application.dart';
import 'package:yuque/config/theme.dart';

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
    return WebviewScaffold(
        url: widget.url,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: YQColor.grey7,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: YQColor.grey1),
            textTheme: TextTheme(title: TextStyle(color: YQColor.grey1, fontSize: 18, fontWeight: FontWeight.w500)),
            elevation: 0.0,
            title: Text(widget.title),
            leading: IconButton(
              onPressed: () {
                Application.router.pop(context);
              },
              icon: Icon(Icons.close, size: 26,)
            ),
            actions: <Widget>[
              IconButton(
                onPressed: _openMoreSetting,
                icon: Icon(Icons.more_horiz, size: 26,)
              )
            ],
          )
        ),
        userAgent: Application.yuque['useragent'],
        withZoom: true,
        withJavascript: true,
        withLocalStorage: true,
        appCacheEnabled: true,
        hidden: false,
        initialChild: Container(
          color: YQColor.grey1,
          child: Center(
            child: Text('加载中...'),
          ),
        ),
      );
  }
}