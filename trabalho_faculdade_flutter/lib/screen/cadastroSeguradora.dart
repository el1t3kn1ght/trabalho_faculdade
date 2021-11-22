import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CadastroSeguradoraScreen extends StatefulWidget {
  @override
  _CadastroSeguradoraScreen createState() => _CadastroSeguradoraScreen();
}

class _CadastroSeguradoraScreen extends State<CadastroSeguradoraScreen> {
  String _nome = "",
      _endereco = "",
      _cnpj = "",
      _telefone = "",
      _mensalidade = "",
      _beneficios = "";

  @override
  Future<void> addSeguradora(String? nome, String? endereco, String? cnpj,
      String? telefone, String? mensalidade, String? beneficios) {
    CollectionReference seguradora =
        FirebaseFirestore.instance.collection('seguradora');
    return seguradora
        .add({
          'nome': "$nome",
          'endereco': "$endereco",
          'cnpj': "$cnpj",
          'telefone': "$telefone",
          'mensalidade': "$mensalidade",
          'beneficios': "$beneficios"
        })
        .then((value) => {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Seguradora Cadastrada com sucesso!")))
            })
        .catchError((error) => {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Erro ao cadastar")))
            });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de seguradora'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      label: Text("NOME"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _nome = value;
                    });
                  },
                  //border: OutlineInputBorder()
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      label: Text("ENDEREÇO"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _endereco = value;
                    });
                  },
                  //border: OutlineInputBorder()
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      label: Text("CNPJ"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _cnpj = value;
                    });
                  },
                  //border: OutlineInputBorder()
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      label: Text("TELEFONE"), border: OutlineInputBorder()),
                  //border: OutlineInputBorder()
                  onChanged: (value) {
                    setState(() {
                      _telefone = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text("MENSALIDADE"), border: OutlineInputBorder()),
                  //border: OutlineInputBorder()
                  onChanged: (value) {
                    setState(() {
                      _mensalidade = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      label: Text("BENEFICIOS"), border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      _beneficios = value;
                    });
                  },
                  //border: OutlineInputBorder()
                ),
                SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextButton(
                    onPressed: () {
                      addSeguradora(_nome, _endereco, _cnpj, _telefone,
                          _mensalidade, _beneficios);
                    },
                    child: const Text("Cadastrar"),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class Seguradora {
  final String nome;
  final String endereco;
  final String cnpj;
  final String telefone;
  final String mensalidade;
  final String beneficios;

  Seguradora(this.nome, this.endereco, this.cnpj, this.telefone,
      this.mensalidade, this.beneficios);

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
            TextField(controller: _controladorNome),
            TextField(controller: _controladorEndereco),
            TextField(controller: _controladorCnpj),
            TextField(controller: _controladorTelefone),
            TextField(controller: _controladorMensalidade),
            TextField(controller: _controladorBeneficios),
            RaisedButton(
              child: Text('Cadastrar'),
              onPressed: () async {
                final String nome = _controladorNome.text;
                final String endereco = _controladorEndereco.text;
                final String cnpj = _controladorCnpj.text;
                final String telefone = _controladorTelefone.text;
                final String mensalidade = _controladorTelefone.text;
                final String beneficios = _controladorTelefone.text;

                final Seguradora novaFilial = Seguradora(
                    nome, endereco, cnpj, telefone, mensalidade, beneficios);
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
