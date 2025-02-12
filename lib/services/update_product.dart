import 'package:dio/dio.dart';

import '../helpers/Api.dart';
import '../models/product_model.dart';

class update_product {
  Future<product_model> updateProduct(
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
