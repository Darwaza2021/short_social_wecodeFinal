import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app_view.dart';


void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => debugPrint('initialized'));
 UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();

  runApp(AppView(),
  );
}

// void main()async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp().then((value) => print('initialized'));
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
      
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(

//         appBar: AppBar(
//           title: Text("short social"),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: ()=>FirebaseFirestore.instance.collection("test")
//           .add({'timestamp':Timestamp.fromDate(DateTime.now())}),
//         ),

//       )
//     );
//   }
// }


