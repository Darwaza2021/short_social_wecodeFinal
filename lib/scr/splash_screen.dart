import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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

                Lottie.network('https://assets9.lottiefiles.com/packages/lf20_x2ejxgsa.json',
                 width: 401,
                 height: 400 ),
                // Lottie.asset('assets/d.json',
                // width: 400,
                // height: 400),

               
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