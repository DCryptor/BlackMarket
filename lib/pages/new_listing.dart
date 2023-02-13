import 'package:black_market/pages/drawer.dart';
import 'package:flutter/material.dart';

class NewListingPage extends StatelessWidget {
  const NewListingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Новое объявления',
      home: Scaffold(
        drawer: const DrawerMenuPage(),
        appBar: AppBar(
          title: const Text('Новое объявления'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: const Text('Новое объявления'),
            ),
          ),
        ),
      ),
    );
  }
}
