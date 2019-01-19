import 'package:flutter/material.dart';
import './single_movie.dart';

import './dashboard.dart';

class Home extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      return _HomeState();
    }

//to determine what actions to display depending on the user priviledges
  final bool isAdmin;
  Home(this.isAdmin);
  
  
// holding all movies to display
  List<Movies> movie_names = [
  new Movies('Last Man on Earth', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),
  new Movies('Black Panther', 'Best Movies', 'Wed 12, 2019 11:30 AM'),

  ];

 

 
 
// a function that populates a list of widget with all Movies object, to display on the screen
  List _populateMoviesList(){

     movie_names.sort((a,b)=> a.movie_title.compareTo(b.movie_title) );
     
      List<Widget> final_movies_list = [];

      for(int x=0; x < movie_names.length; x++){
        String img = 'images/movie${x+1}.jpg';

        if(x > 1){
          if( x % 2 == 0){
              img = 'images/movie${1}.jpg';
          }

          else{
            img = 'images/movie${2}.jpg';
          }
          
        }

        else{
           img = 'images/movie${x+1}.jpg';
        }

         final_movies_list.add(Container(color: Colors.white, 
            child: Builder(
              builder: (BuildContext context){
                return FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: (){
                print(x);
                
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingleMovie(movie_names[x])),);
              },
              child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Image.asset(img, fit: BoxFit.cover,)),
                
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text(movie_names[x].movie_title, style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                  ),
                  )),
                ),

                
                Expanded(
                  flex: 1,
                  child:
                  Column(
                    children: <Widget>[
Text( 'Showing:', style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.purple,
                    decoration: TextDecoration.none
                  ),
                  ),

                  Text(movie_names[0].showing_time , style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.purple,
                    decoration: TextDecoration.none
                  ))

                    ],
                  )
                   ,
                ),
                 
              ],
            ),
            );

              },
            ),
         ));
      }


      return final_movies_list;
  }



}

class _HomeState extends State<Home>{

  // a function that populates the movies list by adding new movie object to it
   popMoviesList(title, des, time){
      Movies newMovie = new Movies(title, des, time="Wed 12th July 2019 10:10 AM");

      widget.movie_names.add(newMovie);
  }

  @override
    Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
CustomScrollView(
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
      SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: widget._populateMoviesList(),
      ),
    ),
  
    ],

    
),
  new Positioned(
            //top: 200.0,
            bottom: 0.0,
            right: 16.0,
            child: new FloatingActionButton(
              backgroundColor: Colors.deepPurpleAccent,
              onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Dashboard(popMoviesList, widget.isAdmin)));
              },
              child: new Icon(Icons.menu, color: Colors.white,),
            ))
                
    
     
       
        ],
      );
    }
}


//Movie class for my movies list

class Movies{

  final movie_title;
  final movie_description;
  final showing_time;
  Movies(this.movie_title, this.movie_description, this.showing_time);
}