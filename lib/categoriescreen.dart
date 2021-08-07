import 'package:flutter/material.dart';
import 'dummydata.dart';
import 'categoryitem.dart';
class categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(' Art Awesomeness Shop',

          style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,



      ),),),
      body:GridView(padding:EdgeInsets.all(15),children: DUMMY_CATEGORIES.map((catdata)=>
         categoryitem(catdata.id,catdata.title,catdata.color,
         )).toList(),

    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3/2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
    ),),);
  }
}
