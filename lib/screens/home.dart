// import 'package:flutter/material.dart';
// import 'package:task12/components/category_item.dart';
// import 'package:task12/screens/drink.dart';

// class homepage extends StatelessWidget {
//   const homepage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return 
//       Scaffold(backgroundColor: Color(0xffF6F5F2 ),
//       appBar: AppBar(title: Text("Menue",style: TextStyle(color:Colors.black),),backgroundColor: Color(0xffF6F5F2),centerTitle: true,),
//       body: SingleChildScrollView(
//         child: Column(
          
//           children: [
//             Divider(color: Colors.brown,thickness: .5),
//           Category("Espresso", () => {Navigator.push(context,MaterialPageRoute(builder:(context) {
//             return Drink();
            
//           },))
//           } ,"assets/vecteezy_3d-realistic-coffee-cup-coffee-cup-cartoon_21049268.png"),
//          Divider(color: Colors.brown,thickness: .5,),
//          Category("Cappuccino", () => {Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_latte-coffee-isolated-illustration_23742396.png"),
//            Divider(color: Colors.brown,thickness: .5),
//         Category("Macciato",() =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_cappuccino-coffee-cup-cutout_23522886.png"),
//           Divider(color: Colors.brown,thickness: .5),
//           Category("Mocha", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_ai-generated-vanilla-latte-latte-with-vanilla-syrup-on_36159545.png"),
//            Divider(color: Colors.brown,thickness: .5),
//            Category("Latte", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_ai-generated-cups-of-hot-macchiato-coffee-with-transparent_36161843.png"),
//          Divider(color: Colors.brown,thickness: .5),
         
//                Category("Cortado", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_ai-generated-coffee-cup-isolated-on-transparent-background-png_35979547.png"),
//           Divider(color: Colors.brown,thickness: .5),
//                   Category("Dalgona Coffee", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_ai-generated-chai-latte-on-transparent-background_36160715.png"),
//           Divider(color: Colors.brown,thickness: .5),
//                   Category("Affogato", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_ai-generated-mocha-by-a-combination-of-espresso-steamed_36160719.png"),
//            Divider(color: Colors.brown,thickness: .5),
//                   Category("Cuban Coffee", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_ai-generated-latte-coffee-with-transparent-background_36161023.png"),
//         Divider(color: Colors.brown,thickness: .5),

//                   Category("Antoccino Coffee", () =>{Navigator.push(context,MaterialPageRoute(builder:(context){
//           return Drink();
//          },))
//           },"assets/vecteezy_ai-generated-latte-coffee-with-transparent-background_36161023.png"),
//           Divider(color: Colors.brown,thickness: .5)
        
         
          
//           ],
//         ),
//       ),

//      );

   
//   }}
import 'package:flutter/material.dart';
import 'package:task12/screens/cartpage.dart';
import 'package:task12/screens/drink.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F5F2),
      appBar: AppBar(
        title: const Text("Menu", style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xffF6F5F2),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // المنتجات
            productCard(context, "Espresso", 5.99, "assets/vecteezy_3d-realistic-coffee-cup-coffee-cup-cartoon_21049268.png"),
            productCard(context, "Cappuccino", 6.99, "assets/vecteezy_latte-coffee-isolated-illustration_23742396.png"),
            productCard(context, "Macciato", 7.99, "assets/vecteezy_cappuccino-coffee-cup-cutout_23522886.png"),
            productCard(context, "Mocha", 8.99, "assets/vecteezy_ai-generated-vanilla-latte-latte-with-vanilla-syrup-on_36159545.png"),
            productCard(context, "Latte", 5.49, "assets/vecteezy_ai-generated-cups-of-hot-macchiato-coffee-with-transparent_36161843.png"),

            productCard(context, "Antoccino Coffee", 9.9, "assets/vecteezy_ai-generated-latte-coffee-with-transparent-background_36161023.png"),
            productCard(context, "Cuban Coffee", 8.49, "assets/vecteezy_ai-generated-latte-coffee-with-transparent-background_36161023.png"),
            productCard(context, "Affogato", 2.33, "assets/vecteezy_ai-generated-chai-latte-on-transparent-background_36160715.png"),
            productCard(context, "Dalgona Coffee", 5.88, "assets/vecteezy_ai-generated-coffee-cup-isolated-on-transparent-background-png_35979547.png"),
            productCard(context, "Cortado", 5.49, "assets/vecteezy_ai-generated-cups-of-hot-macchiato-coffee-with-transparent_36161843.png"),

            // زر للانتقال إلى صفحة Checkout
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0), // مسافة حول الزر
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Checkout();
              }));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE1894B),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: const Text(
              "Go to Checkout",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  Widget productCard(BuildContext context, String name, double price, String image) {
    return Column(
      children: [
        Divider(color: Colors.brown, thickness: 0.5),
        ListTile(
          leading: Image.asset(image, width: 50, height: 50),
          title: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Drink(name: name, price: price, image: image);
              }));
            },
            child: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          subtitle: Text("\$$price", style: const TextStyle(fontSize: 16, color: Colors.grey)),
        ),
      ],
    );
  }
}



