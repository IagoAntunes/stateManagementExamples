import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:providerteste/getX/menu_page_getx.dart';
import 'package:providerteste/mobx/menu_page_mobx.dart';
import 'package:providerteste/provider/counter/count_provider.dart';
import 'package:providerteste/provider/list/task_provider.dart';
import 'package:providerteste/provider/menu_page_provider.dart';

import '../mobx/counter/counter_page_mobx.dart';
import 'components/menu_button_component.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return CountProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return ListProvider();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Prov/MobX/GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const MenuButton(
              text: 'Provider',
              page: MenuProviderPage(),
              color: Colors.blue,
            ),
            const SizedBox(height: 30),
            const MenuButton(
              text: 'MobX',
              page: MenuMobxPage(),
              color: Colors.purple,
            ),
            const SizedBox(height: 30),
            MenuButton(
              text: 'GetX',
              page: const MenuGetXPage(),
              color: Colors.purple.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
