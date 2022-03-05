import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shortsocial/scr/general_user/edit_profile_screen.dart';
import 'package:shortsocial/scr/login_screen.dart';

class HomeDashboardScreenView extends StatefulWidget {
  const HomeDashboardScreenView({ Key? key }) : super(key: key);

  @override
  _HomeDashboardScreenViewState createState() => _HomeDashboardScreenViewState();
}

class _HomeDashboardScreenViewState extends State<HomeDashboardScreenView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
      title: Text("User Dashboard"),
      centerTitle: true,
      ),
         

         body: Center(
           child: Container(
            child: Lottie.network("https://assets2.lottiefiles.com/packages/lf20_nxdrwzvn.json"),
           ),
         ),
      
      drawer:  Drawer(
        child:ListView(
          children:[
            UserAccountsDrawerHeader(
              currentAccountPicture: new CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1551847812-f815b31ae67c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
              ),
              accountName: Text("Student Name"), 
              accountEmail: Text("Student@gmail.com"),
              decoration:BoxDecoration(
                color: Colors.cyan,
              ) ,
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),

                onTap:(){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDashboardScreenView(),
                  ),
                );


                } ,
              ),
              ListTile(
                title: Text("Edit Profile"),
                leading: Icon(Icons.edit),

                onTap:(){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfileScreenView(),
                  ),
                );
                } ,
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.logout),

                onTap:()async{
                  await FirebaseAuth.instance.signOut();
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login_screen_view(),
                  ),
                    );
                } 
              )
          ]
        ),
         
      ),
    
      );


  }
}