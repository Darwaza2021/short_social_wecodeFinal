import 'package:flutter/material.dart';

class RegisterScreenView extends StatelessWidget {
   RegisterScreenView({ Key? key }) : super(key: key);
    static const routName = "register_screen_view";

  TextEditingController _loginContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      title: Text("Register"),
      centerTitle: true,

      ),//

      body: SingleChildScrollView(
      
        child: Container(
          
          child: Form(
            child: Column(
              
            children: [
              SizedBox(height: 100,),

              TextFormField(
                controller:_loginContoller ,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText:  "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),

              SizedBox(height: 25,),
              TextFormField(
                controller:_loginContoller ,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText:  "Password",
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )

                ),
              ),


              SizedBox(height: 25,),

                  ElevatedButton(
                     onPressed: (){
                     },
                     
                    child: Text("Login")
                 ),

            ],
          ),
          ),
        ),
      ),
      
    );
  }
}