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
    final username_field = TextEditingController();
    final password_field = TextEditingController();
    final password_confirm_field = TextEditingController();

    var username;
    var password;

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
            child: TextField(
              controller: username_field,
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
            child: TextField(
              controller: password_field,
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
            child: TextField(
              controller: password_confirm_field,
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
                if (username_field.text == '' &&
                    password_field.text == '' &&
                    password_confirm_field.text == '') {
                  return;
                } else {
                  if (password_field.text == password_confirm_field.text) {
                    username = username_field.text;
                    password = password_field.text;
                    Navigator.of(context).pushNamed('/create_profile',
                        arguments: {
                          'username': username,
                          'password': password
                        });
                  } else {
                    return;
                  }
                }
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
                Navigator.of(context).pushNamed('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
