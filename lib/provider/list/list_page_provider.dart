import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerteste/provider/list/task_provider.dart';

class ListPageProvider extends StatelessWidget {
  const ListPageProvider({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: SizedBox(
        height: 700,
        child: Consumer<ListProvider>(
          builder: (context, value, child) => ListView.builder(
            itemCount: value.getList.length,
            itemBuilder: (context, index) {
              return Text(
                value.getList[index],
                style: const TextStyle(fontSize: 40),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Provider.of<ListProvider>(context, listen: false).add();
        },
      ),
    );
  }
}
