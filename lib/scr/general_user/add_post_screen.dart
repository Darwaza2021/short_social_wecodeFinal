import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shortsocial/data_model/posts.dart';

import '../../services/firestore_service.dart';

class AddPostView extends StatefulWidget {
  const AddPostView({ Key? key }) : super(key: key);

  @override
  _AddPostViewState createState() => _AddPostViewState();
}

class _AddPostViewState extends State<AddPostView> {

 TextEditingController _postTitleController = TextEditingController();
  final FirebaseFirestore  _firebaseFirestore = FirebaseFirestore.instance;
  final FirestoreServices _firestoreServices = FirestoreServices();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Add Post"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.network("https://assets9.lottiefiles.com/private_files/lf30_gup9fslr.json"),
      
           const SizedBox(height:50),
            Card(
            color: Color.fromARGB(209, 116, 74, 255),
            
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
      
              TextField(
             style:new TextStyle(fontSize: 22.0, color: Colors.white),
                controller: _postTitleController,
                decoration:InputDecoration(
                  hintText: "Write any thing here",  
                )
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Post',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                    onPressed: () {
                      _trySubmit();
                    },
                  ),
                  const SizedBox(width: 8),
                 
                ],
              ),
            ],
          ),
          
        ),
          ]
            ),
      )
    );
    
  }
    void _trySubmit() async {
    
   


     Post _newPost = Post(
                    title: _postTitleController.text,
                        );

                      await _firestoreServices.addPosts(post:_newPost );
         
   

    
    }
  }
  
