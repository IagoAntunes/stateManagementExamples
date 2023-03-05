import 'package:flutter/material.dart';
import 'package:providerteste/app/components/menu_button_component.dart';
import 'package:providerteste/provider/list/list_page_provider.dart';

import 'counter/counter_page_provider.dart';

class MenuProviderPage extends StatelessWidget {
  const MenuProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MenuButton(
              text: 'Counter',
              page: CounterPageProvider(),
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            MenuButton(
              text: 'List',
              page: ListPageProvider(),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
