import 'package:flutter/material.dart';
import '../compound/mydrawer.dart';
import '../compound/ShopList.dart';


class Shoping extends StatefulWidget{

  State<StatefulWidget>  createState(){
  
  return ShopState();
  }}
class ShopState extends State<Shoping>{

    var shortlist=[{
        'Name' : ' A',
        'Modle' : 'adidas',
         'Color' : 'White',
         'Price' : '1700\$',
    },{

        'Name' : ' B',
        'Modle' : 'Poma',
         'Color' : 'Green',
         'Price' : '1800\$',

    }, ];
   @override
  Widget build(BuildContext context) {
                
           return Scaffold(appBar: AppBar(actions: [
             IconButton(icon: Icon(Icons.home_outlined,color: Colors.black54,),onPressed: (){
                Navigator.of(context).pushNamed('main');
             },)],
             title: Text("Shoping",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700, color:Colors.black54),),
           centerTitle: true,
           elevation: 20,
           backgroundColor: Colors.yellow,

           ),
             drawer: MyDrawer(),
             body: ListView.builder( 
               itemCount: shortlist.length,
               itemBuilder: (context,i){
  
                 return ShopList(Name:shortlist[i]['Name'],Modle: shortlist[i]['Modle'],Color: shortlist[i]['Color'],Price: shortlist[i]['Price']);
               }


             )
             
           );
  }
}
