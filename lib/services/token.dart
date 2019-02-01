import 'package:shared_preferences/shared_preferences.dart';
import 'package:yuque/config/application.dart';

class Token {
  Future getToken() async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.getString(Application.storeKey['token']);
  }

  Future setToken(String token) async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.setString(Application.storeKey['token'], token);
  }
}