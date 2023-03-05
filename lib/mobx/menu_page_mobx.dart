import 'package:flutter/material.dart';
import 'package:providerteste/app/components/menu_button_component.dart';
import 'package:providerteste/mobx/counter/counter_page_mobx.dart';
import 'package:providerteste/mobx/listTask/list_task_mobx_page.dart';

class MenuMobxPage extends StatelessWidget {
  const MenuMobxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Page Mobx'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButton(
              text: 'Counter',
              page: CounterPageMobx(),
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            MenuButton(
              text: 'List',
              page: ListTaskPageMobx(),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
