import 'package:flutter/material.dart';
import 'package:shortsocial/login_screen.dart';
import 'package:shortsocial/register_screen.dart';


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
                       Navigator.pushNamed(context,Login_screen_view.routName );
                     },
                    child: Text("Login"),
                  
                 ),

                    ElevatedButton(
                     onPressed: (){
                      Navigator.pushNamed(context,RegisterScreenView.routName );

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