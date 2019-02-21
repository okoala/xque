import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:yuque/config/config.dart';
import 'package:yuque/core/http_exception.dart';
import 'package:yuque/core/dio_logger.dart';
import 'package:yuque/pojo/response/hello_response.dart';
import 'package:yuque/pojo/response/search_repos_response.dart';
import 'package:yuque/pojo/book.dart';
// import 'package:sprintf/sprintf.dart';

class APIProvider {
  static const String TAG = 'APIProvider';
  static String _baseUrl = Config.yuque["host"] + Config.yuque["apiRoot"];

  static const String _HELLO_API = '/hello';
  static const String _SESRCH_REPOS_API = '/search/repos';


  Dio _dio;

  APIProvider() {
    Options dioOptions = Options()
      ..baseUrl = APIProvider._baseUrl;

    _dio = Dio(dioOptions);

    if (EnvType.LOCAL == Config.value.env || EnvType.TEST == Config.value.env) {
      _dio.interceptor.request.onSend = (Options options) async {
        DioLogger.onSend(TAG, options);
        return options;
      };

      _dio.interceptor.response.onSuccess = (Response response) {
        DioLogger.onSuccess(TAG, response);
        return response;
      };

      _dio.interceptor.response.onError = (DioError error) {
        DioLogger.onError(TAG, error);
        return error;
      };
    }
  }

  Future<HelloResponse> getHello(String token) async {
    _dio.options.headers['X-Auth-Token'] = token;
    Response response = await _dio.get(_HELLO_API);
    throwIfNoSuccess(response);
    return HelloResponse.fromJson(response.data);
  }

  Future<SearchReposResponse> getSearchRepos(String searchType, String searchText) async {
    _dio.options.data = {
      "type": searchType,
      "q": searchText
    };
    Response response = await _dio.get(_SESRCH_REPOS_API);
    throwIfNoSuccess(response);
    return SearchReposResponse.fromJson(jsonDecode(response.data));
  }

  void throwIfNoSuccess(Response response) {
    if(response.statusCode < 200 || response.statusCode > 299) {
      throw new HttpException(response);
    }
  }
}