//import 'dart:ffi';
import 'package:flutter/material.dart';

class CadastroSinistro extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de sinistro'),
        ),
                  body: 
                  Padding(
  padding: const EdgeInsets.all(16.0),
  child: 
  Container(
   width: MediaQuery.of(context).size.width, 
  child:Column(
  children: <Widget>[
         TextField(
      decoration: InputDecoration(
        label: Text("Tipo de sinistro"),
        //border: OutlineInputBorder()
      ),
    ),
    TextField(
      decoration: InputDecoration(
        label: Text("Tipo de veículo"),
        //border: OutlineInputBorder()
      ),
    ),
    TextField(
      decoration: InputDecoration(
        label: Text("Local do sinistro"),
        //border: OutlineInputBorder()
      ),
    ),
        TextField(
      decoration: InputDecoration(

        label: Text("Data do sinistro"),
        //border: OutlineInputBorder()
      ),
    ),
            Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextButton(
            onPressed: () {

            },
            child: const Text("Cadastrar"),
          ),
            )],
)),
      ),
    ));
  }
}

class Sinistro {
  final String tipoSinistro;
  final String tipoVeiculo;
  final String localSinistro;
  final String dataSinistro;

  Sinistro(
    this.tipoSinistro,
    this.tipoVeiculo,
    this.localSinistro,
    this.dataSinistro,
  );

  //   @override
  // String toString() {
  //   return 'Cliente{nome: $nome, endereco: $endereco, cpf: $cpf, telefone: $telefone}';
  // }  
}

class MyApp extends StatelessWidget {

  final TextEditingController _controladorTipoSinistro = TextEditingController();
  final TextEditingController _controladorTipoVeiculo = TextEditingController();
  final TextEditingController _controladorLocalSinistro = TextEditingController();
  final TextEditingController _controladorDataSinistro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de sinistro'),
        ),
        body: Column(
          children: <Widget>[
            TextField( controller: _controladorTipoSinistro),
            TextField( controller: _controladorTipoVeiculo),
            TextField( controller: _controladorLocalSinistro),
            TextField( controller: _controladorDataSinistro),
RaisedButton(
  child: Text('Cadastrar'),
  onPressed:  ()async {
    final String tipoSinistro = _controladorTipoSinistro.text;
    final String tipoVeiculo = _controladorTipoVeiculo.text;
    final String local = _controladorLocalSinistro.text;
    final String data = _controladorDataSinistro.text;

    final Sinistro novoSinistro = Sinistro(tipoSinistro, tipoVeiculo, local, data);
    print(novoSinistro);
    //var response = await http.put("www.google.com.br", body: novoCliente.toJson());
  },
)
          ],
        ),
      ),
    );
  }
}

