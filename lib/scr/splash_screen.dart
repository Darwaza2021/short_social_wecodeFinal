import 'package:flutter/material.dart';
import 'package:shortsocial/scr/login_screen.dart';
import 'package:shortsocial/scr/register_screen.dart';


class SplashScreenView extends StatelessWidget {
   SplashScreenView({ Key? key }) : super(key: key);

  static const routName = 'Splash_screen_view';

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

      
    
        body: Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
          

              children: [

               
                   ElevatedButton(
                     onPressed: (){
                       Navigator.pushNamed(context,"login_scr");
                     },
                    child: Text("Login"),
                  
                 ),

                    ElevatedButton(
                     onPressed: (){
                      Navigator.pushNamed(context,"register_scr" );

                     },
                    child: Text("Register")
                 ),





              ],
            ),
          ],
        )



    
    
        ),
    );

      
    
  }
}