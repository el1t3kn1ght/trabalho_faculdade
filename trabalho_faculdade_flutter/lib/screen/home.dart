import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  late FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
            future: db.collection('cliente').doc('VJmxTX7i22mJG4m9xoVn').get(),
            builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasData) {
                Map<String, dynamic> data =
                    snapshot.data!.data() as Map<String, dynamic>;
                return Text("Full Name: ${data['nome']} ${data['cpf']}");
              } else {
                return Text('nao tem dados');
              }
            },
          )
        ],
      ),
    );
  }

  lerBanco() async {
    final snapShot =
        await db.collection('cliente').doc('VJmxTX7i22mJG4m9xoVn').get();

    return snapShot;
  }
}
