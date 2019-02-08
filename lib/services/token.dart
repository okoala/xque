import 'package:yuque/core/cache.dart';
import 'package:yuque/config/config.dart';

class Token {
  static Future getToken() async {
    return await Cache.getString(Config.storeKey['token']);
  }

  static Future setToken(String token) async {
    return await Cache.setString(Config.storeKey['token'], token);
  }
}