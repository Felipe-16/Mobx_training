import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class Login_controller = _Login_controller with _$Login_controller;

abstract class _Login_controller with Store {
  _Login_controller() {
    autorun((_) {
      // print(email);
      // print(senha);
      // print(isFormValid);
    });
  }

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String senha = '';

  @action
  void setSenha(String value) => senha = value;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);

  @computed
  bool get isSenhaValid =>
      RegExp(r'^(?=.*[0-9])(?=\S+$).{8,40}$').hasMatch(senha);

  // Não é mais necessario, pois o computed da function loginPressed ja faz isso
  // @computed
  // bool get isFormValid => isEmailValid && isSenhaValid;

  //TODO Entender melhor o CustomIconButton, ja que nao esta funcionando
  // @observable
  // bool senhaVisivel = false;
  //
  // @action
  // void toggleSenhaVisivel() => senhaVisivel = !senhaVisivel;

  @observable
  bool loading = false;

  @action
  Future<void> loginScreen() async {
    loading = true;

    await Future.delayed(Duration(seconds: 2));

    loading = false;
    loggedIn = true;
  }

  @computed
  Function get loginPressed =>
      (isEmailValid && isSenhaValid && !loading) ? loginScreen : null;

  @observable
  bool loggedIn = false;
}
