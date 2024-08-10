import 'package:maxsudjon/2-lesson/data/models/product_model/rating_model.dart';
import 'package:maxsudjon/2-lesson/ui/products/products_page.dart';

class ProductModel {
  int id;
  String title;
  num price;
  String description;
  String category;
  String image;
  RatingModel rating;

  ProductModel(
      {required this.title,
        required this.rating, 
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.id});

  factory ProductModel.fomJson(Map<String, dynamic> json) {
    return ProductModel(
        title: json["title"]??"",
        price: json["price"]??0,
        description: json["description"]??"",
        category: json["category"]??"",
        image: json["image"]??"",
        id: json["id"]??0,
        rating: RatingModel.fromJson(json["rating"]??{}));
  }
}
