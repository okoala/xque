import 'package:shared_preferences/shared_preferences.dart';
import 'package:yuque/config/application.dart';

class Token {
  static Future getToken() async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.getString(Application.storeKey['token']);
  }

  static Future setToken(String token) async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.setString(Application.storeKey['token'], token);
  }
}