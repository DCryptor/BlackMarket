import 'package:black_market/pages/drawer.dart';
import 'package:flutter/material.dart';

class AddBalancePage extends StatelessWidget {
  const AddBalancePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Пополнить баланс',
      home: Scaffold(
        drawer: const DrawerMenuPage(),
        appBar: AppBar(
          title: const Text('Пополнить баланс'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: const Text('Пополнить баланс'),
            ),
          ),
        ),
      ),
    );
  }
}
