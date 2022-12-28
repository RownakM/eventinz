import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class CustomHttpService {
  late Dio _dio;
  final baseURL = "http://18.135.170.140/";
  CustomHttpService() {
    _dio = Dio();
    initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async {
    Response response;
    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      // TODO
      print(e.message);
      throw Exception(e.message);
    }
    debugPrint(response.statusCode.toString());
    print(response.statusCode);
    return json.decode(response.data);
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
        onError: (error, errorInterceptorHandler) {},
        onRequest: (request, requestInterceptorHandler) {},
        onResponse: (response, responseInterceptorHandler) {}));
  }
}
