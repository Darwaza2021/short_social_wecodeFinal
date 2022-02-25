import 'package:flutter/material.dart';

class ViewPostScreenView extends StatefulWidget {
  const ViewPostScreenView({ Key? key }) : super(key: key);

  @override
  _ViewPostScreenViewState createState() => _ViewPostScreenViewState();
}

class _ViewPostScreenViewState extends State<ViewPostScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar:AppBar(
       title: Text("View Post"),
       centerTitle: true ,
     ),

    );
  }
}