import 'package:black_market/pages/all_listings.dart';
import 'package:flutter/material.dart';

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
            child: CircleAvatar(foregroundImage: const AssetImage(''),
              radius: 80,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
          Container(
            child: const Text(
              "Профиль",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 15),
            child: const Text("введите свои данные"),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: const TextField(
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Никнейм"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: const TextField(
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Фамилия"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: const TextField(
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Имя"),
                prefixIcon: Icon(Icons.note_alt_outlined),
              ),
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: Container(
              child: TextField(
                style: const TextStyle(fontSize: 14),
                controller: birth_date,
                onTap: (){
                  _datePickerDialog();
                },
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Дата рождения"),
                  prefixIcon: Icon(Icons.note_alt_outlined),
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            width: 190,
            padding: const EdgeInsets.only(bottom: 15),
            child: ElevatedButton(
              child: const Text("Далее"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AllListingsPage()),
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
            firstDate: DateTime(1970),
            lastDate: DateTime(2050))
        .then((DateTime? onValue) {
      _showSnackBar('$onValue', 'Ок');
      if (onValue != null){
        birth_date.text = "${onValue.day.toString()}.${onValue.month.toString().padLeft(2,'0')}.${onValue.year.toString().padLeft(2,'0')}";
      }
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
