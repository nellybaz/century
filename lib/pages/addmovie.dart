import 'package:flutter/material.dart';

class AddMovie extends StatefulWidget {
  Function addMovie;

  AddMovie(this.addMovie);

  String movieTitle;
  String movieDescription;
  List movieActors;

  @override
  State<StatefulWidget> createState() {
    return _AddMovieState();
  }
}

class _AddMovieState extends State<AddMovie> {
  final myTitleController = TextEditingController();
  final myDescriptionController = TextEditingController();

  @override
  void dispose() {
    myTitleController.dispose();
    myDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Movie'),
      ),
      body: Material(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: ListView(
            children: <Widget>[
              Form(
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: myTitleController,
                      onTap: () {},
                      decoration: InputDecoration(labelText: 'Movie Title'),
                    ),
                    TextField(
                      controller: myDescriptionController,
                      decoration:
                          InputDecoration(labelText: 'Movie Description'),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: ' Showing Time e.g Wed 12th 2019 10:10 AM'),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(top: 25.0),
                            child: RaisedButton(
                              color: Colors.deepPurpleAccent,
                              onPressed: () {
                                //update state and return to previous screen

                                if (myTitleController.text == '') {
                                  return showDialog(
                                      context: context,
                                      builder: (BuildContext build) {
                                        return AlertDialog(
                                          content:
                                              Text('Title cannot be empty'),
                                        );
                                      });
                                } else if (myDescriptionController.text == '') {
                                  return showDialog(
                                      context: context,
                                      builder: (BuildContext build) {
                                        return AlertDialog(
                                          content: Text(
                                              'Description cannot be empty'),
                                        );
                                      });
                                } else {
                                  setState(() {
                                    widget.movieTitle = myTitleController.text;
                                    widget.movieDescription =
                                        myDescriptionController.text;
                                  });

                                 
                                    widget.addMovie(widget.movieTitle, widget.movieDescription, '10:10 AM');
                                  Navigator.pop(context);
                                }

                                // print(myController.text);
                              },
                              child: Text('ADD'),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
