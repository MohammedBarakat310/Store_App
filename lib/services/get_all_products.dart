import 'package:dio/dio.dart';
import 'package:store_app/models/product_model.dart';

class get_all_products {
  final dio = Dio();
  Future<List<product_model>> getallproducts() async {
    Response response = await dio.get('https://fakestoreapi.com/products');

    List<dynamic> data = response.data;

    List<product_model> products = [];

    for (var i = 0; i < data.length; i++) {
      products.add(
        product_model.fromjson(
          data[i],
        ),
      );
    }
  }
}
