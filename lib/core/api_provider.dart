import 'package:dio/dio.dart';

import 'package:yuque/config/application.dart';

class APIProvider {
  static String _baseUrl = Application.yuque["host"] + Application.yuque["apiRoot"];

  Dio _dio;

  APIProvider() {
    Options dioOptions = Options()
      ..baseUrl = APIProvider._baseUrl;

    _dio = Dio(dioOptions);
  }
}