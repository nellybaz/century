import 'package:flutter/material.dart';
import './home.dart';

class FavouriteDisplay extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      
      return _FavouriteDisplayState();
    }

  var receivedfavList;
  final deleteFav;
  final movieList;

  final isAdmin;

 

  FavouriteDisplay(this.receivedfavList, this.deleteFav, this.movieList, this.isAdmin);

}

class _FavouriteDisplayState extends State<FavouriteDisplay>{

   List favToDisplay(){
    List<Widget> favourites = [];
      if(widget.receivedfavList.length > 0){
        for(int x = 0; x < widget.receivedfavList.length; x++){
         for(int y = 0; y < widget.movieList.length;  y++){
           if(widget.receivedfavList[x] == widget.movieList[y].movie_id){
               favourites.add(
            
           Padding(
             padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
             child:  Row(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Text(widget.movieList[y].movie_title),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: (){
                    widget.deleteFav(widget.movieList[y].movie_id);
                    setState(() {
                      widget.receivedfavList = widget.receivedfavList;  
                                        });
                  },
                  color: Colors.red[600],
                )
              ],
            ),
           )
        
          );
           }
         }
      }

      }
      else{
        favourites.add(
          Column(
            children: <Widget>[
              Container(
                height: 100.0,
                child: Text(''),
              ),
              Text('Favourite List empy. \nAdd favourite movies by clicking the heart icon in the movie page'),
              Container(
                height: 50.0,
                child: Text(''),
              ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: RaisedButton(
                  onPressed: (){
                    
                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Home(widget.isAdmin)),
                                        ModalRoute.withName('/favourite'),
                                      );
                                 },
                  color: Colors.deepPurpleAccent,
                  child: Text('GO TO HOME'),
                ),
              )
            ],
          )
            ],
          )
        );
      }

      return favourites;
  }
  @override
  Widget build(BuildContext context) {
     
      return Scaffold(
        appBar: AppBar(
          title: Text('Favourites'),
        ),
        body: Material(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ListView(
          children: favToDisplay()
        ),
        )
      ),
      );
    }
}