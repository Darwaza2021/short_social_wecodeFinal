import 'package:flutter/material.dart';
import 'package:shortsocial/scr/general_user/edit_profile_screen.dart';
import 'package:shortsocial/scr/register_screen.dart';
import 'package:shortsocial/scr/splash_screen.dart';
import 'package:shortsocial/scr/general_user/user_dashboard_screen.dart';

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

       theme: ThemeData(
        primarySwatch: Colors.cyan,
        backgroundColor: Colors.cyan,
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: Colors.cyan,
          textTheme: ButtonTextTheme.primary,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            

          ),
                      

        ),
        

      ),
      
      

    

   initialRoute: "/",
  routes: {

    //"/":(context)=>Notification_view(),
    //"/":(context)=>NewSql(),
    //
    "/":(context)=>SplashScreenView(),
    "login_scr":(context)=>Login_screen_view(),
    "register_scr":(context)=>RegisterScreenView(),
    "user_dashbord_scr":(context)=>UserDashboard(),
  },

    );
  
  }
}

 
