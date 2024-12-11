import 'package:flutter/material.dart';
import 'package:task12/screens/signin.dart';
import 'package:task12/screens/signup.dart';
import 'package:task12/swidgets/custtombutton.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Coffee Beans by Siede Preis.jpg"),
              fit: BoxFit.cover, 
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top:150),
              child: Column(
                children: [
              Image(image: AssetImage("assets/hot-drink-coffee-cup-svgrepo-com (1).png"),height: 120),
              SizedBox(height: 20,),

                  Text(
                    "Find the best coffee",
                    style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                     Text(
                    "for you",
                    style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 300,),
                  CustomButton(text: "Get Started",onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signin(),));
                    
                  }, ),
                ],
              ),
            ),
          ),
        ),
      );
    
    
  }
}