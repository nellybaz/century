import 'package:flutter/material.dart';
import './addmovie.dart';


class Dashboard extends StatelessWidget{
  final popMovieList;
  Dashboard(this.popMovieList);

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
                  Row(
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
                  ),

                  //  Row(
                  //   children: <Widget>[
                  //     Expanded(
                  //       flex: 1,
                  //       child: FlatButton(
                  //         onPressed: (){},
                  //         child: Row(
                  //           children: <Widget>[
                  //             Expanded(
                  //               flex: 1,
                  //               child: Icon(Icons.delete),
                  //             ),
                  //            Expanded(
                  //              flex: 7,
                  //              child:  Text('REMOVE MOVIE'),
                  //            )
                  //           ],
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
        );
      }
}