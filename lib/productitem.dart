import 'package:flutter/material.dart';
import 'package:flutter_appproduct/productdetailscreen.dart';
import 'product.dart';
class productitem extends StatelessWidget {
  final String id;
  final String title;
  final String imageurl;
  final int cost;
  productitem({this.id,this.title,this.imageurl,this.cost});

  void selectproduct(BuildContext context){
    Navigator.of(context).pushNamed( productdetail.routeName
    ,arguments: id,);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:()=>selectproduct(context) ,
      child:Card(shape:RoundedRectangleBorder
        (borderRadius:BorderRadius.circular(15),
      ),elevation: 7,
      margin: EdgeInsets.all(10),
      child: Column(children: [
        Stack(children: [
          ClipRRect(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Image.network(imageurl,height: 250,
            width: double.infinity,fit: BoxFit.cover,),

          ),
    Positioned(
    bottom: 20,
    right: 0,
    child: Container(
    width: 300,
    color: Colors.black54,
    padding: EdgeInsets.symmetric(
    vertical: 5,
    horizontal: 20,
    ),
    child: Text(
    title,
    style: TextStyle(
    fontSize: 26,
    color: Colors.white,
    ),
    softWrap: true,
    overflow: TextOverflow.fade,
    ),
    ),
    ),

    Padding(
    padding: EdgeInsets.only(left: 0.0,top: 193.0,right:295.0,bottom:13.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
    Row(
    children: <Widget>[
    Container(
    width: 70,
    height: 40,
      decoration:BoxDecoration( borderRadius: BorderRadius.circular(25),color: Colors.white,) ,

    padding: EdgeInsets.symmetric(
    vertical: 7,
    horizontal: 10,
    ),
    child:Text('₹$cost',
    style: TextStyle(
    fontSize:21,),
    ),

    ),],
    ),
        ],),
      ),],)
      ,],),),);
  }
}
