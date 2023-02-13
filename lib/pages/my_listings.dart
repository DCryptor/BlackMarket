import 'package:black_market/pages/drawer.dart';
import 'package:flutter/material.dart';

class MyListingsPage extends StatelessWidget {
  const MyListingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Мои объявления',
      home: Scaffold(
        drawer: const DrawerMenuPage(),
        appBar: AppBar(
          title: const Text('Мои объявления'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: const Text('Мои объявления'),
            ),
          ),
        ),
      ),
    );
  }
}
