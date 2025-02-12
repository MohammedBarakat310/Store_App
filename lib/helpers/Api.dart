import 'package:dio/dio.dart';

class Api {
  final dio = Dio();

  Future<Response> get({required String url}) async {
    Response response = await dio.get(url);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<Response> post(
      {required String url, required dynamic data, String? token}) async {
    Map<String, dynamic> headers = {};

    if (token != null) {
      headers.addAll(
        {'Authorization': 'Bearer $token'},
      );
    }

    Response response =
        await dio.post(url, data: data, options: Options(headers: headers));

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<Response> put(
      {required String url, required dynamic data, String? token}) async {
    Map<String, dynamic> headers = {};

    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    if (token != null) {
      headers.addAll(
        {'Authorization': 'Bearer $token'},
      );
    }

    Response response =
        await dio.post(url, data: data, options: Options(headers: headers));

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
}
