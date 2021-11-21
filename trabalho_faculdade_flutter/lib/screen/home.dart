import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Voltar')),
          StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('cliente').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                return ListView(
                    // children: snapshot.data?.docs.map((cliente) {
                    //   return Center();
                    // }).toList(),
                    );
              })
        ],
      ),
    );
  }
}
