import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modernlogintute/core/color/colorglobal.dart';
import 'package:modernlogintute/pages/home_page.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(


          backgroundColor: appcolor.basic_color,
          body:
          Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,


                children: [

                  Image.asset("images/splash.png",height: 250)
                  ,

SizedBox(height: 30,),
Text("SMART HOME APP",style: GoogleFonts.oswald(fontSize:20),



)
                ]


            ),
          )),
    );
  }

  @override
  void initState() {
    // Timer(Duration(milliseconds: 2000), ()
    // {
    //   Get.to(LoginPage());}
    //   //Navigator.pushReplacement(context, MaterialPageRoute(builder: (x)=> HomeScreen()));
    // );
  }
}
