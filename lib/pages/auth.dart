import 'package:black_market/pages/all_listings.dart';
import 'package:black_market/pages/registration.dart';
import 'package:flutter/material.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: const Text(
              "Авторизация",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            child: const Text("введите логин и пароль чтобы войти"),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: const TextField(
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Номер телефона или почта"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: const TextField(
              style: TextStyle(fontSize: 14),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Пароль"),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(bottom: 15, right: 20),
            child: TextButton(
              child: const Text(
                "забыли пароль?",
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllListingsPage()),
                );*/
              },
            ),
          ),
          Container(
            height: 60,
            width: 150,
            padding: const EdgeInsets.only(bottom: 15),
            child: ElevatedButton(
              child: const Text("Войти"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AllListingsPage()),
                );
              },
            ),
          ),
          Container(
            child: TextButton(
              child: const Text(
                'У вас еще нет аккаунта? Зарегистрироваться.',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistrationPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
