import 'package:mobx/mobx.dart';
part 'list_task_mobx.g.dart';

class ListTaskStore = _ListTaskStore with _$ListTaskStore;

abstract class _ListTaskStore with Store {
  @observable
  List<String> listTask = [];

  @action
  addList() {
    listTask.add('Teste');
  }
}
