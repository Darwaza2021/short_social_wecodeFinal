import 'package:flutter/material.dart';
import 'package:shortsocial/data_model/general_user.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({ Key? key,this.general_User }) : super(key: key);
  final GeneralUser? general_User;

  @override
  _UserDashboardState createState() => _UserDashboardState();
}


class _UserDashboardState extends State<UserDashboard> {

  String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("User Dashboard"),
      centerTitle: true,
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

                } ,
              ),
              ListTile(
                title: Text("Edit Profile"),
                leading: Icon(Icons.edit),

                // onTap:(){
                //   Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => StudentSettingsScreen(),
                //   ),
                // );
                // } ,
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.logout),

                onTap:(){} ,
              )
          ]
        ),
         
      ),


    );
  }
}