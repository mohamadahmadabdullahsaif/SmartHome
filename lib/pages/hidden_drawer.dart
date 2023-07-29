

import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:modernlogintute/core/color/colorglobal.dart';
import 'package:modernlogintute/pages/home_page.dart';
import 'package:modernlogintute/pages/new_devices.dart';
import 'package:modernlogintute/pages/setting_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages=[];
  final myTextStyle =TextStyle (
  fontWeight: FontWeight.bold,
  color: appcolor.basic_color,
  fontSize: 18
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages =[
      ScreenHiddenDrawer(

          ItemHiddenMenu(
            name: "HomePage" ,
            baseStyle: myTextStyle,
colorLineSelected: Colors.white,
            selectedStyle: TextStyle(),
          ),
          HomePage()),
      ScreenHiddenDrawer(

          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: "New Device" ,
            baseStyle: myTextStyle,
            selectedStyle: TextStyle(),
          ),
          NewDevice()),
      ScreenHiddenDrawer(

          ItemHiddenMenu(
            colorLineSelected: Colors.white,
            name: "Settings" ,
            baseStyle: myTextStyle,
            selectedStyle: TextStyle(),
          ),
          SettingScreen()),
      ScreenHiddenDrawer(

          ItemHiddenMenu(

            colorLineSelected: Colors.white,
            name: "About" ,
            baseStyle: myTextStyle,
            selectedStyle: TextStyle(),
          ),
          HomePage()),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return  HiddenDrawerMenu(


slidePercent: 60,
tittleAppBar: Text(""
    ""
    ""
    ""
    ""),
      contentCornerRadius: 20,
backgroundColorAppBar: appcolor.basic_color,
      backgroundColorMenu: Colors.black87,
      leadingAppBar:



      Image.asset("images/menu.png",
      color: appcolor.texticoncolor,) ,
        actionsAppBar: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person,color: appcolor.texticoncolor,
          size: 35,))

        ],




        screens: _pages,
initPositionSelected: 0,

    );




  }
}
