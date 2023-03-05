import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:providerteste/mobx/listTask/list_task_mobx.dart';

class ListTaskPageMobx extends StatelessWidget {
  ListTaskPageMobx({super.key});
  final ListTaskStore listTaskStore = ListTaskStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Mobx'),
      ),
      body: Observer(builder: (context) {
        return SizedBox(
          height: 700,
          child: ListView.builder(
            itemCount: listTaskStore.listTask.length,
            itemBuilder: (context, index) {
              return Text(listTaskStore.listTask[index]);
            },
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: listTaskStore.addList,
        child: const Icon(Icons.add),
      ),
    );
  }
}
