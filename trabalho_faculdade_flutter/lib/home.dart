import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_faculdade_flutter/screen/cadastroCliente.dart';

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
              accountEmail: Text("user@mail.com"),
              accountName: Text("Seu zé"),
              currentAccountPicture: CircleAvatar(
                child: Text("SZ"),
              ),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Cadastro de cliente"), 
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadastroClienteScreen()),
              );
            },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Meus pedidos"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página

              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favoritos"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),
          ],
        ),
      ),
    );
  }
}
