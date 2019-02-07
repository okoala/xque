import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  static Future getString(String key) async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.getString(key);
  }

  static Future setString(String key, String token) async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.setString(key, token);
  }

  static Future getInt(String key) async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.getInt(key);
  }

  static Future setInt(String key, int token) async {
    SharedPreferences store = await SharedPreferences.getInstance();
    return store.setInt(key, token);
  }
}