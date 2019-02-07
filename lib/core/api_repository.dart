import 'package:yuque/helpers/urllib_helpers.dart';

class ApiService {
  static Future ping(String token) async {
    var res = await UrllibHelpers.get('/hello', token: token);
    return res;
  }
}