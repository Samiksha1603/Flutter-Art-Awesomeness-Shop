import 'package:flutter/material.dart';
import 'package:flutter_appproduct/categoryproducts.dart';
import 'package:flutter_appproduct/productdetailscreen.dart';
import 'categoriescreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art Awesomeness',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,

        primaryColor: const Color(0xFFE8CEDB),
      ),
     // home: categories(),
      initialRoute: '/',
      routes: {
        '/':(ctx)=>categories(),
        categoryproduct.routeName:(ctx)=>categoryproduct(),
        productdetail.routeName:(ctx)=>productdetail(),
      },
    );
  }
}

