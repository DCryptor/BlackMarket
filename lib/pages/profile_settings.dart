import 'package:black_market/pages/drawer.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Мой профиль',
      home: Scaffold(
        drawer: const DrawerMenuPage(),
        appBar: AppBar(
          title: const Text('Мой профиль'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: const Text('Мой профиль'),
            ),
          ),
        ),
      ),
    );
  }
}
