// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Login_controller on _Login_controller, Store {
  final _$emailAtom = Atom(name: '_Login_controller.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$senhaAtom = Atom(name: '_Login_controller.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$_Login_controllerActionController =
      ActionController(name: '_Login_controller');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_Login_controllerActionController.startAction(
        name: '_Login_controller.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_Login_controllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_Login_controllerActionController.startAction(
        name: '_Login_controller.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_Login_controllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha}
    ''';
  }
}
