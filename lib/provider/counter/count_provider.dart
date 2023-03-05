import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _contador = 0;

  int get getContador => _contador;

  void increment() {
    _contador++;
    notifyListeners();
  }
}
