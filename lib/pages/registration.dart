import 'package:black_market/pages/auth.dart';
import 'package:black_market/pages/create_profile.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: const Text(
              "Регистрация",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            child: const Text("заполните все поля чтобы зарегистрироваться"),
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
            height: 60,
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: const TextField(
              style: TextStyle(fontSize: 14),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Подтверждение пароля"),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 190,
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              child: const Text("Зарегистрироваться"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateProfilePage()),
                );
              },
            ),
          ),
          Container(
            child: TextButton(
              child: const Text(
                'У вас уже есть аккаунт? Войти.',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AuthorizationPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
