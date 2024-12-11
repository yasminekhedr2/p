import 'package:flutter/material.dart';
import 'package:task12/components/category_item.dart';
import 'package:task12/screens/espresso.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Menue",style: TextStyle(color:Colors.black),),backgroundColor: Colors.white,centerTitle: true,),
      body: Column(
  
        children: [
          Divider(),
        Category("Espresso", Colors.white,() => {Navigator.push(context,MaterialPageRoute(builder:(context) {
          return Espresso();
          
        },))
        } ,"assets/rb_19765.png"),
         Divider(),
       Category("Cappuccino",  Colors.white,() => {Navigator.push(context,MaterialPageRoute(builder:(context){
        return Espresso();
       },))
  },"assets/rb_57993.png"),
   Divider(),
      Category("Macciato",  Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
        return Espresso();
       },))
  },"assets/rb_10312.png"),
   Divider(),
        Category("Mocha", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
        return Espresso();
       },))
  },"assets/rb_14627.png"),
   Divider(),
         Category("Latte", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
        return Espresso();
       },))
  },"assets/rb_57993.png"),
   Divider(),
 
          
        
        ],
      ),

     );

   
  }}
 