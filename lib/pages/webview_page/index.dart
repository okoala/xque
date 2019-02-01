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
    return Scaffold(
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
            icon: Icon(Icons.close, size: 30,)
          ),
          actions: <Widget>[
            IconButton(
              onPressed: _openMoreSetting,
              icon: Icon(Icons.more_horiz, size: 30,)
            )
          ],
        )
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