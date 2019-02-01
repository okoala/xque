import '../helpers/urllib_helpers.dart';
import '../config/application.dart';

class ApiService {
  Future ping() async {
    var res = await UrllibHelpers.get('/hello');
    return res;
  }
}