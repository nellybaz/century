

//JUST FOR BACKUP, NOT USED IN APP


import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return CustomScrollView(
        scrollDirection: Axis.vertical,
    slivers: <Widget>[
      SliverAppBar(
        title: Text('Century Cinema'),
        backgroundColor: Colors.green,
        expandedHeight: 200.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('images/century_banner.jpg', fit: BoxFit.cover),
        ),
      ),
      SliverFixedExtentList(
        itemExtent: 150.0,
        delegate: SliverChildListDelegate(
          [
            Container(child: Text('hello'),
            color: Colors.red),
            Container(color: Colors.purple),
            Container(color: Colors.green),
            Container(color: Colors.orange),
            Container(color: Colors.yellow),
            Container(color: Colors.pink),
          ],
        ),
      ),
    ],
);
    }
}