import 'package:dio/dio.dart';
import 'package:store_app/helpers/Api.dart';
import 'dart:async';

class get_all_categories {
  final dio = Dio();

  Future<List<dynamic>> get_categories() async {
    Response response =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    List<dynamic> categories = response.data;
    return categories;
  }
}
