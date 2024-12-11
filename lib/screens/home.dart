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
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Divider(),
          Category("Espresso", Colors.white,() => {Navigator.push(context,MaterialPageRoute(builder:(context) {
            return Espresso();
            
          },))
          } ,"https://www.shutterstock.com/image-photo/coffee-mug-grinded-beans-concept-600nw-2500190129.jpg"),
           Divider(),
         Category("Cappuccino",  Colors.white,() => {Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP5LJtzMZ6SIwXj3ootFyHAzK-9nwHwX0Cm_dOV1NwbnQy5GHRryS3k7HeFGUE5_65mLk&usqp=CAU"),
           Divider(),
        Category("Macciato",  Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://static.vecteezy.com/system/resources/thumbnails/025/525/261/small_2x/white-cup-of-coffee-with-coffee-beans-on-white-background-ai-generated-image-photo.jpg"),
           Divider(),
          Category("Mocha", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://www.shutterstock.com/image-photo/cup-americano-coffee-on-saucer-260nw-2497850779.jpg"),
           Divider(),
           Category("Latte", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://img.freepik.com/premium-photo/hot-coffee-cappuccino-cup-top-view-isolated-white-background_410516-42262.jpg"),
           Divider(),
         
               Category("Cortado", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://www.shutterstock.com/image-photo/close-shot-hot-latte-coffee-260nw-2248642713.jpg"),
           Divider(),
                  Category("Dalgona Coffee", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://img.freepik.com/premium-photo/hot-coffee-cappuccino-cup-top-view-isolated-white-background_410516-42262.jpg"),
           Divider(),
                  Category("Affogato", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://img.freepik.com/premium-photo/top-view-coffee-cup-with-espresso-isolated-white-background_958808-38451.jpg"),
           Divider(),
                  Category("Cuban Coffee", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP5LJtzMZ6SIwXj3ootFyHAzK-9nwHwX0Cm_dOV1NwbnQy5GHRryS3k7HeFGUE5_65mLk&usqp=CAU"),
           Divider(),
                  Category("Antoccino Coffee", Colors.white,() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Espresso();
         },))
          },"https://www.shutterstock.com/image-photo/coffee-mug-grinded-beans-concept-600nw-2500190129.jpg"),
           Divider(),
        
         
          
          ],
        ),
      ),

     );

   
  }}
 