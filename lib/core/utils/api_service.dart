import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);

  final Dio _dio;
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var repsonse = await _dio.get('$_baseUrl$endPoint');

    return repsonse.data;
  }
}
