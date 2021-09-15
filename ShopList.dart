import 'package:flutter/material.dart';

class ShopList extends StatelessWidget{
   final Name;
   final Modle;
   final Color;
   final Price;

  ShopList({this.Name,this.Modle,this.Color,this.Price});
  @override
  Widget build(BuildContext context) {
 return Container(height:100 ,child:Card(child: Row(children: [
                    Expanded(flex: 1,child: Container(padding: EdgeInsets.only(right: 5),child:Image.asset("images/h/h1.jpg",fit: BoxFit.cover,) ,),),
                   Expanded(flex: 2,child:  Column(children: [
                        Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(bottom: 5),child: Text("Short${Name}:",style: TextStyle(letterSpacing: 2,fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),),
                        Row(children: [
                          Container(margin: EdgeInsets.all(1),child: Text("Modle:",style: TextStyle(fontWeight: FontWeight.w400),),),
                          Container(margin: EdgeInsets.all(1),child: Text(Modle,style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400),),),
                        ],),
                        Row(children: [
                          Container(margin: EdgeInsets.all(1),child: Text("Color:",style: TextStyle(fontWeight: FontWeight.w400),),),
                          Container(margin: EdgeInsets.all(1),child: Text(Color,style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w400),),),
                        ],),
                        Row(children: [
                          Container(margin: EdgeInsets.all(1),child: Text("Price:",style: TextStyle(fontWeight: FontWeight.w400),),),
                          Container(margin: EdgeInsets.all(1),child: Text(Price,style: TextStyle(color: Colors.red),),),
                        ],),
                      Expanded(flex: 1,child: Container(alignment: Alignment.bottomLeft,child: Text("More Details..",style: TextStyle(fontSize: 12,color:Colors.grey),),),)
                    ],
  
                    ),)
              ],),),);

             
  }
}