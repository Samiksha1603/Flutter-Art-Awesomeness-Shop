import 'package:flutter/material.dart';
import 'package:flutter_appproduct/product.dart';
import 'package:flutter_appproduct/productitem.dart';
import 'dummydata.dart';

class categoryproduct extends StatelessWidget {
  static const routeName='/category-products';
 // final String categoryid;
  //final String categorytitle;
  //categoryproduct(this.categoryid,this.categorytitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs=ModalRoute.of(context).
    settings.arguments as Map<String,String>;
    final categorytitle=routeArgs['title'];
    final categoryid=routeArgs['id'];
    final products=DUMMY_PRODUCTS.where((product) {
      return product.categoryids.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categorytitle),
      ),
      body:ListView.builder(itemBuilder:  (ctx,index)
        {
          return productitem(
            id:products[index].id,
              title:products[index].title,
              imageurl:products[index].imageurl,
              cost:products[index].cost);
          },itemCount: products.length,),


    );
  }
}
