import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_training/components/login_widgets.dart';
import 'package:mobx_training/home/home_screen.dart';
import 'package:provider/provider.dart';
import 'login_controller.dart';

const _rotuloEmail = 'Email';
const _dicaEmail = 'email@dominio.com';
const _rotuloSenha = 'Senha';
const _dicaSenha = '*****';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  Login_controller login_controller;

  ReactionDisposer disposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    login_controller = Provider.of<Login_controller>(context);

    // Outro jeito de fazer
    disposer = reaction((_) => login_controller.loggedIn, (loggedIn) {
      if (login_controller.loggedIn)
        Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
    });

    // Um jeito de fazer
    // autorun((_) {
    //   if (login_controller.loggedIn)
    //     Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
    // });
  }

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
                    iconeEsq: Icons.email,
                    tipo: TextInputType.emailAddress,
                    onChanged: login_controller.setEmail,
                  ),
                  LoginWidget(
                    rotulo: _rotuloSenha,
                    dica: _dicaSenha,
                    iconeEsq: Icons.lock,
                    iconeDir: Icons.visibility,
                    tipo: TextInputType.text,
                    onChanged: login_controller.setSenha,
                  ),
                  Observer(
                    builder: (_) {
                      return RaisedButton(
                        child: login_controller.loading
                            ? CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.white),
                              )
                            : Text('Entrar'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: login_controller.loginPressed,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }
}
