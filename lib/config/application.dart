import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';

import 'package:yuque/config/theme.dart';
import 'package:yuque/pages/yuque_page/index.dart';
import 'package:yuque/pages/doc_page/index.dart';
import 'package:yuque/pages/me_page/index.dart';
import 'package:yuque/helpers/color_helpers.dart';

class Application {
  static Router router;

  static Map<String, String> yuque = {
    'name': '语雀',
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

  static List<List<Map<String, dynamic>>> meMenus = [
    [
      {
        'title': '知识库',
        'name': 'book',
        'icon': IconData(0xf428, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
        'iconColor': YQColor.primary1,
        'page': null,
      },
      {
        'title': '团队',
        'name': 'group',
        'icon': IconData(0xf47b, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
        'iconColor': YQColor.primary1,
        'page': null,
      },
    ],
    [
      {
        'title': '关注',
        'name': 'follow',
        'icon': IconData(0xf387, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
        'iconColor': ColorHelpers.fromHexString('#f76062'),
        'page': null,
      },
      {
        'title': '收藏',
        'name': 'collection',
        'icon': IconData(0xf4b2, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
        'iconColor': ColorHelpers.fromHexString('#fec63e'),
        'page': null,
      },
      {
        'title': '讨论',
        'name': 'topic',
        'icon': IconData(0xf3ef, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
        'iconColor': ColorHelpers.fromHexString('#278eef'),
        'page': null,
      },
      {
        'title': '协作',
        'name': 'share',
        'icon': IconData(0xf38c, fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage),
        'iconColor': ColorHelpers.fromHexString('#faa44a'),
        'page': null,
      },
    ],
    [
      {
        'title': '设置',
        'name': 'setting',
        'icon': CupertinoIcons.gear,
        'iconColor': ColorHelpers.fromHexString('#238cef'),
        'page': null,
      },
    ]
  ];
}