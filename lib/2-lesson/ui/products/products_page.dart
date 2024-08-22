import 'package:flutter/material.dart';
import 'package:maxsudjon/2-lesson/data/models/product_model/product_model.dart';
import 'package:maxsudjon/2-lesson/ui/products/widgets/product_item.dart';
import 'package:maxsudjon/2-lesson/view_model/products_view_model.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: Consumer<ProductsViewModel>(builder: (context, myProvider, child) {
        if(myProvider.isLoading){
          return Center(
            child: CircularProgressIndicator() ,
          );
        }
        if(myProvider.products.isNotEmpty){
          return ListView.builder(
            shrinkWrap: true,
            itemCount: myProvider.products.length,
            itemBuilder: (context, index) => ProductItem(product: myProvider.products[index]));
        }

        else{
          return Center(child: Text("Add tugmasini bosing",));
        }
      },),
        appBar: AppBar(title: Text("Products Page"),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ProductsViewModel>().getAllProducts();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
