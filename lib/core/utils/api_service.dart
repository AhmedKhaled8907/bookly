import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);

  final Dio dio;
  final _baseUrl = 'https://www.googleapis.com/books/v1/volumes';

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var repsonse = await dio.get('$_baseUrl$endPoint');

    return repsonse.data;
  }
}
