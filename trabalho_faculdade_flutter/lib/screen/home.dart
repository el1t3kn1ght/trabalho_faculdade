import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_faculdade_flutter/screen/cliente/ClienteDTO.dart';

class HomeScreen extends StatelessWidget {
  late FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: lerBanco(),
        builder: (context, AsyncSnapshot<List<Widget>> snapshot) {
          return ListView(
            children: snapshot.data!,
          );
        },
      ),
    );
  }

  Future<List<Widget>> lerBanco() async {
    var collection = await db.collection('cliente').get();
    List<ClienteDTO> clientes = [];
    List<Center> response = [];

    var listaDesgracada = collection.docs.toList();

    listaDesgracada.forEach((algumaCoisa) {
      var ajaja = ClienteDTO(algumaCoisa['nome'], algumaCoisa['cpf']);

      clientes.add(ajaja);
    });

    clientes.forEach((element) {
      response.add(Center(
          child: ListTile(
        title: Text('${element.nome}'),
      )));
    });

    return response;
  }
}
