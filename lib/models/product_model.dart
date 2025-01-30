import 'package:store_app/models/rating_mode.dart';

class product_model {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final rating_model rating;

  product_model(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory product_model.fromjson(jsondata) {
    return product_model(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        image: jsondata['image']);
  }
}
