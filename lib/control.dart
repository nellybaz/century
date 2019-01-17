import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/home.dart';

class Control extends StatelessWidget{

  //boolean to determine which page to render on app launch
  final isUserLoggedIn = true;

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: isUserLoggedIn ? Login(): Home(),
      );
    }
}