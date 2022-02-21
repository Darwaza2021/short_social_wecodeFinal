


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shortsocial/data_model/general_user.dart';

class FirestoreServices{

final  FirebaseFirestore  _firebaseFirestore= FirebaseFirestore.instance;

  User? user = FirebaseAuth.instance.currentUser;




Future<void> addNewUser(GeneralUser newUser) async{


await _firebaseFirestore.
collection('users').doc(newUser.uid).set
(newUser.toMap());

}

// Stream<List<GeneralUser>>? streamOfGEneralUsers({
// })
}