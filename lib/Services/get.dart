import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

final BaseURL = "http://18.135.170.140/";
final subURL = "";

makeRequest() async {
  try {
    var response = await Dio().get(BaseURL +
        "usersLogin/?email=christianadegbola@gmail.com&password=eventinz");
    print(response);
  } catch (e) {
    print(e);
  }
}
