import 'package:flutter/material.dart';

class CadastroFilial extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de seguradora'),
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
            TextField(
      decoration: InputDecoration(

        label: Text("Mensalidade"),
        //border: OutlineInputBorder()
      ),
    ),
            TextField(
      decoration: InputDecoration(

        label: Text("Benefícios"),
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

class Seguradora {
  final String nome;
  final String endereco;
  final String cnpj;
  final String telefone;
  final String mensalidade;
  final String beneficios;

  Seguradora(
    this.nome,
    this.endereco,
    this.cnpj,
    this.telefone,
    this.mensalidade,
    this.beneficios
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
  final TextEditingController _controladorMensalidade = TextEditingController();
  final TextEditingController _controladorBeneficios = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de Seguradora'),
        ),
        body: Column(
          children: <Widget>[
            TextField( controller: _controladorNome),
            TextField( controller: _controladorEndereco),
            TextField( controller: _controladorCnpj),
            TextField( controller: _controladorTelefone),
            TextField( controller: _controladorMensalidade),
            TextField( controller: _controladorBeneficios),
RaisedButton(
  child: Text('Cadastrar'),
  onPressed:  ()async {
    final String nome = _controladorNome.text;
    final String endereco = _controladorEndereco.text;
    final String cnpj = _controladorCnpj.text;
    final String telefone = _controladorTelefone.text;
    final String mensalidade = _controladorTelefone.text;
    final String beneficios = _controladorTelefone.text;

    final Seguradora novaFilial = Seguradora(nome, endereco, cnpj, telefone, mensalidade, beneficios);
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

