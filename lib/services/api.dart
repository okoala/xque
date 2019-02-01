import 'package:yuque/helpers/urllib_helpers.dart';

class ApiService {
  Future ping() async {
    var res = await UrllibHelpers.get('/hello');
    return res;
  }
}