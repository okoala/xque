import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';

import 'package:yuque/pages/yuque_page/index.dart';
import 'package:yuque/pages/doc_page/index.dart';
import 'package:yuque/pages/me_page/index.dart';

class Application {
  static Router router;

  static Map<String, String> yuque = {
    'host': 'http://www.yuque.com',
    'apiRoot': '/api/v2',
    'tokenHeader': 'X-Auth-Token',
    'tokenUrl': 'https://www.yuque.com/settings/tokens',
    'issueUrl': 'https://github.com/okoala/yuque/issues',
    'useragent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1',
  };

  static Map<String, String> storeKey = {
    'token': 'setting::token'
  };

  static List<Map<String, dynamic>> tabs = [
    {
      'title': '语雀',
      'name': 'yuque',
      'icon': Image.asset('assets/images/yuque-grey.png'),
      'selectedIcon': Image.asset('assets/images/yuque-light.png'),
      'page': YuquePage()
    },
    {
      'title': '文档',
      'name': 'doc',
      'icon': Image.asset('assets/images/doc-grey.png'),
      'selectedIcon': Image.asset('assets/images/doc-light.png'),
      'page': DocPage()
    },
    {
      'title': '我的',
      'name': 'me',
      'icon': Image.asset('assets/images/me-grey.png'),
      'selectedIcon': Image.asset('assets/images/me-light.png'),
      'page': MePage()
    },
  ];
}