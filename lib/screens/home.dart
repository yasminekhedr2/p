import 'package:flutter/material.dart';
import 'package:task12/components/category_item.dart';
import 'package:task12/screens/drink.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(backgroundColor: Color(0xffF6F5F2 ),
      appBar: AppBar(title: Text("Menue",style: TextStyle(color:Colors.black),),backgroundColor: Color(0xffF6F5F2),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Divider(color: Colors.brown,thickness: .5),
          Category("Espresso", () => {Navigator.push(context,MaterialPageRoute(builder:(context) {
            return Drink();
            
          },))
          } ,"assets/vecteezy_3d-realistic-coffee-cup-coffee-cup-cartoon_21049268.png"),
         Divider(color: Colors.brown,thickness: .5,),
         Category("Cappuccino", () => {Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_latte-coffee-isolated-illustration_23742396.png"),
           Divider(color: Colors.brown,thickness: .5),
        Category("Macciato",() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_cappuccino-coffee-cup-cutout_23522886.png"),
          Divider(color: Colors.brown,thickness: .5),
          Category("Mocha", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_ai-generated-vanilla-latte-latte-with-vanilla-syrup-on_36159545.png"),
           Divider(color: Colors.brown,thickness: .5),
           Category("Latte", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_ai-generated-cups-of-hot-macchiato-coffee-with-transparent_36161843.png"),
         Divider(color: Colors.brown,thickness: .5),
         
               Category("Cortado", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_ai-generated-coffee-cup-isolated-on-transparent-background-png_35979547.png"),
          Divider(color: Colors.brown,thickness: .5),
                  Category("Dalgona Coffee", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_ai-generated-chai-latte-on-transparent-background_36160715.png"),
          Divider(color: Colors.brown,thickness: .5),
                  Category("Affogato", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_ai-generated-mocha-by-a-combination-of-espresso-steamed_36160719.png"),
           Divider(color: Colors.brown,thickness: .5),
                  Category("Cuban Coffee", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_ai-generated-latte-coffee-with-transparent-background_36161023.png"),
        Divider(color: Colors.brown,thickness: .5),
                  Category("Antoccino Coffee", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
          return Drink();
         },))
          },"assets/vecteezy_ai-generated-latte-coffee-with-transparent-background_36161023.png"),
          Divider(color: Colors.brown,thickness: .5)
        
         
          
          ],
        ),
      ),

     );

   
  }}
 