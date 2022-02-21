import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login_screen_view extends StatefulWidget {
   Login_screen_view({ Key? key }) : super(key: key);
  static const routName = "login_screen_view";

  @override
  State<Login_screen_view> createState() => _Login_screen_viewState();
}

class _Login_screen_viewState extends State<Login_screen_view> {
  TextEditingController _emailContoller = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

   var isValid = false;
  final _formKey = GlobalKey<FormState>();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      

      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
      
        child: Container(
          
          child: Form(
            key: _formKey,
            child: Column(
              

            children: [

              SizedBox(height: 100,),

              TextFormField(
                controller:_emailContoller ,
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
                controller:_passwordController ,
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
                     onPressed:   _tryLogin,
                     
                     
                     
                    child: Text("Login")
                 ),

            ],
          ),
          ),
        ),
      ),
    );
  }

  //trySUbmit funcion after pressed the submit button
   void _tryLogin() async {
    FocusScope.of(context).unfocus();

    if (_formKey.currentState!.validate()) {
      try {
        UserCredential userCredentials =
            await _firebaseAuth.signInWithEmailAndPassword(
                email: _emailContoller.text,
                password: _passwordController.text);
        isValid = true;
      } on FirebaseAuthException catch (e) {
        print(e.toString());
      }

    //add the scackBar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Processing Data'),
          duration: Duration(seconds: 2),
        ),
      );
    }

    if (isValid) {
      // if the form text fields are valid
      print(_emailContoller.text);
      print(_passwordController.text);

      Navigator.pushNamed(context, "user_dashbord_scr");
    // todo: show an error when the email or the password was wrong
  }
}
}