import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'scr/app_view.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp().then((value) => print('initialized'));

  runApp(AppView());
}

