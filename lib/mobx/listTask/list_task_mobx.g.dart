// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_task_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListTaskStore on _ListTaskStore, Store {
  late final _$listTaskAtom =
      Atom(name: '_ListTaskStore.listTask', context: context);

  @override
  List<String> get listTask {
    _$listTaskAtom.reportRead();
    return super.listTask;
  }

  @override
  set listTask(List<String> value) {
    _$listTaskAtom.reportWrite(value, super.listTask, () {
      super.listTask = value;
    });
  }

  late final _$_ListTaskStoreActionController =
      ActionController(name: '_ListTaskStore', context: context);

  @override
  dynamic addList() {
    final _$actionInfo = _$_ListTaskStoreActionController.startAction(
        name: '_ListTaskStore.addList');
    try {
      return super.addList();
    } finally {
      _$_ListTaskStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listTask: ${listTask}
    ''';
  }
}
