import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:maxsudjon/2-lesson/data/models/product_model/product_model.dart';

class ApiService {
  Future getAllProducts() async {
    Dio dio = Dio();
    print("Respons ketdi");
    Response response = await dio.get("https://fakestoreapi.com/products");

    if (response.statusCode == 200) {
      print("Data keldi");
      List products =
          response.data.map((e) => ProductModel.fomJson((e))).toList();
      return products;
    }
  }
}
