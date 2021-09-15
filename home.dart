import 'package:flutter/material.dart';
import'package:carousel_pro/carousel_pro.dart';
import '../compound/mydrawer.dart';

class Home extends StatefulWidget{

  State<StatefulWidget>  createState(){
  
  return HomeState();
  }}
class HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
                
           return Scaffold(
          appBar:AppBar(

            title: Text("Flutter Devo",style: TextStyle(fontSize:24 , fontWeight: FontWeight.w900),) ,
            backgroundColor: Colors.amberAccent ,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.shop_two), onPressed: (){
                 Navigator.of(context).pushNamed('clothes');
                 })
            ],
            centerTitle: true ,
            elevation: 80,
            //leading: IconButton(icon: Icon(Icons.add_moderator) , onPressed: (){} ),
            //titleSpacing: 50,
            brightness: Brightness.dark,
            // primary: false,
          )  ,
          drawer: MyDrawer(),
          body: ListView(children: <Widget>[
            SizedBox(
              height: 230.0,
              width: 200,
              child: Carousel(
                images: [
                  AssetImage("images/wellcome.jpg"),
                  Image.asset("images/ffd.png",fit:BoxFit.cover),
                  AssetImage("images/FlutterDevo.jpg"),
                ],
                dotSize: 7,
                dotIncreaseSize: 2.2,
                dotIncreasedColor:  Colors.yellow,
                dotSpacing: 20,
                dotVerticalPadding:-1.0 ,
                dotBgColor: Colors.black87,
                //dotHorizontalPadding: 1.1,
                showIndicator: true ,
                boxFit: BoxFit.cover,
                //borderRadius: true ,
                //radius: Radius.circular(73),
                overlayShadow: true ,
                overlayShadowColors: Colors.yellow ,
                overlayShadowSize: 0.1,
                autoplay: true,
              ),
            ),
            // End Carousel
            Container(color:Colors.black87 , padding: EdgeInsets.all(10) ,child: Text("Apps", textAlign: TextAlign.center ,style: TextStyle(letterSpacing: 20,color: Colors.yellow,fontSize:37, fontStyle: FontStyle.normal,fontWeight:FontWeight.w400),),),
            Container(height: 200,color: Colors.white, child: ListView(
              scrollDirection: Axis.horizontal,
              children:<Widget>[
                
                Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                        title: Image.asset("images/S/S5.png", height: 100, width: 50,),
                        subtitle: Text("facebook"
                            ,style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 16),
                            textAlign: TextAlign.center),
                    onTap: (){print("ClicApp->facebook");},
                    )
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                        title: Image.asset("images/S/S6.png", height: 60, width: 50,),
                        subtitle:Container(child: Text("gmail"
                            ,style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 16),
                            textAlign: TextAlign.center),),
                    onTap: (){print("ClicApp->gmail");},
                    )
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                        title: Image.asset("images/S/S3.png", height: 100, width: 50,),
                        subtitle:Container(child: Text("youtube"
                            ,style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 16),
                            textAlign: TextAlign.center),),
                    onTap: (){print("ClicApp->youtube");},
                    )
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                        title: Image.asset("images/S/S4.png", height:60 , width: 50,),
                        subtitle:Container(child: Text("WhatsApp"
                            ,style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 16),
                            textAlign: TextAlign.center),),
                    onTap: (){print("ClicApp->whatsapp");},
                    )
                ),
                Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                        title: Expanded(child: Image.asset("images/S/S2.png"),),
                        subtitle:Container(child: Text("Insta"
                            ,style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 16),
                            textAlign: TextAlign.center),),
                    onTap: (){print("ClicApp->instgram");},
                    )
                ),
                 Container(
                    height: 100,
                    width: 100,
                    child: ListTile(
                        title: Icon(Icons.pageview),
                        subtitle:Container(child: Text("more.."
                            ,style: TextStyle(color: Colors.black54, fontStyle: FontStyle.normal, fontSize: 16),
                            textAlign: TextAlign.center),),
                    onTap: (){print("ClicApp-> more app");},
                    )
                ),
              ]
              ,),),
              InkWell(onTap: (){
                Navigator.of(context).pushNamed('ShopList');
              },child:  Container( padding: EdgeInsets.all(10),color: Colors.black87, child: Text("Clothes" ,textAlign:TextAlign.center ,style: TextStyle(letterSpacing: 12, fontWeight: FontWeight.w400,fontSize: 37, color: Colors.yellow),), ),
          
           ),
             InkWell(onTap: (){
                Navigator.of(context).pushNamed('ShopList');
                },child:  Container(color:  Colors.black54,height: 500, child:GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: <Widget>[
              GridTile(child:Image.asset("images/h/h1.jpg",fit: BoxFit.cover),
              footer:Container(height:28 ,color: Colors.black54,child:Text("Picture1"
              ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900,color:Colors.grey,letterSpacing: 4),),),
              ),
             // RichText(text: TextSpan(children: <TextSpan>[]),), //Note^
              GridTile(child: Image.asset("images/h/h2.jpg",fit: BoxFit.cover)
              ,footer: Container(height: 28,color: Colors.black54, child: Text("Picture2"
              , textAlign:TextAlign.center, style:TextStyle(color: Colors.grey, fontWeight: FontWeight.w900,letterSpacing: 4)),),)
            ,GridTile(child: Image.asset("images/h/h1.jpg",fit: BoxFit.cover)
              ,footer: Container(height: 28,color: Colors.black54, child: Text("Picture3"
              , textAlign:TextAlign.center, style:TextStyle(color: Colors.grey, fontWeight: FontWeight.w900,letterSpacing: 4)),),)
           ,GridTile(child:Image.asset("images/h/h1.jpg",fit: BoxFit.cover),
              footer:Container(height:28 ,color: Colors.black54,child:Text("Picture4"
              ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w900,color:Colors.grey,letterSpacing: 4),),),
              ),
              GridTile(child: Image.asset("images/h/h2.jpg",fit: BoxFit.cover)
              ,footer: Container(height: 28,color: Colors.black54, child: Text("Picture5"
              , textAlign:TextAlign.center, style:TextStyle(color: Colors.grey, fontWeight: FontWeight.w900,letterSpacing: 4)),),)
            ,GridTile(child: Expanded(child:Image.asset("images/h/h1.jpg",fit: BoxFit.cover),)
              ,footer: Container(height: 28,color: Colors.black54, child: Text("Picture6"
              , textAlign:TextAlign.center, style:TextStyle(color: Colors.grey, fontWeight: FontWeight.w900,letterSpacing: 4)),),)
           
            ],)  ,),
           )
            

          ],),
        ) ;

  }
}