import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:providerteste/getX/listTask/controller_list_getX.dart';

class ListTaskGetxPage extends StatelessWidget {
  ListTaskGetxPage({super.key});
  final controllerList = ControllerListGetX();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List GetX'),
      ),
      body: Obx(
        () => SizedBox(
          height: 700,
          child: ListView.builder(
            itemCount: controllerList.list.length,
            itemBuilder: (context, index) {
              return Text(controllerList.list[index]);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controllerList.addList,
        child: const Icon(Icons.add),
      ),
    );
  }
}
