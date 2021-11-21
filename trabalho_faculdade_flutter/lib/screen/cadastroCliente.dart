//import 'dart:ffi';
//import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class CadastroCliente extends StatelessWidget {
  // This widget is the root of your application.
  bool _value1 = false;
  bool _value2 = false;
  // void _value1Changed(bool value) => setState(() => _value1 = value);
  // void _value2Changed(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de cliente'),
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
        label: Text("Nome"),
        //border: OutlineInputBorder()
      ),
    ),
     TextField(
      decoration: InputDecoration(
        label: Text("Endereço"),
        //border: OutlineInputBorder()
      ),
    ),
    TextField(
      decoration: InputDecoration(
        label: Text("CPF"),
        //border: OutlineInputBorder()
      ),
    ),
        TextField(
      decoration: InputDecoration(

        label: Text("Telefone"),
        //border: OutlineInputBorder()
      ),
    ),
            TextField(
      decoration: InputDecoration(

        label: Text("Acesso"),
        //border: OutlineInputBorder()
      ),
    ),
            TextField(
      decoration: InputDecoration(

        label: Text("Senha"),
        //border: OutlineInputBorder()
      ),
    ),

          //     new Checkbox(value: _value1, onChanged: _value1Changed),
          //     new CheckboxListTile(
          //         value: _value2,
          //         onChanged: _value2Changed,
          //         title: new Text('Hello World'),
          //         controlAffinity: ListTileControlAffinity.leading,
          //         subtitle: new Text('Subtitle'),
          //         secondary: new Icon(Icons.archive),
          //         activeColor: Colors.red,
          //     ),
          //   ],
          // ),

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

class Cliente {
  final String nome;
  final String endereco;
  final String cpf;
  final String telefone;

  Cliente(
    this.nome,
    this.endereco,
    this.cpf,
    this.telefone,
  );

    @override
  String toString() {
    return 'Cliente{nome: $nome, endereco: $endereco, cpf: $cpf, telefone: $telefone}';
  }  
  // Map<String, dynamic> toJson()
  // {
  //   return {
  //     "name": this.nome
  //   };
  // }
}

class MyApp extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorEndereco = TextEditingController();
  final TextEditingController _controladorCpf = TextEditingController();
  final TextEditingController _controladorTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de cliente'),
        ),
        body: Column(
          children: <Widget>[
            TextField( controller: _controladorNome),
            TextField( controller: _controladorEndereco),
            TextField( controller: _controladorCpf),
            TextField( controller: _controladorTelefone),
RaisedButton(
  child: Text('Cadastrar'),
  onPressed:  ()async {
    final String nome = _controladorNome.text;
    final String endereco = _controladorEndereco.text;
    final String cpf = _controladorCpf.text;
    final String telefone = _controladorTelefone.text;

    final Cliente novoCliente = Cliente(nome, endereco, cpf, telefone);
    print(novoCliente);
    //var response = await http.put("www.google.com.br", body: novoCliente.toJson());
  },
)
          ],
        ),
      ),
    );
  }
}

