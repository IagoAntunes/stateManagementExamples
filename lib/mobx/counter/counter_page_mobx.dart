import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'counter_mobx.dart';

class CounterPageMobx extends StatelessWidget {
  CounterPageMobx({super.key});
  final CounterMobx counterMobx = CounterMobx();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobx'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Observer(
          builder: (context) {
            return Text(
              counterMobx.contador.toString(),
              style: const TextStyle(fontSize: 40),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: counterMobx.incrementar,
        child: const Icon(Icons.add),
      ),
    );
  }
}
