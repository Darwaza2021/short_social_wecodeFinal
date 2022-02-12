import 'package:flutter/material.dart';
import 'package:shortsocial/register_screen.dart';
import 'package:shortsocial/splash_screen.dart';

import 'login_screen.dart';


class AppView extends StatefulWidget {
  const AppView({ Key? key }) : super(key: key);

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    

   initialRoute: "/",
  routes: {

    "/":(context)=>SplashScreenView(),
    "login_scr":(context)=>Login_screen_view(),
    "register_scr":(context)=>RegisterScreenView(),
  },

    );
  
  }
}

 
