import 'package:flutter/material.dart';


class SingleMovie extends StatelessWidget{
  final movieObject;
  SingleMovie(this.movieObject);

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(movieObject.movie_title),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.redAccent,),
              onPressed: (){
                print('added as favourite');
              },
            )
          ],
        ),
        body: Material(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset('images/movie1.jpg', fit: BoxFit.cover),
                    )
                  ],
                )
              ),
              ),

              Expanded(
                flex: 2,
                child: Padding(
                padding: EdgeInsets.all(30.0),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text('Title: ${movieObject.movie_title}', style: TextStyle(
                      // fontWeight: FontWeight.bold, 
                      fontSize: 14.0
                    ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text('Description: ${movieObject.movie_description}', style: TextStyle(
                      // fontWeight: FontWeight.bold, 
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),),
                    ),

                     Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text('Showing: ${movieObject.showing_time}', style: TextStyle(
                      // fontWeight: FontWeight.bold, 
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text('Actors:', style: TextStyle(
                      
                      fontSize: 14.0,
                       color: Colors.grey,
                    ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0, left:30.0),
                      child: Text('Actor 1', style: TextStyle(
                      
                      fontSize: 14.0,
                       color: Colors.grey,
                    ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0, left:30.0),
                      child: Text('Actor 2', style: TextStyle(
                      
                      fontSize: 14.0,
                       color: Colors.grey,
                    ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0, left:30.0),
                      child: Text('Actor 3', style: TextStyle(
                      
                      fontSize: 14.0,
                       color: Colors.grey,
                    ),),
                    ),
                    
                  ],
                ),
              ),
              )
            ],
          ),
        ),
      );
    
    }
}