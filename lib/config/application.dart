import 'package:fluro/fluro.dart';

class Application {
  static Router router;

  static Map<String, String> yuque = {
    'host': 'http://www.yuque.com',
    'apiRoot': '/api/v2',
    'tokenHeader': 'X-Auth-Token',
    'settingTokenUrl': 'https://www.yuque.com/settings/tokens',
    'useragent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1'
  };

  static Map<String, String> storeKey = {
    'token': 'setting::token'
  };
}