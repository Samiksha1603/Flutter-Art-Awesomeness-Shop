import 'package:flutter/material.dart';
import 'package:flutter_appproduct/dummydata.dart';
import 'package:flutter_appproduct/product.dart';
class productdetail extends StatelessWidget {
  static const routeName='/productdetail';
  @override
  Widget build(BuildContext context) {
    final productsid=ModalRoute.of(context).settings.arguments as String;
    final selectedproduct=DUMMY_PRODUCTS.firstWhere((product) => product.id==productsid);
    return Scaffold(
      appBar: AppBar(title:Text( '${selectedproduct.title}'),),
      body:Column(children: [
        Container(
          height: 300,
          width: double.infinity,
          child: Image.network(selectedproduct.imageurl,
    fit: BoxFit.cover,),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child:Text('Specifications',
            style:TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),

        ),

        Container(height: 200,width: 800,
        child:ListView.builder(
          itemBuilder: (ctx,index)=>Card(

            child: Text(selectedproduct.specs[index],
            ),
          ),
          itemCount: selectedproduct.specs.length,
        ),)
      ],)
      ,);
  }
}
