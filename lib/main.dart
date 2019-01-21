import 'package:flutter/material.dart';
import './control.dart';

import './pages/login.dart';
import './pages/displayFavourite.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{  
     
  
  @override
    Widget build(BuildContext context) {
      
      return MaterialApp(
        title: 'century',
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
          accentColor: Colors.deepPurpleAccent,
          // primarySwatch: Colors.red,
          brightness: Brightness.dark,
        ),

        home: Control(),
        routes: <String, WidgetBuilder> {
    '/login': (BuildContext context) => new Login(),
    '/favourite' : (BuildContext context) => new FavouriteDisplay([], 'string', [], true),
   
  },
      );
    }
}