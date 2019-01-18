import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/home.dart';

class Control extends StatefulWidget{
 
  Control();

  @override
    State<StatefulWidget> createState() {
  
      return _ControlState();
    }

    

  //boolean to determine which page to render on app launch
  bool isUserLoggedIn = true;
   bool isAdmin = false;


}

class _ControlState extends State<Control>{



  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: widget.isUserLoggedIn ? Login(): Home(true),
      );
    }
}