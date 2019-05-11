import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

Future requestGet(path, {formData}) async {
  try {
    Response response;
    Dio dio = Dio();
    dio.options.contentType =
        ContentType.parse('application/x-www-form-urlencoded');
    if (formData == null) {
      response = await dio.get(path);
    } else {
      response = await dio.get(path, queryParameters: formData);
    }

    if (response.statusCode == 200) {
      print('response.data =====> ${path} ：${response.data}');
      return response;
    } else {
      throw Exception('接口异常');
    }
  } catch (e) {
    return print('ERROR ======> $e');
  }
}

Future requestPost(path, {formData}) async {
  try {
    Response response;
    Dio dio = Dio();
    dio.options.contentType =
        ContentType.parse('application/x-www-form-urlencoded');
    if (formData == null) {
      response = await dio.post(path);
    } else {
      response = await dio.post(path, queryParameters: formData);
    }

    if (response.statusCode == 200) {
      print('response.data =====> ${path} ：${response.data}');
      return response;
    } else {
      throw Exception('接口异常');
    }
  } catch (e) {
    return print('ERROR ======> $e');
  }
}
