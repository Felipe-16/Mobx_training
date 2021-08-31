// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$home_controller on _Home_controller, Store {
  final _$counterAtom = Atom(name: '_Home_controller.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$_Home_controllerActionController =
      ActionController(name: '_Home_controller');

  @override
  void setCounter(int value) {
    final _$actionInfo = _$_Home_controllerActionController.startAction(
        name: '_Home_controller.setCounter');
    try {
      return super.setCounter(value);
    } finally {
      _$_Home_controllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
