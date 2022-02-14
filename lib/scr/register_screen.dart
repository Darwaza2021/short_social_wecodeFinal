import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreenView extends StatefulWidget {
   RegisterScreenView({ Key? key }) : super(key: key);

  @override
  State<RegisterScreenView> createState() => _RegisterScreenViewState();
}

class _RegisterScreenViewState extends State<RegisterScreenView> {

  TextEditingController _emailContoller = TextEditingController();

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _jobController = TextEditingController();

    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final FirebaseFirestore  _firebaseFirestore = FirebaseFirestore.instance;

  var isValid = false;

    @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailContoller.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _jobController.dispose();
    super.dispose();
  }

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
                controller:_emailContoller ,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText:  "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              
              TextFormField(
                controller:_usernameController ,
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText:  "Username",
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

              TextFormField(
                controller:_jobController ,
                decoration: InputDecoration(
                  labelText: "Job",
                  hintText:  "Job",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),

              SizedBox(height: 25,),

                  ElevatedButton(
                     onPressed: _trySubmit,
                     
                    child: Text("Login")
                 ),
            ],
          ),
          ),
        ),
      ),
    );
  }

  void _trySubmit() async {
    
    try {
      UserCredential theUserCredentials = await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: _emailContoller.text,
            password: _passwordController.text);
            isValid = true;

    } on FirebaseAuthException catch (e) {
      print( 'register form error =========>' + e.message!);

    }
  
    
    if (isValid) {
      // if the form text fields are valid
      print(_emailContoller.text);
      print(_usernameController.text);
      print(_passwordController.text);

      Navigator.pushNamed(context, "login_scr");
    }
  }
}