// ignore_for_file: unused_field


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreeneState createState() => _LoginScreeneState();
}


class _LoginScreeneState extends State<LoginScreen> {
  late String _email, _password;

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset('assets/image/transferir.png')),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                  ),
                  hintText: 'Enter your name',
                ),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2.0),
                  ),
                  hintText: 'Enter your name',
                ),
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text('Entrar'),
                  onPressed: () {
                    auth.signInWithEmailAndPassword(
                        email: _email, password: _password);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  })
            ]),
          ],
        ),
      ),
    );
  }
}
