import 'package:flutter/material.dart';
import 'package:mobx_training/components/login_widgets.dart';

const _rotuloEmail = 'Email';
const _dicaEmail = 'seunome@dominio.com';
const _rotuloSenha = 'Senha';
const _dicaSenha = '*****';

class Login extends StatelessWidget {
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.blue[300],
            Colors.blue[800],
          ])),
      // appBar: AppBar(
      //   title: Center(child: Text('Login')),
      // ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //         colors: [
            //       Colors.blue[500],
            //       Colors.blue[800],
            //     ])),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/perfil.jpg'),
                  ),
                  LoginWidget(
                    controlador: _controladorEmail,
                    rotulo: _rotuloEmail,
                    dica: _dicaEmail,
                    icone: Icons.email,
                  ),
                  LoginWidget(
                    controlador: _controladorSenha,
                    rotulo: _rotuloSenha,
                    dica: _dicaSenha,
                    icone: Icons.lock,
                  ),
                  RaisedButton(
                    onPressed: null,
                    child: Text('Entrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Particles {
  Particles(int i, MaterialColor blue);
}
