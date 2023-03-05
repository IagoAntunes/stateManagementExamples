import 'package:mobx/mobx.dart';

part 'counter_mobx.g.dart';

class CounterMobx = _CounterMobx with _$CounterMobx;

abstract class _CounterMobx with Store {
  @observable
  int contador = 0;

  @action
  incrementar() {
    contador++;
  }
}



// class CounterMobx {
//   final _contador = Observable(0);
//   int get contador => _contador.value;

//   late Action incrementar;
//   set contador(int newValue) => _contador.value = newValue;

//   void _incrementar() {
//     _contador.value++;
//   }

//   CounterMobx() {
//     incrementar = Action(_incrementar);
//   }
// }
