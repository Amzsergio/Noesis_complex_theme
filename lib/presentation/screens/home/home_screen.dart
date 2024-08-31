import 'package:flutter/material.dart';
import 'package:noesis_theme/config/menu/home_menu/home_menu.dart';
import 'package:noesis_theme/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Noesis App"),
        centerTitle: true,
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItem = appMenuItems[index];

        return CustomListTileWidget(
          menuItem: menuItem,
        );
      },
    );
  }
}
