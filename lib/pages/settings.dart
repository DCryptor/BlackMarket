import 'package:black_market/pages/drawer.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Настройки',
      home: Scaffold(
        drawer: const DrawerMenuPage(),
        appBar: AppBar(
          title: Text('Настройки'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: Text('Настройки'),
            ),
          ),
        ),
      ),
    );
  }
}
