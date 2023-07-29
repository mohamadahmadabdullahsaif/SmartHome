import 'package:flutter/material.dart';
import 'package:modernlogintute/components/my_button.dart';
import 'package:modernlogintute/components/my_textfield.dart';
import 'package:modernlogintute/components/square_tile.dart';
import 'package:get/get.dart';
import 'package:modernlogintute/core/color/colorglobal.dart';

import '../widget/textglobal.dart';
import 'hidden_drawer.dart';
import 'home_page.dart';
import 'sign_in.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.basic_color,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
               Icon(
                Icons.lock,
                size: 100,
                color: appcolor.texticoncolor,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: appcolor.texticoncolor,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              textglobal(passwordController: passwordController, hint: 'Username', obs: false,),

              const SizedBox(height: 10),

              // password textfield
              textglobal(passwordController: passwordController, hint: 'Password', obs: true,),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: (){
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signin()));
                  Get.to(()=>HiddenDrawer());
                },
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: appcolor.texticoncolor),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

               SizedBox(height: 50),

              // google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // google button
                  SquareTile(imagePath: 'images/google.png'),

                   SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'images/apple.png')
                ],
              ),
              const SizedBox(height: 30),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: appcolor.texticoncolor,fontSize: 10),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      Get.to(()=>Signin());
                    },
                    child:  Text(
                      'Register now',
                      style: TextStyle(
                        color: appcolor.linktext,fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


