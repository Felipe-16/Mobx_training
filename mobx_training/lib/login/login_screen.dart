import 'package:flutter/material.dart';
import 'package:mobx_training/components/login_widgets.dart';
import 'login_controller.dart';

const _rotuloEmail = 'Email';
const _dicaEmail = 'seunome@dominio.com';
const _rotuloSenha = 'Senha';
const _dicaSenha = '*****';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  Login_controller login_controller = Login_controller();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.blue[200],
            Colors.blue[700],
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('images/google_avatar.png'),
                    ),
                  ),
                  LoginWidget(
                    rotulo: _rotuloEmail,
                    dica: _dicaEmail,
                    icone: Icons.email,
                    tipo: TextInputType.emailAddress,
                    onChanged: login_controller.setEmail,
                  ),
                  LoginWidget(
                    rotulo: _rotuloSenha,
                    dica: _dicaSenha,
                    icone: Icons.lock,
                    tipo: TextInputType.text,
                    onChanged: login_controller.setSenha,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {
                      print('entrando...');
                    },
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
