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
              child: Form(
                            key: formKey,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text('CENTURY', style: TextStyle(
                                    fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w700
                                  )),
                                ),
                                TextFormField(
                                  validator: (value) => !value.contains('@')
                                      ? 'Not a valid email.'
                                      : null,
                                  onSaved: (val){},
                                  decoration: const InputDecoration(
                                    hintText: 'Enter your email',
                                    labelText: 'Email',
                                  ),
                                ),
                                
                                TextFormField(
                                  onSaved: (val){},
                                  decoration: const InputDecoration(
                                    hintText: 'Enter your password',
                                    labelText: 'Password',
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: RaisedButton(
                                  onPressed:(){
                                    Navigator.of(context).pushReplacementNamed('/home');
                                  },
                                  child: Text('Login'),
                                ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
            )
          ],
        ),
      )
    );
  }
}
