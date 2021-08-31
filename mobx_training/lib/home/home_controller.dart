import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class home_controller = _Home_controller with _$home_controller;

abstract class _Home_controller with Store {
  @observable
  int counter = 0;

  @action
  void setCounter(int value) => counter += 1;
}
