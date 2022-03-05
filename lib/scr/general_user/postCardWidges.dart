import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shortsocial/data_model/posts.dart';


class PostCardWidges extends StatelessWidget {
  final Post post ; 
   PostCardWidges({ Key? key, required this.post }) : super(key: key);
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(   
          color: Colors.cyan,
          child: ListTile(
            title: Text(post.title.toString()),
            //subtitle: Text(job.jobDesc),
            trailing: Container(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 150,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                        
                          
                          // add the job to the favs collection
                          await _firebaseFirestore
                           
                              .collection('post')
                              .add(post.toMap());
      
                          // set/add
                        },
                        icon: const Icon(Icons.api),
                        ),
                        
                    Expanded(
                      child: Column(
                        children: [
                          Text('likes'),
                          Text(post.like.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  FaIcon(heart) {}
}

class FontAwesomeIcons {
  static var heart;
}