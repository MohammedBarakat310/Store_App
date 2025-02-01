import 'package:dio/dio.dart';
import 'package:store_app/helpers/Api.dart';
import 'package:store_app/models/product_model.dart';

class get_category {
  final dio = Dio();

  Future<List<product_model>> get_product_cat(
      {required String cat_name}) async {
    Response response = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$cat_name');

    List<dynamic> data = response.data;

    List<product_model> products = [];

    for (var i = 0; i < data.length; i++) {
      products.add(
        product_model.fromjson(
          data[i],
        ),
      );
    }

    return products;
  }
}
