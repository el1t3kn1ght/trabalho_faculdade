//import 'dart:ffi';
//import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CadastroClienteScreen extends StatefulWidget {
  @override
  _CadastroClienteScreen createState() => _CadastroClienteScreen();
}

class _CadastroClienteScreen extends State<CadastroClienteScreen> {
  String _nome = "",
      _endereco = "",
      _cpf = "",
      _telefone = "",
      _acesso = "",
      _senha = "";

  @override
  Future<void> addUser(String? nome, String? endereco, String? cpf,
      String? telefone, String? acesso, String? senha) {
    CollectionReference users = FirebaseFirestore.instance.collection('user');
    return users
        .add({
          'nome': "$nome",
          'endereco': "$endereco",
          'cpf': "$cpf",
          'telefone': "$telefone",
          'acesso': "$acesso",
          'senha': "$senha"
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      label: Text("Nome"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _nome = value;
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                      label: Text("Endereço"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _endereco = value;
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                      label: Text("CPF"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _cpf = value;
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                      label: Text("Telefone"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _telefone = value;
                    });
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                      label: Text("Acesso"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _acesso = value;
                    });
                  },
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Senha"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _senha = value;
                    });
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextButton(
                    onPressed: () {
                      addUser(
                          _nome, _endereco, _cpf, _telefone, _acesso, _senha);
                    },
                    child: Text(
                      "Cadastrar",
                    ),
                    //child: const Text("Cadastrar"),
                  ),
                )
              ],
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
            TextField(controller: _controladorNome),
            TextField(controller: _controladorEndereco),
            TextField(controller: _controladorCpf),
            TextField(controller: _controladorTelefone),
            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () async {
                final String nome = _controladorNome.text;
                final String endereco = _controladorEndereco.text;
                final String cpf = _controladorCpf.text;
                final String telefone = _controladorTelefone.text;

                final Cliente novoCliente =
                    Cliente(nome, endereco, cpf, telefone);
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

class Movie {
  Movie({required this.title, required this.genre});

  Movie.fromJson(Map<String, Object?> json)
      : this(
          title: json['title']! as String,
          genre: json['genre']! as String,
        );

  final String title;
  final String genre;

  Map<String, Object?> toJson() {
    return {
      'title': title,
      'genre': genre,
    };
  }
}

class AddUser extends StatelessWidget {
  final String fullName;
  final String company;
  final int age;

  AddUser(this.fullName, this.company, this.age);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'full_name': fullName, // John Doe
            'company': company, // Stokes and Sons
            'age': age // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return FlatButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}
