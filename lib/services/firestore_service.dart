


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shortsocial/data_model/general_user.dart';

class FirestoreServices{

final  FirebaseFirestore  _firebaseFirestore= FirebaseFirestore.instance;



Future<void> addNewUser(GeneralUser newUser) async{


await _firebaseFirestore.
collection('users').
add(newUser.toMap());

}


// Stream<List<GeneralUser>>? streamOfGEneralUsers({

// })
}