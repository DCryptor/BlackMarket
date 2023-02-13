import 'package:black_market/pages/all_listings.dart';
import 'package:black_market/pages/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({Key? key}) : super(key: key);

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  final birth_date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(foregroundImage: AssetImage(''),
              radius: 80,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              ),
            ),
          ),
          Container(
            child: Text(
              "Профиль",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text("введите свои данные"),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Никнейм"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Фамилия"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Имя"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Container(
              child: TextField(
                controller: birth_date,
                onTap: (){
                  _datePickerDialog();
                },
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Дата рождения"),
                  prefixIcon: Icon(Icons.note_alt_outlined),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 190,
            padding: EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              child: Text("Далее"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllListingsPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _datePickerDialog() {
    final DateTime now = DateTime.now();
    showDatePicker(
            context: context,
            initialDate: now,
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((DateTime? onValue) {
      _showSnackBar('$onValue', 'Ок');
      birth_date.text = "${now.day.toString()}.${now.month.toString().padLeft(2,'0')}.${now.year.toString().padLeft(2,'0')}";
    });
  }

  void _showSnackBar(String text, String ans) {
    final SnackBar snackBar = SnackBar(
        duration: const Duration(milliseconds: 500),
        backgroundColor: ans.compareTo('Да') == 0 ? Colors.green : Colors.red,
        content: Row(
          children: <Widget>[
            Icon(
              ans.compareTo('Да') == 0 ? Icons.favorite : Icons.watch_later,
              color: ans.compareTo('Да') == 0 ? Colors.pink : Colors.yellow,
              size: 24.0,
              semanticLabel: text,
            ),
            Text(text)
          ],
        ));
    //ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
