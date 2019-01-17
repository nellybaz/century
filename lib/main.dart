import 'package:flutter/material.dart';
import './control.dart';

import './pages/home.dart';
import './pages/login.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{  
  @override
    Widget build(BuildContext context) {
      
      return MaterialApp(
        title: 'century',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          brightness: Brightness.dark,
        ),

        home: Control(),
        routes: <String, WidgetBuilder> {
    '/login': (BuildContext context) => new Login(),
    '/home' : (BuildContext context) => new Home(),
   
  },
      );
    }
}