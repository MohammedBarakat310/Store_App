import 'package:dio/dio.dart';

class Api {
  final dio = Dio();

  Future<Response> get({required String url}) async {
    Response response = await dio.get('url');

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
}
