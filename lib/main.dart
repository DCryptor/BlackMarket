import 'package:black_market/pages/auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BlackMarket());

class BlackMarket extends StatelessWidget {
  const BlackMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Доска объявлений',
      home: const Scaffold(
        body: AuthorizationPage(),
      ),
    );
  }
}
