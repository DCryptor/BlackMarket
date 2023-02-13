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
            child: Text(
              "Авторизация",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("введите логин и пароль чтобы войти"),
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
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(bottom: 10, right: 20),
            child: TextButton(
              child: Text(
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
            height: 50,
            width: 150,
            padding: EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              child: Text("Войти"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllListingsPage()),
                );
              },
            ),
          ),
          Container(
            child: TextButton(
              child: Text(
                'У вас еще нет аккаунта? Зарегистрироваться.',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
