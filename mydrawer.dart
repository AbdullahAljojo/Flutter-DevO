import'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    
 return  Drawer(
            
            child: ListView(
                children: <Widget>[
                  // Head Drawer 🤩
                  UserAccountsDrawerHeader(
                    accountEmail:Text("aljwjwbdallh@gmail.com"),
                    accountName:Text("abdullah") ,
                    currentAccountPicture: CircleAvatar(child: Icon(Icons.person), backgroundColor: Colors.black54 ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/FlutterDevo.jpg"), fit: BoxFit.fill,
                        )
                    ),
                  ),


                  // Body Drawer 😋
                  ListTile(
                    title: Text("Main Page", style:TextStyle(color:Colors.black , fontSize: 20 , fontStyle:FontStyle.normal, backgroundColor: Colors.white ) , ),
                    leading: Icon(Icons.home , color: Colors.amber, size:24 ),
                    trailing: Icon(Icons.outbond_outlined, color: Colors.black45, size: 18,),
                    subtitle:Text("subtitle..",textAlign: TextAlign.left, style: TextStyle(color: Colors.black38, fontStyle: FontStyle.italic ) ),
                    isThreeLine: true,
                    dense: true,
                    //function 😎
                    onTap: () {
                      Navigator.of(context).pushNamed('main');
                    }, ),

                  ListTile(
                    title: Text(" Closthes ", style: TextStyle(color: Colors.black, fontSize: 17),),
                    leading: Icon(Icons.category_sharp , color: Colors.amber, size: 24,),
                    trailing: Icon(Icons.category , color: Colors.black, size:13,),
                    subtitle: Text("sub.." , style: TextStyle(color: Colors.black38, fontStyle: FontStyle.italic ) ),
                    isThreeLine: true ,
                    onTap: () {
                      Navigator.of(context).pushNamed('clothes');
                    },
                    dense:true ,
                  ),
                  Divider(color: Colors.black45, height: 15, thickness: 0 ),
                  ListTile(
                    title: Text(" Exit ", style: TextStyle(color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic),),
                    leading: Icon(Icons.exit_to_app, color: Colors.amber, size: 24,),
                    trailing: Icon(Icons.outbox, color: Colors.black, size:13,),
                    subtitle: Text("sub.." , style: TextStyle(color: Colors.black38, fontStyle: FontStyle.italic ) ),
                    isThreeLine: true ,
                    onLongPress: (){
                      print(" LongTab");
                    },
                    onTap: () {
                      print("Tap");
                    },
                    dense:true ,
                  ),
                ]
            ),) ;
  }

}