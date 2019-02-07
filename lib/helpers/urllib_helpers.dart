import 'package:dio/dio.dart';
import 'dart:async';

import 'package:yuque/config/application.dart';

var dio = new Dio();

class UrllibHelpers {
  static Future get(String url, {Map<String, dynamic> params, String token}) async {
    final requestUrl = Application.yuque["host"] + Application.yuque["apiRoot"] + url;

    var response;
    try {
      response = await dio.get(requestUrl,
        options: new Options(
          headers: {
            'X-Auth-Token': token,
          },
          data: params,
          // responseType: ResponseType.JSON
        ),
      );
    } on DioError catch(e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if(e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else{
        // Something happened in setting up or sending the request that triggered an Error
        print(e.request);
        print(e.message);
      }
    }

    if (response != null) {
      return response.data;
    } else {
      return response;
    }
  }

  static Future post(String url, {Map<String, dynamic> params, String token}) async {
    var response = await dio.post(url, data: params);
    return response.data;
  }
}