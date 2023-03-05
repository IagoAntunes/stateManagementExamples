import 'package:mobx/mobx.dart';

class CounterMobx {
  final _contador = Observable(0);
  int get contador => _contador.value;

  late Action incrementar;
  set contador(int newValue) => _contador.value = newValue;

  void _incrementar() {
    _contador.value++;
  }

  CounterMobx() {
    incrementar = Action(_incrementar);
  }
}
