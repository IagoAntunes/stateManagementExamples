import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:providerteste/getX/counter/controller_getX.dart';

class CounterPageGetx extends StatelessWidget {
  CounterPageGetx({super.key});
  @override
  Widget build(BuildContext context) {
    final ControllerCounterGetx controllerGetx =
        Get.put(ControllerCounterGetx());
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        backgroundColor: Colors.purple,
      ),
      body: Center(child: Obx(
        () {
          return Text(
            controllerGetx.contador.toString(),
            style: const TextStyle(fontSize: 40),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: controllerGetx.incrementar,
        child: const Icon(Icons.add),
      ),
    );
  }
}
