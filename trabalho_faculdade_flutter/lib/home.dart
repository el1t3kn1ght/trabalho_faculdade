import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_faculdade_flutter/screen/cadastroCliente.dart';
import 'package:trabalho_faculdade_flutter/screen/faq.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CadastroClienteScreen()),
            );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("pedro.leal@gmail.com"),
              accountName: Text("Pedro Leal"),
              currentAccountPicture: CircleAvatar(
                child: Text("PL"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.house),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind_rounded),
              title: Text("Cadastro de cliente"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CadastroClienteScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind_rounded),
              title: Text("Cadastro de Filial"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CadastroClienteScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind_rounded),
              title: Text("Cadastro de Seguradora"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CadastroClienteScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.warning),
              title: Text("Cadastro de Sinistro"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CadastroClienteScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.eighteen_mp_outlined),
              title: Text("FAQ"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Faq()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
