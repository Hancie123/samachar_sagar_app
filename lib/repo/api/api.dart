import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  Api() {
    _dio.options.baseUrl = 'http://10.0.2.2:8000';
  }

  Dio get request => _dio;
}
