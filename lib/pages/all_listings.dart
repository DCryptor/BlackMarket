import 'package:black_market/pages/drawer.dart';
import 'package:flutter/material.dart';

class AllListingsPage extends StatelessWidget {
  const AllListingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Все объявления',
      home: Scaffold(
        drawer: const DrawerMenuPage(),
        appBar: AppBar(
          title: const Text('Все объявления'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: const Text('Все объявления'),
            ),
          ),
        ),
      ),
    );
  }
}
