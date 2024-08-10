import 'package:flutter/material.dart';
import 'package:maxsudjon/2-lesson/data/models/product_model/product_model.dart';

class ProductItem extends StatelessWidget {
  ProductModel product;
   ProductItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
      ),
      child: ListTile(
        title:Text(product.title) ,
        subtitle:  Image.network(product.image, height: 100),
      ),
    );
  }
}
