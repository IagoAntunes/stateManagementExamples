import 'package:flutter/cupertino.dart';

class ListProvider extends ChangeNotifier {
  final List<String> _list = ['Maça', 'Banana'];

  List<String> get getList => _list;

  void add() {
    _list.add('Teste');
    notifyListeners();
  }
}
