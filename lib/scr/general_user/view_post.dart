import 'package:flutter/material.dart';
import 'package:shortsocial/data_model/posts.dart';
import 'package:shortsocial/scr/general_user/postCardWidges.dart';
import 'package:shortsocial/services/firestore_service.dart';

import '../../data_model/general_user.dart';

class ViewPostScreenView extends StatefulWidget {
  const ViewPostScreenView({ Key? key }) : super(key: key);

  @override
  _ViewPostScreenViewState createState() => _ViewPostScreenViewState();
}

class _ViewPostScreenViewState extends State<ViewPostScreenView> {
  @override
   final FirestoreServices _firestoreServices = FirestoreServices();
  Widget build(BuildContext context) {
    return Scaffold(

     appBar:AppBar(
       title: Text("View Post"),
       centerTitle: true ,
     ),


  body: Column(
        children: [
          Expanded(
            child: StreamBuilder<List<Post>>(
                stream: _firestoreServices.fetchPostData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return LinearProgressIndicator();
                  else if (snapshot.hasError)
                    return Center(child: Text('error ${snapshot.error}'));
                  else if (snapshot.data!.isEmpty) {
                    return Center(child: Text('no post available'));
                  }

                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 100,
                          child: PostCardWidges(post:snapshot.data![index])
                          
                      );
                    },
                  );
                }
              ),
          ),
        ],
      ),
    );
  }
}