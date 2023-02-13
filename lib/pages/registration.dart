import 'package:black_market/pages/all_listings.dart';
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
            child: Text(
              "Регистрация",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("заполните все поля чтобы зарегистрироваться"),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Номер телефона или почта"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Пароль"),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Подтверждение пароля"),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 190,
            padding: EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              child: Text("Зарегистрироваться"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateProfilePage()),
                );
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text(
                'У вас уже есть аккаунт? Войти.',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthorizationPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
