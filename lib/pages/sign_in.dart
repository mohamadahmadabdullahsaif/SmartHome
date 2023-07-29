import 'package:flutter/material.dart';
import 'package:modernlogintute/components/my_button.dart';
import 'package:modernlogintute/components/my_textfield.dart';
import 'package:modernlogintute/components/square_tile.dart';
import 'package:get/get.dart';
import 'package:modernlogintute/core/color/colorglobal.dart';
import 'package:modernlogintute/pages/hidden_drawer.dart';

import '../widget/textglobal.dart';
import 'home_page.dart';
import 'login_page.dart';

class Signin extends StatelessWidget {
  Signin({super.key});

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
              const SizedBox(height: 20),

              // logo
               Icon(

                Icons.lock,
                size: 70,
                color: appcolor.texticoncolor,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(

                'SIGN UP',
                style: TextStyle(
                  color: appcolor.texticoncolor,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              textglobal(passwordController: passwordController, hint: 'Firstname', obs: false,),

              const SizedBox(height: 10),

              // password textfield
              textglobal(passwordController: passwordController, hint: 'Lastname', obs: true,),
              const SizedBox(height: 10),
              textglobal(passwordController: passwordController, hint: 'Username', obs: true,),
              const SizedBox(height: 10),
              textglobal(passwordController: passwordController, hint: 'password', obs: true,),



              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: (){
                  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  Get.to(()=>HiddenDrawer());
                },
              ),

              const SizedBox(height: 15),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.9,
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
                        thickness: 0.9,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

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
                    'already have an account?',
                    style: TextStyle(color: appcolor.texticoncolor,fontSize: 10),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: (){
                      Get.to(LoginPage());
                    },
                    child:  Text(
                      'Login',
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
