import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreeneState createState() => _LoginScreeneState();
}

class _LoginScreeneState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Signin'),
                onPressed: () {}),
            RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Signup'),
                onPressed: () {})
          ]),
        ],
      ),
    );
  }
}
