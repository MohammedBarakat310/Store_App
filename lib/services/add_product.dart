import 'package:dio/dio.dart';
import 'package:store_app/helpers/Api.dart';
import 'package:store_app/models/product_model.dart';

class add_product {
  Future<product_model> AddProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Response response = await Api().post(
      url: 'https://fakestoreapi.com/products',
      data: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category
      },
    );

    return product_model.fromjson(response.data);
  }
}
