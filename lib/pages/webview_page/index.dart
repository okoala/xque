import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
    return DefaultTextStyle(
      style: CupertinoTheme.of(context).textTheme.textStyle,
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: YQColor.grey7,
          middle: Text(widget.title),
          leading: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Application.router.pop(context);
            },
            child: Icon(Icons.close, size: 26, color: YQColor.grey1,)
          ),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: _openMoreSetting,
            child: Icon(Icons.more_horiz, size: 26, color: YQColor.grey1)
          )
        ),
        child: WebviewScaffold(
          url: widget.url,
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
        ),
      ),
    );
  }
}