import 'package:yuque/core/cache.dart';
import 'package:yuque/config/application.dart';

class Token {
  static Future getToken() async {
    return await Cache.getString(Application.storeKey['token']);
  }

  static Future setToken(String token) async {
    return await Cache.setString(Application.storeKey['token'], token);
  }
}