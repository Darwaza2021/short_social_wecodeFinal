import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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