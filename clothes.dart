import 'package:flutter/material.dart';
import 'package:flutter_app/compound/mydrawer.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Clothes extends StatefulWidget{

  State<StatefulWidget>  createState(){
  
  return clothes();
  }}
class clothes extends State<Clothes>{

  @override
  Widget build(BuildContext context) {
                return
    Scaffold(
       appBar: AppBar(
         actions: [
           IconButton(icon: Icon(Icons.shop,color: Colors.black54,), onPressed: (){  Navigator.of(context).pushNamed('ShopList');},)
         ],
         title: Text("Closhes Section", style: TextStyle(color: Colors.black54 ,fontWeight: FontWeight.w700,letterSpacing: 2),) ,
         centerTitle: true,
         backgroundColor: Colors.yellow,
       
       ),
      drawer: MyDrawer(),
      body: 
      ListView( children: [
        Container( padding: EdgeInsets.all(20),child: Text("Wellcome ^ Wellcome",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 45),),),
      
      
      
      SizedBox(
      height: 230.0 ,
      width: 200,
      child: Carousel(
      images: [
       AssetImage("images/h/h2.jpg"),
       AssetImage("images/h/h1.jpg"),
       AssetImage("images/h/h2.jpg"),
      
      ],
      boxFit: BoxFit.cover,
      dotBgColor: Colors.black54,
      autoplay: true,
      dotIncreasedColor: Colors.black54,
      dotSize: 5,
       borderRadius: true ,
      radius: Radius.circular(73),

      ),
      ),
      
       SizedBox(
      height: 230.0 ,
      width: 200,
      child: Carousel(
      images: [
       AssetImage("images/h/h1.jpg"),
       AssetImage("images/h/h2.jpg"),
       AssetImage("images/h/h1.jpg"),
      
      ],
      boxFit: BoxFit.cover,
      dotBgColor: Colors.black54,
      autoplay: true,
      dotIncreasedColor: Colors.black54,
      dotSize: 5,
       borderRadius: true ,
      radius: Radius.circular(73),
      ),
      ),
      SizedBox(
      height: 230.0 ,
      width: 200,
      child: Carousel(
      images: [
       AssetImage("images/h/h2.jpg"),
       AssetImage("images/h/h1.jpg"),
       AssetImage("images/h/h2.jpg"),
      
      ],
       borderRadius: true ,
      radius: Radius.circular(73),
      boxFit: BoxFit.cover,
      dotBgColor: Colors.black54,
      autoplay: true,
      dotIncreasedColor: Colors.black54,
      dotSize: 5,

      ),
      ),
        Container( height: 200, child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
           children: [
              SizedBox(
      height: 230.0 ,
      width: 200,
      child: Carousel(
      images: [
       AssetImage("images/h/h1.jpg"),
       AssetImage("images/h/h2.jpg"),
       AssetImage("images/h/h1.jpg"),
      
      ],
      boxFit: BoxFit.cover,
      dotBgColor: Colors.black54,
      autoplay: true,
      dotIncreasedColor: Colors.black54,
      dotSize: 5,
      borderRadius: true ,
      radius: Radius.circular(100),

      ),
      ),
       SizedBox(
      height: 230.0 ,
      width: 200,
      child: Carousel(
      images: [
       AssetImage("images/h/h2.jpg"),
       AssetImage("images/h/h1.jpg"),
       AssetImage("images/h/h2.jpg"),
      
      ],
      boxFit: BoxFit.cover,
      dotBgColor: Colors.black54,
      autoplay: true,
      dotIncreasedColor: Colors.black54,
      dotSize: 5,
      borderRadius: true ,
      radius: Radius.circular(100),
      ),
      ),
      
        ],),
          
        )
      ], 
      
      ), 
      
      
    );
  }
  }