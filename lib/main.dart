import 'package:flutter/material.dart';
import 'package:maxsudjon/1-lesson/provider/counter_view_model.dart';
import 'package:maxsudjon/1-lesson/provider/provider_counter.dart';
import 'package:maxsudjon/2-lesson/ui/products/products_page.dart';
import 'package:maxsudjon/2-lesson/view_model/product_view_model.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterViewModel(),),
        ChangeNotifierProvider(create: (context) => ProductsViewModel(),)
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ProductPage(),
    );
  }
}


