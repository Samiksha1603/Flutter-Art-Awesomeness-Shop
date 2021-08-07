import 'package:flutter/material.dart';
import 'package:flutter_appproduct/categoryproducts.dart';

class categoryitem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  categoryitem(this.id,this.title,this.color,);
  void ontap(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      categoryproduct.routeName
        ,arguments:{

        'id':id,
      'title':title,

    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>ontap(context),
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      
      child: Container(padding: EdgeInsets.symmetric(
        vertical: 45,
        horizontal: 20,
      ),
          child:Text(title,textAlign: TextAlign.center,
        style:TextStyle(fontSize: 20.0,),),
      decoration:BoxDecoration(gradient:LinearGradient(colors: [color.withOpacity(0.6),
      color,],
      begin: Alignment.topLeft,
      end:Alignment.bottomRight),
      borderRadius: BorderRadius.circular(25),)
      ),
    ); }
}
