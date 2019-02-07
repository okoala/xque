import 'package:dio/dio.dart';

import 'package:yuque/config/application.dart';
import 'package:yuque/core/http_exception.dart';
// import 'package:sprintf/sprintf.dart';

class APIProvider {
  static String _baseUrl = Application.yuque["host"] + Application.yuque["apiRoot"];
  static const String _HELLO_API = '/hello';

  Dio _dio;

  APIProvider() {
    Options dioOptions = Options()
      ..baseUrl = APIProvider._baseUrl;

    _dio = Dio(dioOptions);
  }

  Future getHello() async {
    Response response = await _dio.get(_HELLO_API);
    throwIfNoSuccess(response);
  }

  void throwIfNoSuccess(Response response) {
    if(response.statusCode < 200 || response.statusCode > 299) {
      throw new HttpException(response);
    }
  }
}