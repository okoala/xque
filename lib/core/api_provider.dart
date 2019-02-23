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
    _dio = Dio();

    _dio.options.baseUrl = APIProvider._baseUrl;

    if (EnvType.LOCAL == Config.value.env || EnvType.TEST == Config.value.env) {
      _dio.interceptors.add(InterceptorsWrapper(
        onRequest:(RequestOptions options){
          // Do something before request is sent
          DioLogger.onSend(TAG, options);
          return options; //continue
          // If you want to resolve the request with some custom data，
          // you can return a `Response` object or return `dio.resolve(data)`.
          // If you want to reject the request with a error message,
          // you can return a `DioError` object or return `dio.reject(errMsg)`
        },
        onResponse:(Response response) {
          // Do something with response data
          DioLogger.onSuccess(TAG, response);
          return response; // continue
        },
        onError: (DioError error) {
          // Do something with response error
          DioLogger.onError(TAG, error);
          return error;//continue
        }
      ));
    }
  }

  Future<HelloResponse> getHello(String token) async {
    _dio.options.headers['X-Auth-Token'] = token;
    Response response = await _dio.get(_HELLO_API);
    throwIfNoSuccess(response);
    return HelloResponse.fromJson(response.data);
  }

  Future<SearchReposResponse> getSearchRepos(String searchType, String searchText) async {
    Response response = await _dio.get(_SESRCH_REPOS_API, queryParameters: {
      "type": searchType,
      "q": searchText
    });
    throwIfNoSuccess(response);
    return SearchReposResponse.fromJson(jsonDecode(response.data));
  }

  void throwIfNoSuccess(Response response) {
    if(response.statusCode < 200 || response.statusCode > 299) {
      throw new HttpException(response);
    }
  }
}