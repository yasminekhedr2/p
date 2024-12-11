import 'package:flutter/material.dart';
import 'package:task12/screens/signin.dart';
import 'package:task12/swidgets/custtombutton.dart';
import 'package:task12/swidgets/textfield.dart';
import 'package:email_validator/email_validator.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SigninState();
}

class _SigninState extends State<Signup> {
  bool isVisiable = true;
  bool isUpperCase = false;
  bool isLowerCase = false;
  bool isSpesialCharacter = false;
  onchangedPassword(String password) {
    setState(() {
      isUpperCase = false;
      isLowerCase = false;
      isSpesialCharacter = false;
      if (password.contains(RegExp(r'[A-Z]'))) {
        isUpperCase = true;
      }
      if (password.contains(RegExp(r'[a-z]'))) {
        isLowerCase = true;
      }
      if (password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        isSpesialCharacter = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Coffee Beans by Siede Preis.jpg"),
                fit: BoxFit.cover, 
              ),
            ),
           
            child:Padding(
              padding:EdgeInsets.only(top:150),
              child: Column(
              children: [  
                 Image(image: AssetImage("assets/hot-drink-coffee-cup-svgrepo-com (1).png"),height: 120),
                   SizedBox(height: 50,),
                
                CustomTextField(hinttext: "name", obscureText: false),
                CustomTextField(
                  validator: (value) {
                    return value != null && !EmailValidator.validate(value)
                        ? "Enter a valid email"
                        : null;
                  },
               
                  hinttext: "Email",
                  suffixIcon: const Icon(Icons.email),
                  obscureText: false),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisiable = !isVisiable;
                      });
                    },
                    icon: isVisiable
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off)),
                validator: (value) {
                  return value!.length < 6 ? "Enter at least 6 characters" : null;
                },
                onChanged: (password) {
                  onchangedPassword(password);
                },
               
                hinttext: "password",
                obscureText: isVisiable ? true : false,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Forgetpassword()));
                      },
                      child: Text("Forgot Password?",
                          style: TextStyle(
                           
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,),))),
                              CustomButton(
                text: "Login",
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   // return const MobileScreen();
                  // },));
                },
              ),
               Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,color: Colors.white,),
                    ),
                    TextButton(
                        onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Signin(),));
                        },
                        child: const Text("Signin",
                            style: TextStyle(
                               color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20)))
                  ],
                ),
              ),
                       
                              ],
              ),
            )
        ),
      ),
    );
  }
}