import 'package:flutter/material.dart';
import './addmovie.dart';
import './displayFavourite.dart';

import './login.dart';


class Dashboard extends StatelessWidget{
  final popMovieList;
  final isAdmin;
  final favList;
  final deleteFav;
  final movieList;

  Dashboard(this.popMovieList, this.isAdmin, {this.favList, this.deleteFav, this.movieList});

    @override
    Widget build(BuildContext context) {
        
        return Scaffold(
          appBar: AppBar(
            title: Text('Dashboard'),
            
          ),
          body: Center(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Container(
              
              child: Column(
                children: <Widget>[
                  isAdmin ? Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> AddMovie(popMovieList)));
                          },
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.add_circle),
                              ),
                             Expanded(
                               flex: 7,
                               child:  Text('ADD MOVIE'),
                             )
                            ],
                          ),
                        ),
                      )
                    ],
                  ): Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> FavouriteDisplay(favList, deleteFav,movieList, isAdmin,)));
                          },
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.favorite),
                              ),
                             Expanded(
                               flex: 7,
                               child:  Text(' MY FAVOURITES'),
                             )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        );
      }
}