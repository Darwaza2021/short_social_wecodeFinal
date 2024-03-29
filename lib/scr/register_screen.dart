import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shortsocial/data_model/general_user.dart';
import 'package:shortsocial/services/firestore_service.dart';

class RegisterScreenView extends StatefulWidget {
  RegisterScreenView({Key? key}) : super(key: key);

  @override
  State<RegisterScreenView> createState() => _RegisterScreenViewState();
}

class _RegisterScreenViewState extends State<RegisterScreenView> {
  final FirestoreServices _firestoreServices = FirestoreServices();

  TextEditingController _emailContoller = TextEditingController();

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _jobController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

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
      ), //

      body: SingleChildScrollView(
        child: Container(
              padding: EdgeInsets.fromLTRB(10,40,10,10),
              child: Form(
                child: Column(
                  children: [
                     Image.asset(
              'asset/logo.png',
              width: 210,),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _emailContoller,
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                          labelText: "Username",
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: _jobController,
                      decoration: InputDecoration(
                          labelText: "Job",
                          hintText: "Job",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: _trySubmit,
                      child: Text("Register"),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(200, 40),
                          textStyle: TextStyle(
                            fontSize: 20,
                          )),
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
      UserCredential theUserCredentials =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: _emailContoller.text, password: _passwordController.text);
      isValid = true;
    } on FirebaseAuthException catch (e) {
      print('register form error =========>' + e.message!);
    }

    GeneralUser _newUser = GeneralUser(
      email: _emailContoller.value.text,
      job: _jobController.value.text,
      password: _passwordController.value.text,
      username: _usernameController.value.text,
     // uid: _firebaseAuth.currentUser!.uid,
    );

    await _firestoreServices.addNewUser(_newUser);

    if (isValid) {
      // if the form text fields are valid
      print(_emailContoller.text);
      print(_usernameController.text);
      print(_passwordController.text);

      Navigator.pushNamed(context, "login_scr");
    }
  }
}
