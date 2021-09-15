import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/Shoping.dart';
import './Pages/home.dart';
import './Pages/clothes.dart';
import './Pages/Shoping.dart';

void main () =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        title: "MyProject",
        //theme: ThemeData(fontFamily: ''),
        home: Home(),
        routes:{
         'clothes' : (context){

           return Clothes() ;
         },
         'main' : (context){
           return Home() ;
         },
         'ShopList' : (context){
           return Shoping();
         },
        }
        
    );
  }
}