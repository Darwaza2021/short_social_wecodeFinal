import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shortsocial/services/firestore_service.dart';

import '../../data_model/general_user.dart';

class EditProfileScreenView extends StatelessWidget {
  EditProfileScreenView({Key? key}) : super(key: key);

  final TextEditingController _bioController = TextEditingController();
     
      final FirestoreServices _firestoreServices = FirestoreServices();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Account"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Form(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1551847812-f815b31ae67c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
                  radius: 60,
                ),
                TextButton(
                    onPressed: () {}, child: Text("Change Profile Image")
                    ),
                TextFormField(
                  controller: _bioController,
                  decoration: InputDecoration(
                      labelText: "Bio",
                      hintText: "Bio",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                ElevatedButton(
                  onPressed: _trySubmit,
                  
                 child: Text("Edit"),
                 
                 style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 40),
                      textStyle: TextStyle(
                        fontSize: 20,
                      )),
              
                )
              ],
            ),
          ),
        ));
  }


  void _trySubmit() async {
     GeneralUser _newUser = GeneralUser(
                            bio: _bioController.value.text,
                        );
                      await _firestoreServices.addNewUser(_newUser);
        
  }

}
