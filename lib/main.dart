import 'package:black_market/pages/auth.dart';
import 'package:black_market/pages/drawer.dart';
import 'package:black_market/pages/registration.dart';
import 'package:flutter/material.dart';

void main() => runApp(BlackMarket());

class BlackMarket extends StatelessWidget {
  const BlackMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Доска объявлений',
      home: Scaffold(
        body: AuthorizationPage(),
      ),
    );
  }
}
