import 'package:flutter/material.dart';

class CadastroFilial extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de filial'),
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
        label: Text("CNPJ"),
        //border: OutlineInputBorder()
      ),
    ),
        TextField(
      decoration: InputDecoration(

        label: Text("Telefone"),
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

class Filial {
  final String nome;
  final String endereco;
  final String cnpj;
  final String telefone;

  Filial(
    this.nome,
    this.endereco,
    this.cnpj,
    this.telefone,
  );

  //   @override
  // String toString() {
  //   return 'Cliente{nome: $nome, endereco: $endereco, cpf: $cpf, telefone: $telefone}';
  // }  
}

class MyApp extends StatelessWidget {

  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorEndereco = TextEditingController();
  final TextEditingController _controladorCnpj = TextEditingController();
  final TextEditingController _controladorTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de filial'),
        ),
        body: Column(
          children: <Widget>[
            TextField( controller: _controladorNome),
            TextField( controller: _controladorEndereco),
            TextField( controller: _controladorCnpj),
            TextField( controller: _controladorTelefone),
RaisedButton(
  child: Text('Cadastrar'),
  onPressed:  ()async {
    final String nome = _controladorNome.text;
    final String endereco = _controladorEndereco.text;
    final String cnpj = _controladorCnpj.text;
    final String telefone = _controladorTelefone.text;

    final Filial novaFilial = Filial(nome, endereco, cnpj, telefone);
    print(novaFilial);
    //var response = await http.put("www.google.com.br", body: novoCliente.toJson());
  },
)
          ],
        ),
      ),
    );
  }
}

