import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  Api() {
    _dio.options.baseUrl('http://127.0.0.1:8000/');
  }
}
