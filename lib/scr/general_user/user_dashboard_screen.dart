import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shortsocial/data_model/general_user.dart';
import 'package:shortsocial/scr/general_user/add_post_screen.dart';
import 'package:shortsocial/scr/general_user/home_dashbord_screen.dart';
import 'package:shortsocial/scr/general_user/view_post.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({ Key? key }) : super(key: key);

  @override
  _UserDashboardState createState() => _UserDashboardState();
}
class _UserDashboardState extends State<UserDashboard> {


   int _currentIndex = 0;
  List<Widget> _screens = [HomeDashboardScreenView(),AddPostView(), ViewPostScreenView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
  
      body: _screens[_currentIndex], 
       bottomNavigationBar: BottomNavigationBar(

           currentIndex: _currentIndex,
        onTap: (_tappedIndex) {
          setState(() {
            _currentIndex = _tappedIndex;
          });
        },
        items: const <BottomNavigationBarItem>[

           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'Add Post',
            backgroundColor: Colors.red,
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: 'View Posts',
            backgroundColor: Colors.green,
          ),
          
        ],
      ),


    );
  }
}