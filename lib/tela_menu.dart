import 'package:flutter/material.dart';
import 'package:projeto_01/tela_ajuda.dart';
import 'package:projeto_01/tela_cidade.dart';
import 'package:projeto_01/tela_pesquisa.dart';

class TelaMenu extends StatelessWidget {
  const TelaMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Text('\nMenu de opções'),
          //elevation: 15,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).backgroundColor,
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                child: Text(
                  'Pesquisar locais perto de você',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: (16),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaPesquisa()));
                },
              ),
            ),
            Divider(),
            Divider(),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).backgroundColor,
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                child: Text(
                  'Nos ajude a melhorar',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: (16),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaAjuda()));
                },
              ),
            ),
            Divider(),
            Divider(),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).backgroundColor,
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                child: Text(
                  'Cidades que já estamos atuando',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: (16),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TelaCidade()));
                },
              ),
            ),
            Divider(),
            Divider(),
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).backgroundColor,
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                child: Text(
                  'Sair',
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: (16),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context,
                      
                  );
                  Navigator.pop(context,
                      
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
