


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:shortsocial/data_model/general_user.dart';
import 'package:shortsocial/data_model/posts.dart';

class FirestoreServices{

final  FirebaseFirestore  _firebaseFirestore= FirebaseFirestore.instance;

  User? user = FirebaseAuth.instance.currentUser;


 addNewUser(GeneralUser newUser) async{
await _firebaseFirestore.
collection('users').doc(newUser.uid).set
(newUser.toMap());
}

addPosts(
      {required Post post,  GeneralUser? generalUser}) async {
    await _firebaseFirestore
       // .collection('users')
      //  .doc(generalUser?.uid)
        .collection('posts')
        .add(post.toMap());
}


Stream<List<Post>> fetchPostData() {
    return _firebaseFirestore.collection('posts').snapshots().map((event) {
      debugPrint('docs length =======>' + event.docs.length.toString());

      return event.docs
          .map(
            (doc) => Post.fromMap(
              doc.data(),
            ),
          )
          .toList();
    });
  }
}