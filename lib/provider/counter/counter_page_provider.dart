import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'count_provider.dart';

class CounterPageProvider extends StatelessWidget {
  const CounterPageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider')),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(
              value.getContador.toString(),
              style: const TextStyle(fontSize: 40),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Provider.of<CountProvider>(context, listen: false).increment();
        },
      ),
    );
  }
}
