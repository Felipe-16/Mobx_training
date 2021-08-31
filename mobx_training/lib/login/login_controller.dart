import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class Login_controller = _Login_controller with _$Login_controller;

abstract class _Login_controller with Store {
  _Login_controller() {
    autorun((_) {
      print(email);
      print(senha);
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
}
