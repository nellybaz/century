import 'package:flutter/material.dart';
import './home.dart';

class Login extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text(''),
          ),
          Expanded(
            flex: 3,
            child: ListView(
              children: <Widget>[
                Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text('CENTURY',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ),
                  TextFormField(
                    
                    validator: (value) =>
                        !value.contains('@') ? 'Not a valid email.' : null,
                    onSaved: (val) {},
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    onSaved: (val) {},
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      // suffixIcon: Icon(Icons.lock_open),
                      
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top:25.0),
                          child: RaisedButton(
                          onPressed: () {
                            // Navigator.of(context).pushReplacementNamed('/home');

                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Home(true)),
                              ModalRoute.withName('/login'),
                            );
                          },
                          child: Text('Login'),
                        ),
                        ),
                      )
                    ],
                  ),
                  FlatButton(
                    onPressed: (){
                      print('register');
                    },
                    child: Text('Don\'t have an account? Register', style: TextStyle(
                      color: Colors.grey,
                    ),),
                  )
                ],
              ),
            )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
